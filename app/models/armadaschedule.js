const f = require('../controllers/function');
var objek = new Object();

// constructor
const ArmadaSchedule = function (armadaschedule) {
    this.date = armadaschedule.date;
    this.cabang_id = armadaschedule.cabang_id;
    this.tipe_asset_id = armadaschedule.tipe_asset_id;
    this.asset_kapal_id = armadaschedule.asset_kapal_id;
    this.status = armadaschedule.status;
    this.jam_pengoperasian = armadaschedule.jam_pengoperasian;
    this.reliability = armadaschedule.reliability;
    this.keterangan = armadaschedule.keterangan;
    this.armada_jaga_id = armadaschedule.armada_jaga_id;
};

ArmadaSchedule.create = async(newArmadaSchedule, result, cabang_id, user_id) => {
	var notAvailable = newArmadaSchedule.notAvailable;
	delete newArmadaSchedule.notAvailable;
	var id = await f.getid("armada_schedule");
	const hv = await f.headerValue(newArmadaSchedule, id);
	var queryText = "INSERT INTO \"armada_schedule\" " + hv + " RETURN \"id\" INTO :id";
	const exec = f.query(queryText, 1);
	delete newArmadaSchedule.id;
	const res = await exec;

	for (var a in notAvailable) {
		notAvailable[a].armada_schedule_id = id;
		notAvailable[a].available = 0;
		var id_pj = await f.getid("armada_jaga");
		var hv_pj = await f.headerValue(notAvailable[a], id_pj);
		var queryText = "INSERT INTO \"armada_jaga\" " + hv_pj;
		await f.query(queryText, 2);
	}
	result(null, { id: id, ...newArmadaSchedule });
};

ArmadaSchedule.findById = async (id, result) => {
	const resQuery = await f.query("SELECT * FROM \"armada_jaga\" WHERE \"armada_schedule_id\" = '" + id + "'");
	var queryText = "SELECT a.*  , a1.\"nama\" as \"cabang\", a2.\"nama\" as \"tipe_asset\" , a3.\"nama_asset\" as \"asset_kapal\", a4.\"from\", a4.\"to\"  FROM \"armada_schedule\" a  LEFT JOIN \"cabang\" a1 ON a.\"cabang_id\" = a1.\"id\"  LEFT JOIN \"tipe_asset\" a2 ON a.\"tipe_asset_id\" = a2.\"id\"  LEFT JOIN \"asset_kapal\" a3 ON a.\"asset_kapal_id\" = a3.\"id\"  LEFT JOIN \"armada_jaga\" a4 ON a.\"armada_jaga_id\" = a4.\"id\"   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	const notAvailable = { "notAvailable": resQuery.rows }
	const available = { "available": resQuery.rows }
	let merge = { ...res.rows[0], ...available, ...notAvailable }	
	result(null, merge);
}

ArmadaSchedule.getAll = async (param, result, cabang_id) => {
    var wheres = f.getParam(param, "armada_schedule");
    var query = "SELECT a.*  , a1.\"nama\" as \"cabang\", a2.\"nama\" as \"tipe_asset\" , a3.\"nama_asset\" as \"asset_kapal\", a4.\"from\", a4.\"to\"  FROM \"armada_schedule\" a  LEFT JOIN \"cabang\" a1 ON a.\"cabang_id\" = a1.\"id\"  LEFT JOIN \"tipe_asset\" a2 ON a.\"tipe_asset_id\" = a2.\"id\"  LEFT JOIN \"asset_kapal\" a3 ON a.\"asset_kapal_id\" = a3.\"id\"  LEFT JOIN \"armada_jaga\" a4 ON a.\"armada_jaga_id\" = a4.\"id\" ";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"date\" LIKE '%" + param.q + "%' OR a.\"cabang_id\" LIKE '%" + param.q + "%' OR a.\"tipe_asset_id\" LIKE '%" + param.q + "%' OR a.\"asset_kapal_id\" LIKE '%" + param.q + "%' OR a.\"status\" LIKE '%" + param.q + "%' OR a.\"jam_pengoperasian\" LIKE '%" + param.q + "%' OR a.\"reliability\" LIKE '%" + param.q + "%' OR a.\"keterangan\" LIKE '%" + param.q + "%' OR a.\"armada_jaga_id\" LIKE '%" + param.q + "%'";	
		wheres += ")";
	}

	wheres += f.whereCabang(cabang_id, `a."cabang_id"`, wheres.length);
	query += wheres;
	query += "ORDER BY a.\"id\" DESC";
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

ArmadaSchedule.updateById = async(id, armadaschedule, result, user_id) => {
	var notAvailable = armadaschedule.notAvailable;
	delete armadaschedule.notAvailable;

	await f.query(`DELETE FROM "armada_jaga" WHERE "armada_schedule_id" = '${id}'`, 2);
	for (var a in notAvailable) {
		notAvailable[a].armada_schedule_id = id;
		notAvailable[a].available = 0;
		var id_pj = await f.getid("armada_jaga");
		var hv_pj = await f.headerValue(notAvailable[a], id_pj);
		var queryText = "INSERT INTO \"armada_jaga\" " + hv_pj;
		await f.query(queryText, 2);
	}

	var arr = ["date", "cabang_id", "tipe_asset_id", "asset_kapal_id", "status", "jam_pengoperasian", "reliability", "keterangan", "armada_jaga_id"];
	var str = f.getValueUpdate(armadaschedule, id, arr);
	var id_activity_log = await f.getid("activity_log");
	objek.koneksi = id;
	objek.action = armadaschedule.approval_status_id;
	objek.item = "armadaschedule";
	objek.remark = armadaschedule.activityLog ? armadaschedule.activityLog.remark : '';
	objek.user_id = user_id;
	const hval = await f.headerValue(objek, id_activity_log);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);
	await f.query("UPDATE \"armada_schedule\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...armadaschedule });
};

ArmadaSchedule.remove = (id, result) => {
	f.query("DELETE FROM \"armada_schedule\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = ArmadaSchedule;


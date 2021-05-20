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

ArmadaSchedule.create = async (newArmadaSchedule, result, cabang_id, user_id) => {
	var newArmadaScheduleDate = newArmadaSchedule.date;
	var armada = newArmadaSchedule.armada;
	delete newArmadaSchedule.armada;
	newArmadaSchedule.date = newArmadaScheduleDate;

	var check = `SELECT "date" FROM "armada_schedule" 
				WHERE trunc("date") = TO_DATE('${newArmadaSchedule.date}', 'YY/MM/DD') 
				AND "tipe_asset_id" = ${newArmadaSchedule.tipe_asset_id} 
				AND "cabang_id" = ${cabang_id}`

	var dataCheck = await f.query(check)

	if (dataCheck.rows.length > 0) {
		result(null, { 'status': false, 'message': 'Maaf, Tanggal yang anda pilih sudah tersedia !' })
		return false
	}

	// console.log('dataCheck',dataCheck.rows.length)	
	// return false

	var id = await f.getid("armada_schedule");
	const hv = await f.headerValue(newArmadaSchedule, id);
	var queryText = "INSERT INTO \"armada_schedule\" " + hv + " RETURN \"id\" INTO :id";
	const exec = f.query(queryText, 1);
	delete newArmadaSchedule.id;
	const res = await exec;

	for (var a in armada) {
		var c = armada[a]
		for (var b in c) {
			c[b].armada_schedule_id = id;
			delete c[b].nama_asset

			if (c[b].from == "") c[b].from = "00:00";
			if (c[b].to == "") c[b].to = "00:00";
			c[b].from = f.toDate(newArmadaScheduleDate, "YYYY-MM-DD") + " " + c[b].from + ":00";
			c[b].to = f.toDate(newArmadaScheduleDate, "YYYY-MM-DD") + " " + c[b].to + ":00";
			// console.log(armada);

			var id_pj = await f.getid("armada_jaga");
			var hv_pj = await f.headerValue(c[b], id_pj);
			var queryText = "INSERT INTO \"armada_jaga\" " + hv_pj;
			await f.query(queryText, 2);
		}
	}
	result(null, { id: id, ...newArmadaSchedule });
};

ArmadaSchedule.findById = async (id, result) => {
	const resQuery = await f.query("SELECT b.\"nama_asset\", \"armada_schedule_id\", \"available\", \"keterangan\", \"asset_kapal_id\",TO_CHAR(\"from\", 'HH24:mi') AS \"from\", TO_CHAR(\"to\", 'HH24:mi') AS \"to\" FROM \"armada_jaga\" a LEFT JOIN \"asset_kapal\" b ON a.\"asset_kapal_id\" = b.\"id\" WHERE \"armada_schedule_id\" = '" + id + "' ORDER BY b.\"nama_asset\"");
	var queryText = "SELECT a.*  , a1.\"nama\" as \"cabang\", a2.\"nama\" as \"tipe_asset\", TO_CHAR(a4.\"from\", 'HH24:mi') AS \"from\", TO_CHAR(a4.\"to\", 'HH24:mi') AS \"to\"  FROM \"armada_schedule\" a  LEFT JOIN \"cabang\" a1 ON a.\"cabang_id\" = a1.\"id\"  LEFT JOIN \"tipe_asset\" a2 ON a.\"tipe_asset_id\" = a2.\"id\"  LEFT JOIN \"asset_kapal\" a3 ON a.\"asset_kapal_id\" = a3.\"id\" LEFT JOIN \"armada_jaga\" a4 ON a.\"id\" = a4.\"armada_schedule_id\" WHERE a.\"id\" = '" + id + "'";
	const rows = resQuery.rows;
	var arr = [], arrNum = [], no = 0;
	var kapal = "";
	if (rows.length > 0) {
		for (var a in rows) {
			if (kapal != rows[a].nama_asset) {
				if (kapal != "") {
					arr.push(arrNum);
				}
				arrNum = [];
				kapal = rows[a].nama_asset;
			}
			arrNum.push(rows[a]);
			no++;
			if (no == rows.length) {
				arr.push(arrNum);
			}
		}
	}

	const exec = f.query(queryText);
	const res = await exec;
	const armada = { "notAvailable": arr }
	let merge = { ...res.rows[0], ...armada }
	result(null, merge);
}

ArmadaSchedule.getAll = async (param, result, cabang_id) => {
	var wheres = f.getParam(param, "armada_schedule");
	var query = "SELECT a.*  , a1.\"nama\" as \"cabang\", a2.\"nama\" as \"tipe_asset\", a4.\"from\", a4.\"to\"  FROM \"armada_schedule\" a  LEFT JOIN \"cabang\" a1 ON a.\"cabang_id\" = a1.\"id\"  LEFT JOIN \"tipe_asset\" a2 ON a.\"tipe_asset_id\" = a2.\"id\"  LEFT JOIN \"asset_kapal\" a3 ON a.\"asset_kapal_id\" = a3.\"id\"  LEFT JOIN \"armada_jaga\" a4 ON a.\"armada_jaga_id\" = a4.\"id\" ";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"date\" LIKE '%" + param.q + "%' OR a.\"cabang_id\" LIKE '%" + param.q + "%' OR a.\"tipe_asset_id\" LIKE '%" + param.q + "%' OR a.\"asset_kapal_id\" LIKE '%" + param.q + "%' OR a.\"status\" LIKE '%" + param.q + "%' OR a.\"jam_pengoperasian\" LIKE '%" + param.q + "%' OR a.\"reliability\" LIKE '%" + param.q + "%' OR a.\"keterangan\" LIKE '%" + param.q + "%' OR a.\"armada_jaga_id\" LIKE '%" + param.q + "%' OR LOWER(a2.\"nama\") LIKE LOWER('%" + param.q + "%') OR LOWER(a1.\"nama\") LIKE LOWER('%" + param.q + "%')";
		wheres += ")";
	}

	wheres += f.whereCabang(cabang_id, `a."cabang_id"`, wheres.length);
	query += wheres;
	query += "ORDER BY a.\"id\" DESC";
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

ArmadaSchedule.updateById = async (id, armadaschedule, result, user_id) => {
	var armada = armadaschedule.notAvailable;
	var armadaDate = armadaschedule.date;
	delete armadaschedule.armada;

	await f.query(`DELETE FROM "armada_jaga" WHERE "armada_schedule_id" = '${id}'`, 2);
	for (var a in armada) {
		var c = armada[a]
		for (var b in c) {
			c[b].armada_schedule_id = id;
			delete c[b].nama_asset

			if (c[b].from == "") c[b].from = "00:00";
			if (c[b].to == "") c[b].to = "00:00";
			c[b].from = f.toDate(armadaDate, "YYYY-MM-DD") + " " + c[b].from + ":00";
			c[b].to = f.toDate(armadaDate, "YYYY-MM-DD") + " " + c[b].to + ":00";
			// console.log(armada);

			var id_pj = await f.getid("armada_jaga");
			var hv_pj = await f.headerValue(c[b], id_pj);
			var queryText = "INSERT INTO \"armada_jaga\" " + hv_pj;
			await f.query(queryText, 2);
		}
	}

	var arr = ["date", "cabang_id", "tipe_asset_id", "asset_kapal_id", "status", "jam_pengoperasian", "reliability", "keterangan", "armada_jaga_id"];
	var str = f.getValueUpdate(armadaschedule, id, arr);
	var id_activity_log = await f.getid("activity_log");
	objek.koneksi = id;
	objek.action = armadaschedule.approval_status_id;
	objek.keterangan = armadaschedule.keterangan;
	objek.item = "armadaschedule";
	objek.user_id = user_id;
	if (armadaschedule.approval_status_id == 1) {
		objek.remark = "Pengajuan disetujui oleh pusat";
	} else if (armadaschedule.approval_status_id == 2) {
		objek.remark = "Pengajuan ditolak oleh pusat";
	} else if (armadaschedule.approval_status_id == 0) {
		objek.remark = "Pengajuan dirubah oleh admin cabang";
	}
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


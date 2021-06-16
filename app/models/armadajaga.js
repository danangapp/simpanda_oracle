const f = require('../controllers/function');
var objek = new Object();

// constructor
const ArmadaJaga = function (armadajaga) {
	this.from = armadajaga.from;
	this.to = armadajaga.to;
	this.armada_schedule_id = armadajaga.armada_schedule_id;
};

ArmadaJaga.create = async (newArmadaJaga, result, cabang_id, user_id) => {
	var id = await f.getid("armada_jaga");
	const hv = await f.headerValue(newArmadaJaga, id);
	var queryText = "INSERT INTO \"armada_jaga\" " + hv + " RETURN \"id\" INTO :id";
	const exec = f.query(queryText, 1);
	delete newArmadaJaga.id;
	const res = await exec;

	result(null, { id: id, ...newArmadaJaga });
};

ArmadaJaga.findById = async (id, result) => {
	var queryText = "SELECT a.* , a1.\"keterangan\" as \"armada_schedule\" FROM \"armada_jaga\" a  LEFT JOIN \"armada_schedule\" a1 ON a.\"armada_schedule_id\" = a1.\"id\"   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

ArmadaJaga.getAll = async (param, result, cabang_id) => {
	// var wheres = f.getParam(param, "armada_jaga");
	// var query = "SELECT a.* , a1.\"keterangan\" as \"armada_schedule\", a2.\"nama_asset\" as \"asset_kapal\" FROM \"armada_jaga\" a  LEFT JOIN \"armada_schedule\" a1 ON a.\"armada_schedule_id\" = a1.\"id\" LEFT JOIN \"asset_kapal\" a2 ON a.\"asset_kapal_id\" = a2.\"id\" ";
	// if (param.q) {
	// 	wheres += wheres.length == 7 ? "(" : "AND (";
	// 	wheres += "a.\"from\" LIKE '%" + param.q + "%' OR a.\"to\" LIKE '%" + param.q + "%' OR a.\"armada_schedule_id\" LIKE '%" + param.q + "%'";
	// 	wheres += ")";
	// }

	// query += wheres;
	// console.log(query);
	// query += "ORDER BY a.\"id\" DESC";

	var query = `SELECT "armada_jaga".*, "asset_kapal"."nama_asset" FROM "armada_jaga"
				LEFT JOIN "armada_schedule" ON "armada_jaga"."armada_schedule_id" = "armada_schedule"."id"
				LEFT JOIN "asset_kapal" ON "armada_jaga"."asset_kapal_id" = "asset_kapal"."id" `;

	console.log('param armada jaga',param)

	if (param !== undefined) {
		// query += `WHERE trunc("armada_schedule"."date") = TO_DATE('${param.date}', 'YY/MM/DD') AND "armada_jaga"."available" = ${param.available} AND "armada_schedule"."cabang_id" = ${param.cabang_id} AND "asset_kapal"."approval_status_id" = ${param.approval_status_id} `
		query += `WHERE trunc("armada_schedule"."date") = TO_DATE('${param.date}', 'YY/MM/DD') 
				AND "armada_schedule"."cabang_id" = ${param.cabang_id} 
				AND "asset_kapal"."enable" = ${param.enable} 
				AND "asset_kapal"."approval_status_id" = ${param.approval_status_id} `
	}

	// if (cabang_id > 0) {
	// 	query += `AND "armada_schedule"."cabang_id" = ${cabang_id}`
	// }

	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

ArmadaJaga.updateById = async (id, armadajaga, result, user_id) => {

	var arr = ["from", "to", "armada_schedule_id"];
	var str = f.getValueUpdate(armadajaga, id, arr);
	var id_activity_log = await f.getid("activity_log");
	objek.koneksi = id;
	objek.action = armadajaga.approval_status_id;
	objek.keterangan = armadajaga.keterangan;
	objek.item = "armadajaga";
	objek.user_id = user_id;
	if (armadajaga.approval_status_id == 1) {
		objek.remark = "Pengajuan disetujui oleh pusat";
	} else if (armadajaga.approval_status_id == 2) {
		objek.remark = "Pengajuan ditolak oleh pusat";
	} else if (armadajaga.approval_status_id == 0) {
		objek.remark = "Pengajuan dirubah oleh admin cabang";
	}
	const hval = await f.headerValue(objek, id_activity_log);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);
	await f.query("UPDATE \"armada_jaga\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...armadajaga });
};

ArmadaJaga.remove = (id, result) => {
	f.query("DELETE FROM \"armada_jaga\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = ArmadaJaga;


const f = require('../controllers/function');
var objek = new Object();

// constructor
const PanduJaga = function (pandujaga) {
	this.pandu_schedule_id = pandujaga.pandu_schedule_id;
	this.personil_id = pandujaga.personil_id;
};

PanduJaga.create = async (newPanduJaga, result, cabang_id, user_id) => {
	var id = await f.getid("pandu_jaga");
	const hv = await f.headerValue(newPanduJaga, id);
	var queryText = "INSERT INTO \"pandu_jaga\" " + hv + " RETURN \"id\" INTO :id";
	const exec = f.query(queryText, 1);
	delete newPanduJaga.id;
	const res = await exec;

	result(null, { id: id, ...newPanduJaga });
};

PanduJaga.findById = async (id, result) => {
	var queryText = "SELECT a.* , a1.\"date\", a1.\"cabang_id\", a1.\"status_absen_id\", a1.\"keterangan\", a1.\"approval_status_id\", a1.\"enable\", a1.\"pandu_bandar_laut_id\", a1.\"pandu_jaga_id\", a2.\"tipe_personil_id\", a2.\"approval_status_id\", a2.\"simop_kd_pers_pandu\", a2.\"simop_kd_pers_pandu_cbg\", a2.\"asset_kapal_id\", a2.\"nama\", a2.\"kelas\", a2.\"tempat_lahir\", a2.\"tanggal_lahir\", a2.\"nipp\", a2.\"jabatan\", a2.\"status_kepegawaian_id\", a2.\"cv\", a2.\"nomor_sk\", a2.\"tanggal_mulai\", a2.\"tanggal_selesai\", a2.\"sk\", a2.\"skpp\", a2.\"surat_kesehatan\", a2.\"sertifikat_id\" FROM \"pandu_jaga\" a  LEFT JOIN \"pandu_schedule\" a1 ON a.\"pandu_schedule_id\" = a1.\"id\"  LEFT JOIN \"personil\" a2 ON a.\"personil_id\" = a2.\"id\"   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

PanduJaga.getAll = async (param, result, cabang_id) => {
	// var wheres = f.getParam(param, "pandu_jaga");
	// var query = `SELECT a.* , a1."date", a1."cabang_id", a1."status_absen_id", a1."keterangan", a1."approval_status_id", a1."enable", a1."pandu_bandar_laut_id", a1."pandu_jaga_id", a2."tipe_personil_id", a2."approval_status_id", a2."simop_kd_pers_pandu", a2."simop_kd_pers_pandu_cbg", a2."asset_kapal_id", a2."nama", a2."kelas", a2."tempat_lahir", a2."tanggal_lahir", a2."nipp", a2."jabatan", a2."status_kepegawaian_id", a2."cv", a2."nomor_sk", a2."tanggal_mulai", a2."tanggal_selesai", a2."sk", a2."skpp", a2."surat_kesehatan", a2."sertifikat_id" FROM "pandu_jaga" a  LEFT JOIN "pandu_schedule" a1 ON a."pandu_schedule_id" = a1."id"  LEFT JOIN "personil" a2 ON a."personil_id" = a2."id" `;
	// if (param.q) {
	// 	wheres += wheres.length == 7 ? "(" : "AND (";
	// 	wheres += "a.\"pandu_schedule_id\" LIKE '%" + param.q + "%' OR a.\"personil_id\" LIKE '%" + param.q + "%'";
	// 	wheres += ")";
	// }

	// query += wheres;
	// query += "ORDER BY a.\"id\" DESC";

	var query = `SELECT "pandu_jaga".*, "personil"."nama" FROM "pandu_jaga"
				LEFT JOIN "pandu_schedule" ON "pandu_jaga"."pandu_schedule_id" = "pandu_schedule"."id"
				LEFT JOIN "personil" ON "pandu_jaga"."personil_id" = "personil"."id" `;
	
	// console.log('param',param)

	if (param !== undefined) {
		query += `WHERE "personil"."pandu_bandar_laut_id" = ${param.pandu_bandar_laut_id}
					AND trunc("pandu_schedule"."date") = TO_DATE('${param.date}', 'YY/MM/DD') AND "pandu_jaga"."kehadiran = ${param.kehadiran}" AND "pandu_schedule"."cabang_id" = ${param.cabang_id} `
	}

	// if (cabang_id > 0) {
	// 	query += `AND "pandu_schedule"."cabang_id" = ${cabang_id}`
	// }

	// console.log(query);
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

PanduJaga.updateById = async (id, pandujaga, result, user_id) => {

	var arr = ["pandu_schedule_id", "personil_id"];
	var str = f.getValueUpdate(pandujaga, id, arr);
	var id_activity_log = await f.getid("activity_log");
	objek.koneksi = id;
	objek.action = pandujaga.approval_status_id;
	objek.keterangan = pandujaga.keterangan;
	objek.item = "pandujaga";
	objek.user_id = user_id;
	if (pandujaga.approval_status_id == 1) {
		objek.remark = "Pengajuan disetujui oleh pusat";
	} else if (pandujaga.approval_status_id == 2) {
		objek.remark = "Pengajuan ditolak oleh pusat";
	} else if (pandujaga.approval_status_id == 0) {
		objek.remark = "Pengajuan dirubah oleh admin cabang";
	}
	const hval = await f.headerValue(objek, id_activity_log);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);
	await f.query("UPDATE \"pandu_jaga\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...pandujaga });
};

PanduJaga.remove = (id, result) => {
	f.query("DELETE FROM \"pandu_jaga\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = PanduJaga;


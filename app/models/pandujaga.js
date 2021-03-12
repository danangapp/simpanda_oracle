const f = require('../controllers/function');
var objek = new Object();

// constructor
const PanduJaga = function (pandujaga) {
	this.pandu_schedule_id = pandujaga.pandu_schedule_id;
	this.personil_id = pandujaga.personil_id;
};

PanduJaga.create = async (newPanduJaga, result) => {
	const hv = await f.headerValue(newPanduJaga, "pandu_jaga");
	var queryText = "INSERT INTO \"pandu_jaga\" " + hv + " RETURN \"id\" INTO :id";
	const exec = f.query(queryText, 1);
	delete newPanduJaga.id;
	const res = await exec;

	result(null, { id: res.outBinds.id[0], ...newPanduJaga });
};

PanduJaga.findById = async (id, result) => {
	var queryText = "SELECT a.* , a1.\"*\", a2.\"*\" FROM \"pandu_jaga\" a  LEFT JOIN \"pandu_schedule\" a1 ON a.\"pandu_schedule_id\" = a1.\"id\"  LEFT JOIN \"personil\" a2 ON a.\"personil_id\" = a2.\"id\"   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

PanduJaga.getAll = async (param, result) => {
	var wheres = f.getParam(param, "pandu_jaga");
	var query = `SELECT a.* ,	a1."date", a1."cabang_id", a1."status_absen_id", a1."keterangan", a1."approval_status_id", a1."enable", a1."pandu_bandar_laut_id", a1."pandu_jaga_id", a2."tipe_personil_id", a2."approval_status_id", a2."simop_kd_pers_pandu", a2."simop_kd_pers_pandu_cbg", a2."asset_kapal_id", a2."nama", a2."kelas", a2."tempat_lahir", a2."tanggal_lahir", a2."nipp", a2."jabatan", a2."status_kepegawaian_id", a2."cv", a2."nomor_sk", a2."tanggal_mulai", a2."tanggal_selesai", a2."sk", a2."skpp", a2."surat_kesehatan", a2."sertifikat_id" FROM "pandu_jaga" a LEFT JOIN "pandu_schedule" a1 ON a."pandu_schedule_id" = a1."id" LEFT JOIN "personil" a2 ON a."personil_id" = a2."id"`;
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"pandu_schedule_id\" LIKE '%" + param.q + "%' OR a.\"personil_id\" LIKE '%" + param.q + "%'";
		wheres += ")";
	}

	query += wheres;
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

PanduJaga.updateById = async (id, pandujaga, result) => {

	var arr = ["pandu_schedule_id", "personil_id"];
	var str = f.getValueUpdate(pandujaga, id, arr);
	if (objek.action != null) {
		const hv = await f.headerValue(objek, "activity_log");
		await f.query("INSERT INTO \"activity_log\" " + hv, 2);
	}
	f.query("UPDATE \"pandu_jaga\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...pandujaga });
};

PanduJaga.remove = (id, result) => {
	f.query("DELETE FROM \"pandu_jaga\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = PanduJaga;


const f = require('../controllers/function');
var objek = new Object();

// constructor
const SaranaBantuPemanduKapal = function (saranabantupemandukapal) {
    this.sarana_bantu_pemandu_id = saranabantupemandukapal.sarana_bantu_pemandu_id;
    this.tipe_sarana_pemandu_kapal_id = saranabantupemandukapal.tipe_sarana_pemandu_kapal_id;
    this.dokumen_kapal_q1 = saranabantupemandukapal.dokumen_kapal_q1;
    this.dokumen_kapal_q2 = saranabantupemandukapal.dokumen_kapal_q2;
    this.dokumen_kapal_q3 = saranabantupemandukapal.dokumen_kapal_q3;
    this.dokumen_kapal_q4 = saranabantupemandukapal.dokumen_kapal_q4;
    this.dokumen_kapal_q5 = saranabantupemandukapal.dokumen_kapal_q5;
    this.dokumen_kapal_q6 = saranabantupemandukapal.dokumen_kapal_q6;
    this.dokumen_kapal_q7 = saranabantupemandukapal.dokumen_kapal_q7;
    this.dokumen_kapal_q8 = saranabantupemandukapal.dokumen_kapal_q8;
    this.dokumen_kapal_q9 = saranabantupemandukapal.dokumen_kapal_q9;
    this.dokumen_kapal_q10 = saranabantupemandukapal.dokumen_kapal_q10;
    this.dokumen_kapal_q11 = saranabantupemandukapal.dokumen_kapal_q11;
    this.dokumen_kapal_q12 = saranabantupemandukapal.dokumen_kapal_q12;
    this.dokumen_kapal_q13 = saranabantupemandukapal.dokumen_kapal_q13;
    this.dokumen_kapal_q14 = saranabantupemandukapal.dokumen_kapal_q14;
    this.dokumen_kapal_q15 = saranabantupemandukapal.dokumen_kapal_q15;
    this.kondisi_umum_q1 = saranabantupemandukapal.kondisi_umum_q1;
    this.kondisi_umum_q2 = saranabantupemandukapal.kondisi_umum_q2;
    this.kondisi_umum_q3 = saranabantupemandukapal.kondisi_umum_q3;
    this.kondisi_umum_q4 = saranabantupemandukapal.kondisi_umum_q4;
    this.kondisi_umum_q5 = saranabantupemandukapal.kondisi_umum_q5;
    this.kondisi_umum_q6 = saranabantupemandukapal.kondisi_umum_q6;
    this.pemeriksaan_performa_q1 = saranabantupemandukapal.pemeriksaan_performa_q1;
    this.pemeriksaan_performa_q2 = saranabantupemandukapal.pemeriksaan_performa_q2;
    this.pemeriksaan_performa_q3 = saranabantupemandukapal.pemeriksaan_performa_q3;
    this.pemeriksaan_performa_q4 = saranabantupemandukapal.pemeriksaan_performa_q4;
    this.pemeriksaan_performa_q5 = saranabantupemandukapal.pemeriksaan_performa_q5;
    this.pemeriksaan_fisik_a1 = saranabantupemandukapal.pemeriksaan_fisik_a1;
    this.pemeriksaan_fisik_a2 = saranabantupemandukapal.pemeriksaan_fisik_a2;
    this.pemeriksaan_fisik_a3 = saranabantupemandukapal.pemeriksaan_fisik_a3;
    this.pemeriksaan_fisik_a4 = saranabantupemandukapal.pemeriksaan_fisik_a4;
    this.pemeriksaan_fisik_a5 = saranabantupemandukapal.pemeriksaan_fisik_a5;
    this.pemeriksaan_fisik_a6 = saranabantupemandukapal.pemeriksaan_fisik_a6;
    this.pemeriksaan_fisik_a7 = saranabantupemandukapal.pemeriksaan_fisik_a7;
    this.pemeriksaan_fisik_b1 = saranabantupemandukapal.pemeriksaan_fisik_b1;
    this.pemeriksaan_fisik_b2 = saranabantupemandukapal.pemeriksaan_fisik_b2;
    this.pemeriksaan_fisik_b3 = saranabantupemandukapal.pemeriksaan_fisik_b3;
    this.pemeriksaan_fisik_b4 = saranabantupemandukapal.pemeriksaan_fisik_b4;
    this.pemeriksaan_fisik_b5 = saranabantupemandukapal.pemeriksaan_fisik_b5;
    this.pemeriksaan_fisik_b6 = saranabantupemandukapal.pemeriksaan_fisik_b6;
    this.pemeriksaan_fisik_b7 = saranabantupemandukapal.pemeriksaan_fisik_b7;
    this.pemeriksaan_fisik_b8 = saranabantupemandukapal.pemeriksaan_fisik_b8;
    this.pemeriksaan_fisik_b9 = saranabantupemandukapal.pemeriksaan_fisik_b9;
    this.pemeriksaan_fisik_c1 = saranabantupemandukapal.pemeriksaan_fisik_c1;
    this.pemeriksaan_fisik_c2 = saranabantupemandukapal.pemeriksaan_fisik_c2;
    this.pemeriksaan_fisik_c3 = saranabantupemandukapal.pemeriksaan_fisik_c3;
    this.pemeriksaan_fisik_c4 = saranabantupemandukapal.pemeriksaan_fisik_c4;
    this.pemeriksaan_fisik_c5 = saranabantupemandukapal.pemeriksaan_fisik_c5;
    this.pemeriksaan_fisik_c6 = saranabantupemandukapal.pemeriksaan_fisik_c6;
    this.pemeriksaan_fisik_c7 = saranabantupemandukapal.pemeriksaan_fisik_c7;
    this.pemeriksaan_fisik_d1 = saranabantupemandukapal.pemeriksaan_fisik_d1;
    this.pemeriksaan_fisik_d2 = saranabantupemandukapal.pemeriksaan_fisik_d2;
    this.pemeriksaan_fisik_d3 = saranabantupemandukapal.pemeriksaan_fisik_d3;
    this.pemeriksaan_fisik_d4 = saranabantupemandukapal.pemeriksaan_fisik_d4;
    this.pemeriksaan_fisik_d5 = saranabantupemandukapal.pemeriksaan_fisik_d5;
    this.pemeriksaan_fisik_d6 = saranabantupemandukapal.pemeriksaan_fisik_d6;
    this.pemeriksaan_fisik_d7 = saranabantupemandukapal.pemeriksaan_fisik_d7;
    this.pemeriksaan_fisik_d8 = saranabantupemandukapal.pemeriksaan_fisik_d8;
    this.pemeriksaan_fisik_d9 = saranabantupemandukapal.pemeriksaan_fisik_d9;
    this.pemeriksaan_fisik_e1 = saranabantupemandukapal.pemeriksaan_fisik_e1;
    this.pemeriksaan_fisik_e2 = saranabantupemandukapal.pemeriksaan_fisik_e2;
    this.pemeriksaan_fisik_e3 = saranabantupemandukapal.pemeriksaan_fisik_e3;
    this.pemeriksaan_fisik_f1 = saranabantupemandukapal.pemeriksaan_fisik_f1;
    this.pemeriksaan_fisik_f2 = saranabantupemandukapal.pemeriksaan_fisik_f2;
    this.pemeriksaan_fisik_f3 = saranabantupemandukapal.pemeriksaan_fisik_f3;
    this.pemeriksaan_fisik_f4 = saranabantupemandukapal.pemeriksaan_fisik_f4;
};

SaranaBantuPemanduKapal.create = async(newSaranaBantuPemanduKapal, result) => {
		const hv = await f.headerValue(newSaranaBantuPemanduKapal, "sarana_bantu_pemandu_kapal");
		var queryText = "INSERT INTO \"sarana_bantu_pemandu_kapal\" " + hv + " RETURN \"id\" INTO :id";
		const exec = f.query(queryText, 1);
		delete newSaranaBantuPemanduKapal.id;
		const res = await exec;

		result(null, { id: res.outBinds.id[0], ...newSaranaBantuPemanduKapal });
};

SaranaBantuPemanduKapal.findById = async (id, result) => {
	var queryText = "SELECT a.* , a1.\"nama\" as \"sarana_bantu_pemandu\", a2.\"nama\" as \"tipe_sarana_pemandu_kapal\" FROM \"sarana_bantu_pemandu_kapal\" a  LEFT JOIN \"sarana_bantu_pemandu\" a1 ON a.\"sarana_bantu_pemandu_id\" = a1.\"id\"  LEFT JOIN \"tipe_sarana_pemandu_kapal\" a2 ON a.\"tipe_sarana_pemandu_kapal_id\" = a2.\"id\"   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

SaranaBantuPemanduKapal.getAll = async (param, result, cabang_id) => {
    var wheres = f.getParam(param, "sarana_bantu_pemandu_kapal");
    var query = "SELECT a.* , a1.\"nama\" as \"sarana_bantu_pemandu\", a2.\"nama\" as \"tipe_sarana_pemandu_kapal\" FROM \"sarana_bantu_pemandu_kapal\" a  LEFT JOIN \"sarana_bantu_pemandu\" a1 ON a.\"sarana_bantu_pemandu_id\" = a1.\"id\"  LEFT JOIN \"tipe_sarana_pemandu_kapal\" a2 ON a.\"tipe_sarana_pemandu_kapal_id\" = a2.\"id\" ";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"sarana_bantu_pemandu_id\" LIKE '%" + param.q + "%' OR a.\"tipe_sarana_pemandu_kapal_id\" LIKE '%" + param.q + "%' OR a.\"dokumen_kapal_q1\" LIKE '%" + param.q + "%' OR a.\"dokumen_kapal_q2\" LIKE '%" + param.q + "%' OR a.\"dokumen_kapal_q3\" LIKE '%" + param.q + "%' OR a.\"dokumen_kapal_q4\" LIKE '%" + param.q + "%' OR a.\"dokumen_kapal_q5\" LIKE '%" + param.q + "%' OR a.\"dokumen_kapal_q6\" LIKE '%" + param.q + "%' OR a.\"dokumen_kapal_q7\" LIKE '%" + param.q + "%' OR a.\"dokumen_kapal_q8\" LIKE '%" + param.q + "%' OR a.\"dokumen_kapal_q9\" LIKE '%" + param.q + "%' OR a.\"dokumen_kapal_q10\" LIKE '%" + param.q + "%' OR a.\"dokumen_kapal_q11\" LIKE '%" + param.q + "%' OR a.\"dokumen_kapal_q12\" LIKE '%" + param.q + "%' OR a.\"dokumen_kapal_q13\" LIKE '%" + param.q + "%' OR a.\"dokumen_kapal_q14\" LIKE '%" + param.q + "%' OR a.\"dokumen_kapal_q15\" LIKE '%" + param.q + "%' OR a.\"kondisi_umum_q1\" LIKE '%" + param.q + "%' OR a.\"kondisi_umum_q2\" LIKE '%" + param.q + "%' OR a.\"kondisi_umum_q3\" LIKE '%" + param.q + "%' OR a.\"kondisi_umum_q4\" LIKE '%" + param.q + "%' OR a.\"kondisi_umum_q5\" LIKE '%" + param.q + "%' OR a.\"kondisi_umum_q6\" LIKE '%" + param.q + "%' OR a.\"pemeriksaan_performa_q1\" LIKE '%" + param.q + "%' OR a.\"pemeriksaan_performa_q2\" LIKE '%" + param.q + "%' OR a.\"pemeriksaan_performa_q3\" LIKE '%" + param.q + "%' OR a.\"pemeriksaan_performa_q4\" LIKE '%" + param.q + "%' OR a.\"pemeriksaan_performa_q5\" LIKE '%" + param.q + "%' OR a.\"pemeriksaan_fisik_a1\" LIKE '%" + param.q + "%' OR a.\"pemeriksaan_fisik_a2\" LIKE '%" + param.q + "%' OR a.\"pemeriksaan_fisik_a3\" LIKE '%" + param.q + "%' OR a.\"pemeriksaan_fisik_a4\" LIKE '%" + param.q + "%' OR a.\"pemeriksaan_fisik_a5\" LIKE '%" + param.q + "%' OR a.\"pemeriksaan_fisik_a6\" LIKE '%" + param.q + "%' OR a.\"pemeriksaan_fisik_a7\" LIKE '%" + param.q + "%' OR a.\"pemeriksaan_fisik_b1\" LIKE '%" + param.q + "%' OR a.\"pemeriksaan_fisik_b2\" LIKE '%" + param.q + "%' OR a.\"pemeriksaan_fisik_b3\" LIKE '%" + param.q + "%' OR a.\"pemeriksaan_fisik_b4\" LIKE '%" + param.q + "%' OR a.\"pemeriksaan_fisik_b5\" LIKE '%" + param.q + "%' OR a.\"pemeriksaan_fisik_b6\" LIKE '%" + param.q + "%' OR a.\"pemeriksaan_fisik_b7\" LIKE '%" + param.q + "%' OR a.\"pemeriksaan_fisik_b8\" LIKE '%" + param.q + "%' OR a.\"pemeriksaan_fisik_b9\" LIKE '%" + param.q + "%' OR a.\"pemeriksaan_fisik_c1\" LIKE '%" + param.q + "%' OR a.\"pemeriksaan_fisik_c2\" LIKE '%" + param.q + "%' OR a.\"pemeriksaan_fisik_c3\" LIKE '%" + param.q + "%' OR a.\"pemeriksaan_fisik_c4\" LIKE '%" + param.q + "%' OR a.\"pemeriksaan_fisik_c5\" LIKE '%" + param.q + "%' OR a.\"pemeriksaan_fisik_c6\" LIKE '%" + param.q + "%' OR a.\"pemeriksaan_fisik_c7\" LIKE '%" + param.q + "%' OR a.\"pemeriksaan_fisik_d1\" LIKE '%" + param.q + "%' OR a.\"pemeriksaan_fisik_d2\" LIKE '%" + param.q + "%' OR a.\"pemeriksaan_fisik_d3\" LIKE '%" + param.q + "%' OR a.\"pemeriksaan_fisik_d4\" LIKE '%" + param.q + "%' OR a.\"pemeriksaan_fisik_d5\" LIKE '%" + param.q + "%' OR a.\"pemeriksaan_fisik_d6\" LIKE '%" + param.q + "%' OR a.\"pemeriksaan_fisik_d7\" LIKE '%" + param.q + "%' OR a.\"pemeriksaan_fisik_d8\" LIKE '%" + param.q + "%' OR a.\"pemeriksaan_fisik_d9\" LIKE '%" + param.q + "%' OR a.\"pemeriksaan_fisik_e1\" LIKE '%" + param.q + "%' OR a.\"pemeriksaan_fisik_e2\" LIKE '%" + param.q + "%' OR a.\"pemeriksaan_fisik_e3\" LIKE '%" + param.q + "%' OR a.\"pemeriksaan_fisik_f1\" LIKE '%" + param.q + "%' OR a.\"pemeriksaan_fisik_f2\" LIKE '%" + param.q + "%' OR a.\"pemeriksaan_fisik_f3\" LIKE '%" + param.q + "%' OR a.\"pemeriksaan_fisik_f4\" LIKE '%" + param.q + "%'";	
		wheres += ")";
	}

	query += wheres;
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

SaranaBantuPemanduKapal.updateById = async(id, saranabantupemandukapal, result) => {

	var arr = ["sarana_bantu_pemandu_id", "tipe_sarana_pemandu_kapal_id", "dokumen_kapal_q1", "dokumen_kapal_q2", "dokumen_kapal_q3", "dokumen_kapal_q4", "dokumen_kapal_q5", "dokumen_kapal_q6", "dokumen_kapal_q7", "dokumen_kapal_q8", "dokumen_kapal_q9", "dokumen_kapal_q10", "dokumen_kapal_q11", "dokumen_kapal_q12", "dokumen_kapal_q13", "dokumen_kapal_q14", "dokumen_kapal_q15", "kondisi_umum_q1", "kondisi_umum_q2", "kondisi_umum_q3", "kondisi_umum_q4", "kondisi_umum_q5", "kondisi_umum_q6", "pemeriksaan_performa_q1", "pemeriksaan_performa_q2", "pemeriksaan_performa_q3", "pemeriksaan_performa_q4", "pemeriksaan_performa_q5", "pemeriksaan_fisik_a1", "pemeriksaan_fisik_a2", "pemeriksaan_fisik_a3", "pemeriksaan_fisik_a4", "pemeriksaan_fisik_a5", "pemeriksaan_fisik_a6", "pemeriksaan_fisik_a7", "pemeriksaan_fisik_b1", "pemeriksaan_fisik_b2", "pemeriksaan_fisik_b3", "pemeriksaan_fisik_b4", "pemeriksaan_fisik_b5", "pemeriksaan_fisik_b6", "pemeriksaan_fisik_b7", "pemeriksaan_fisik_b8", "pemeriksaan_fisik_b9", "pemeriksaan_fisik_c1", "pemeriksaan_fisik_c2", "pemeriksaan_fisik_c3", "pemeriksaan_fisik_c4", "pemeriksaan_fisik_c5", "pemeriksaan_fisik_c6", "pemeriksaan_fisik_c7", "pemeriksaan_fisik_d1", "pemeriksaan_fisik_d2", "pemeriksaan_fisik_d3", "pemeriksaan_fisik_d4", "pemeriksaan_fisik_d5", "pemeriksaan_fisik_d6", "pemeriksaan_fisik_d7", "pemeriksaan_fisik_d8", "pemeriksaan_fisik_d9", "pemeriksaan_fisik_e1", "pemeriksaan_fisik_e2", "pemeriksaan_fisik_e3", "pemeriksaan_fisik_f1", "pemeriksaan_fisik_f2", "pemeriksaan_fisik_f3", "pemeriksaan_fisik_f4"];
	var str = f.getValueUpdate(saranabantupemandukapal, id, arr);
	if (objek.action != null) {
		const hv = await f.headerValue(objek, "activity_log");
		await f.query("INSERT INTO \"activity_log\" " + hv, 2);
	}
	f.query("UPDATE \"sarana_bantu_pemandu_kapal\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...saranabantupemandukapal });
};

SaranaBantuPemanduKapal.remove = (id, result) => {
	f.query("DELETE FROM \"sarana_bantu_pemandu_kapal\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = SaranaBantuPemanduKapal;


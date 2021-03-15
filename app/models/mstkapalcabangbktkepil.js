const f = require('../controllers/function');
var objek = new Object();

// constructor
const MstKapalCabangBktKepil = function (mstkapalcabangbktkepil) {
    this.NO_BKT_KEPIL = mstkapalcabangbktkepil.NO_BKT_KEPIL;
    this.TGL_FORM_BKT_KEPIL = mstkapalcabangbktkepil.TGL_FORM_BKT_KEPIL;
    this.NO_UKK = mstkapalcabangbktkepil.NO_UKK;
    this.KD_PPKB = mstkapalcabangbktkepil.KD_PPKB;
    this.KD_KADE = mstkapalcabangbktkepil.KD_KADE;
    this.KD_MST_KEPIL = mstkapalcabangbktkepil.KD_MST_KEPIL;
    this.KD_FAS = mstkapalcabangbktkepil.KD_FAS;
    this.TGL_JAM_BKT_KEPIL = mstkapalcabangbktkepil.TGL_JAM_BKT_KEPIL;
    this.TGL_JAM_ENTRY = mstkapalcabangbktkepil.TGL_JAM_ENTRY;
    this.JAM_TOLAK = mstkapalcabangbktkepil.JAM_TOLAK;
    this.JAM_TIBA = mstkapalcabangbktkepil.JAM_TIBA;
    this.USERID_BKT_KEPIL = mstkapalcabangbktkepil.USERID_BKT_KEPIL;
    this.PPKB_KE = mstkapalcabangbktkepil.PPKB_KE;
    this.BIAYA_KEPIL = mstkapalcabangbktkepil.BIAYA_KEPIL;
    this.KD_MORING = mstkapalcabangbktkepil.KD_MORING;
    this.KOREKSI_KE = mstkapalcabangbktkepil.KOREKSI_KE;
};

MstKapalCabangBktKepil.create = async(newMstKapalCabangBktKepil, result, cabang_id, user_id) => {
		var id = await f.getid("mst_kapal_cabang_bkt_kepil");
		const hv = await f.headerValue(newMstKapalCabangBktKepil, id);
		var queryText = "INSERT INTO \"mst_kapal_cabang_bkt_kepil\" " + hv + " RETURN \"id\" INTO :id";
		const exec = f.query(queryText, 1);
		delete newMstKapalCabangBktKepil.id;
		const res = await exec;

		result(null, { id: id, ...newMstKapalCabangBktKepil });
};

MstKapalCabangBktKepil.findById = async (id, result) => {
	var queryText = "SELECT a.*  FROM \"mst_kapal_cabang_bkt_kepil\" a   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

MstKapalCabangBktKepil.getAll = async (param, result, cabang_id) => {
    var wheres = f.getParam(param, "mst_kapal_cabang_bkt_kepil");
    var query = "SELECT a.*  FROM \"mst_kapal_cabang_bkt_kepil\" a ";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"NO_BKT_KEPIL\" LIKE '%" + param.q + "%' OR a.\"TGL_FORM_BKT_KEPIL\" LIKE '%" + param.q + "%' OR a.\"NO_UKK\" LIKE '%" + param.q + "%' OR a.\"KD_PPKB\" LIKE '%" + param.q + "%' OR a.\"KD_KADE\" LIKE '%" + param.q + "%' OR a.\"KD_MST_KEPIL\" LIKE '%" + param.q + "%' OR a.\"KD_FAS\" LIKE '%" + param.q + "%' OR a.\"TGL_JAM_BKT_KEPIL\" LIKE '%" + param.q + "%' OR a.\"TGL_JAM_ENTRY\" LIKE '%" + param.q + "%' OR a.\"JAM_TOLAK\" LIKE '%" + param.q + "%' OR a.\"JAM_TIBA\" LIKE '%" + param.q + "%' OR a.\"USERID_BKT_KEPIL\" LIKE '%" + param.q + "%' OR a.\"PPKB_KE\" LIKE '%" + param.q + "%' OR a.\"BIAYA_KEPIL\" LIKE '%" + param.q + "%' OR a.\"KD_MORING\" LIKE '%" + param.q + "%' OR a.\"KOREKSI_KE\" LIKE '%" + param.q + "%'";	
		wheres += ")";
	}

	query += wheres;
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

MstKapalCabangBktKepil.updateById = async(id, mstkapalcabangbktkepil, result, user_id) => {

	var arr = ["NO_BKT_KEPIL", "TGL_FORM_BKT_KEPIL", "NO_UKK", "KD_PPKB", "KD_KADE", "KD_MST_KEPIL", "KD_FAS", "TGL_JAM_BKT_KEPIL", "TGL_JAM_ENTRY", "JAM_TOLAK", "JAM_TIBA", "USERID_BKT_KEPIL", "PPKB_KE", "BIAYA_KEPIL", "KD_MORING", "KOREKSI_KE"];
	var str = f.getValueUpdate(mstkapalcabangbktkepil, id, arr);
	var id_activity_log = await f.getid("activity_log");
	objek.koneksi = id;
	objek.action = mstkapalcabangbktkepil.approval_status_id;
	objek.user_id = user_id;
	const hval = await f.headerValue(objek, id_activity_log);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);
	await f.query("UPDATE \"mst_kapal_cabang_bkt_kepil\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...mstkapalcabangbktkepil });
};

MstKapalCabangBktKepil.remove = (id, result) => {
	f.query("DELETE FROM \"mst_kapal_cabang_bkt_kepil\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = MstKapalCabangBktKepil;


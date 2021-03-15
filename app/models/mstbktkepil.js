const f = require('../controllers/function');
var objek = new Object();

// constructor
const MstBktKepil = function (mstbktkepil) {
    this.NO_BKT_KEPIL = mstbktkepil.NO_BKT_KEPIL;
    this.TGL_FORM_BKT_KEPIL = mstbktkepil.TGL_FORM_BKT_KEPIL;
    this.NO_UKK = mstbktkepil.NO_UKK;
    this.KD_PPKB = mstbktkepil.KD_PPKB;
    this.KD_KADE = mstbktkepil.KD_KADE;
    this.KD_MST_KEPIL = mstbktkepil.KD_MST_KEPIL;
    this.KD_FAS = mstbktkepil.KD_FAS;
    this.TGL_JAM_BKT_KEPIL = mstbktkepil.TGL_JAM_BKT_KEPIL;
    this.TGL_JAM_ENTRY = mstbktkepil.TGL_JAM_ENTRY;
    this.JAM_TOLAK = mstbktkepil.JAM_TOLAK;
    this.JAM_TIBA = mstbktkepil.JAM_TIBA;
    this.USERID_BKT_KEPIL = mstbktkepil.USERID_BKT_KEPIL;
    this.PPKB_KE = mstbktkepil.PPKB_KE;
    this.BIAYA_KEPIL = mstbktkepil.BIAYA_KEPIL;
    this.KD_MORING = mstbktkepil.KD_MORING;
    this.KOREKSI_KE = mstbktkepil.KOREKSI_KE;
    this.PPKB_KE_ORIGIN = mstbktkepil.PPKB_KE_ORIGIN;
    this.PPKB_KE_ORIGIN_AKHIR = mstbktkepil.PPKB_KE_ORIGIN_AKHIR;
};

MstBktKepil.create = async(newMstBktKepil, result, cabang_id, user_id) => {
		var id = await f.getid("mst_bkt_kepil");
		const hv = await f.headerValue(newMstBktKepil, id);
		var queryText = "INSERT INTO \"mst_bkt_kepil\" " + hv + " RETURN \"id\" INTO :id";
		const exec = f.query(queryText, 1);
		delete newMstBktKepil.id;
		const res = await exec;

		result(null, { id: id, ...newMstBktKepil });
};

MstBktKepil.findById = async (id, result) => {
	var queryText = "SELECT a.*  FROM \"mst_bkt_kepil\" a   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

MstBktKepil.getAll = async (param, result, cabang_id) => {
    var wheres = f.getParam(param, "mst_bkt_kepil");
    var query = "SELECT a.*  FROM \"mst_bkt_kepil\" a ";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"NO_BKT_KEPIL\" LIKE '%" + param.q + "%' OR a.\"TGL_FORM_BKT_KEPIL\" LIKE '%" + param.q + "%' OR a.\"NO_UKK\" LIKE '%" + param.q + "%' OR a.\"KD_PPKB\" LIKE '%" + param.q + "%' OR a.\"KD_KADE\" LIKE '%" + param.q + "%' OR a.\"KD_MST_KEPIL\" LIKE '%" + param.q + "%' OR a.\"KD_FAS\" LIKE '%" + param.q + "%' OR a.\"TGL_JAM_BKT_KEPIL\" LIKE '%" + param.q + "%' OR a.\"TGL_JAM_ENTRY\" LIKE '%" + param.q + "%' OR a.\"JAM_TOLAK\" LIKE '%" + param.q + "%' OR a.\"JAM_TIBA\" LIKE '%" + param.q + "%' OR a.\"USERID_BKT_KEPIL\" LIKE '%" + param.q + "%' OR a.\"PPKB_KE\" LIKE '%" + param.q + "%' OR a.\"BIAYA_KEPIL\" LIKE '%" + param.q + "%' OR a.\"KD_MORING\" LIKE '%" + param.q + "%' OR a.\"KOREKSI_KE\" LIKE '%" + param.q + "%' OR a.\"PPKB_KE_ORIGIN\" LIKE '%" + param.q + "%' OR a.\"PPKB_KE_ORIGIN_AKHIR\" LIKE '%" + param.q + "%'";	
		wheres += ")";
	}

	query += wheres;
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

MstBktKepil.updateById = async(id, mstbktkepil, result, user_id) => {

	var arr = ["NO_BKT_KEPIL", "TGL_FORM_BKT_KEPIL", "NO_UKK", "KD_PPKB", "KD_KADE", "KD_MST_KEPIL", "KD_FAS", "TGL_JAM_BKT_KEPIL", "TGL_JAM_ENTRY", "JAM_TOLAK", "JAM_TIBA", "USERID_BKT_KEPIL", "PPKB_KE", "BIAYA_KEPIL", "KD_MORING", "KOREKSI_KE", "PPKB_KE_ORIGIN", "PPKB_KE_ORIGIN_AKHIR"];
	var str = f.getValueUpdate(mstbktkepil, id, arr);
	var id = await f.getid("activity_log");
	objek.koneksi = id;
	objek.action = "2";
	objek.user_id = user_id;
	const hval = await f.headerValue(objek, id);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);
	f.query("UPDATE \"mst_bkt_kepil\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...mstbktkepil });
};

MstBktKepil.remove = (id, result) => {
	f.query("DELETE FROM \"mst_bkt_kepil\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = MstBktKepil;


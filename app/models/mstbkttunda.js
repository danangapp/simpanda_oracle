const f = require('../controllers/function');
var objek = new Object();

// constructor
const MstBktTunda = function (mstbkttunda) {
    this.NO_BKT_TUNDA = mstbkttunda.NO_BKT_TUNDA;
    this.TGL_FORM_BKT_TUNDA = mstbkttunda.TGL_FORM_BKT_TUNDA;
    this.NO_UKK = mstbkttunda.NO_UKK;
    this.KD_PPKB = mstbkttunda.KD_PPKB;
    this.TUNDA_DARI = mstbkttunda.TUNDA_DARI;
    this.TUNDA_KE = mstbkttunda.TUNDA_KE;
    this.TGL_JAM_ENTRY = mstbkttunda.TGL_JAM_ENTRY;
    this.USERID_BKT_TUNDA = mstbkttunda.USERID_BKT_TUNDA;
    this.PPKB_KE = mstbkttunda.PPKB_KE;
    this.BIAYA_TUNDA = mstbkttunda.BIAYA_TUNDA;
    this.TGL_JAM_MTUNDA = mstbkttunda.TGL_JAM_MTUNDA;
    this.TGL_JAM_STUNDA = mstbkttunda.TGL_JAM_STUNDA;
    this.NO_BKT_PANDU = mstbkttunda.NO_BKT_PANDU;
    this.KD_FAS_1 = mstbkttunda.KD_FAS_1;
    this.KD_FAS_2 = mstbkttunda.KD_FAS_2;
    this.KD_FAS_3 = mstbkttunda.KD_FAS_3;
    this.KD_KAPAL_1 = mstbkttunda.KD_KAPAL_1;
    this.KD_KAPAL_2 = mstbkttunda.KD_KAPAL_2;
    this.KD_KAPAL_3 = mstbkttunda.KD_KAPAL_3;
    this.TGL_JAM_TIBA_KPL1 = mstbkttunda.TGL_JAM_TIBA_KPL1;
    this.TGL_JAM_TIBA_KPL2 = mstbkttunda.TGL_JAM_TIBA_KPL2;
    this.TGL_JAM_TIBA_KPL3 = mstbkttunda.TGL_JAM_TIBA_KPL3;
    this.TGL_JAM_BRNGKT_KPL1 = mstbkttunda.TGL_JAM_BRNGKT_KPL1;
    this.TGL_JAM_BRNGKT_KPL2 = mstbkttunda.TGL_JAM_BRNGKT_KPL2;
    this.TGL_JAM_BRNGKT_KPL3 = mstbkttunda.TGL_JAM_BRNGKT_KPL3;
    this.KOREKSI_KE = mstbkttunda.KOREKSI_KE;
    this.PPKB_KE_ORIGIN = mstbkttunda.PPKB_KE_ORIGIN;
    this.PPKB_KE_ORIGIN_AKHIR = mstbkttunda.PPKB_KE_ORIGIN_AKHIR;
    this.KD_KAPAL_4 = mstbkttunda.KD_KAPAL_4;
    this.KD_KAPAL_5 = mstbkttunda.KD_KAPAL_5;
    this.KD_KAPAL_6 = mstbkttunda.KD_KAPAL_6;
    this.TGL_JAM_TIBA_KPL4 = mstbkttunda.TGL_JAM_TIBA_KPL4;
    this.TGL_JAM_TIBA_KPL5 = mstbkttunda.TGL_JAM_TIBA_KPL5;
    this.TGL_JAM_TIBA_KPL6 = mstbkttunda.TGL_JAM_TIBA_KPL6;
    this.TGL_JAM_BRNGKT_KPL4 = mstbkttunda.TGL_JAM_BRNGKT_KPL4;
    this.TGL_JAM_BRNGKT_KPL5 = mstbkttunda.TGL_JAM_BRNGKT_KPL5;
    this.TGL_JAM_BRNGKT_KPL6 = mstbkttunda.TGL_JAM_BRNGKT_KPL6;
    this.KD_FAS_4 = mstbkttunda.KD_FAS_4;
    this.KD_FAS_5 = mstbkttunda.KD_FAS_5;
    this.KD_FAS_6 = mstbkttunda.KD_FAS_6;
};

MstBktTunda.create = async(newMstBktTunda, result, cabang_id, user_id) => {
	var id = await f.getid("mst_bkt_tunda");
	const hv = await f.headerValue(newMstBktTunda, id);
	var queryText = "INSERT INTO \"mst_bkt_tunda\" " + hv + " RETURN \"id\" INTO :id";
	const exec = f.query(queryText, 1);
	delete newMstBktTunda.id;
	const res = await exec;

	result(null, { id: id, ...newMstBktTunda });
};

MstBktTunda.findById = async (id, result) => {
	var queryText = "SELECT a.*  FROM \"mst_bkt_tunda\" a   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

MstBktTunda.getAll = async (param, result, cabang_id) => {
    var wheres = f.getParam(param, "mst_bkt_tunda");
    var query = "SELECT a.*  FROM \"mst_bkt_tunda\" a ";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"NO_BKT_TUNDA\" LIKE '%" + param.q + "%' OR a.\"TGL_FORM_BKT_TUNDA\" LIKE '%" + param.q + "%' OR a.\"NO_UKK\" LIKE '%" + param.q + "%' OR a.\"KD_PPKB\" LIKE '%" + param.q + "%' OR a.\"TUNDA_DARI\" LIKE '%" + param.q + "%' OR a.\"TUNDA_KE\" LIKE '%" + param.q + "%' OR a.\"TGL_JAM_ENTRY\" LIKE '%" + param.q + "%' OR a.\"USERID_BKT_TUNDA\" LIKE '%" + param.q + "%' OR a.\"PPKB_KE\" LIKE '%" + param.q + "%' OR a.\"BIAYA_TUNDA\" LIKE '%" + param.q + "%' OR a.\"TGL_JAM_MTUNDA\" LIKE '%" + param.q + "%' OR a.\"TGL_JAM_STUNDA\" LIKE '%" + param.q + "%' OR a.\"NO_BKT_PANDU\" LIKE '%" + param.q + "%' OR a.\"KD_FAS_1\" LIKE '%" + param.q + "%' OR a.\"KD_FAS_2\" LIKE '%" + param.q + "%' OR a.\"KD_FAS_3\" LIKE '%" + param.q + "%' OR a.\"KD_KAPAL_1\" LIKE '%" + param.q + "%' OR a.\"KD_KAPAL_2\" LIKE '%" + param.q + "%' OR a.\"KD_KAPAL_3\" LIKE '%" + param.q + "%' OR a.\"TGL_JAM_TIBA_KPL1\" LIKE '%" + param.q + "%' OR a.\"TGL_JAM_TIBA_KPL2\" LIKE '%" + param.q + "%' OR a.\"TGL_JAM_TIBA_KPL3\" LIKE '%" + param.q + "%' OR a.\"TGL_JAM_BRNGKT_KPL1\" LIKE '%" + param.q + "%' OR a.\"TGL_JAM_BRNGKT_KPL2\" LIKE '%" + param.q + "%' OR a.\"TGL_JAM_BRNGKT_KPL3\" LIKE '%" + param.q + "%' OR a.\"KOREKSI_KE\" LIKE '%" + param.q + "%' OR a.\"PPKB_KE_ORIGIN\" LIKE '%" + param.q + "%' OR a.\"PPKB_KE_ORIGIN_AKHIR\" LIKE '%" + param.q + "%' OR a.\"KD_KAPAL_4\" LIKE '%" + param.q + "%' OR a.\"KD_KAPAL_5\" LIKE '%" + param.q + "%' OR a.\"KD_KAPAL_6\" LIKE '%" + param.q + "%' OR a.\"TGL_JAM_TIBA_KPL4\" LIKE '%" + param.q + "%' OR a.\"TGL_JAM_TIBA_KPL5\" LIKE '%" + param.q + "%' OR a.\"TGL_JAM_TIBA_KPL6\" LIKE '%" + param.q + "%' OR a.\"TGL_JAM_BRNGKT_KPL4\" LIKE '%" + param.q + "%' OR a.\"TGL_JAM_BRNGKT_KPL5\" LIKE '%" + param.q + "%' OR a.\"TGL_JAM_BRNGKT_KPL6\" LIKE '%" + param.q + "%' OR a.\"KD_FAS_4\" LIKE '%" + param.q + "%' OR a.\"KD_FAS_5\" LIKE '%" + param.q + "%' OR a.\"KD_FAS_6\" LIKE '%" + param.q + "%'";	
		wheres += ")";
	}

	query += wheres;
	query += "ORDER BY a.\"id\" DESC";
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

MstBktTunda.updateById = async(id, mstbkttunda, result, user_id) => {

	var arr = ["NO_BKT_TUNDA", "TGL_FORM_BKT_TUNDA", "NO_UKK", "KD_PPKB", "TUNDA_DARI", "TUNDA_KE", "TGL_JAM_ENTRY", "USERID_BKT_TUNDA", "PPKB_KE", "BIAYA_TUNDA", "TGL_JAM_MTUNDA", "TGL_JAM_STUNDA", "NO_BKT_PANDU", "KD_FAS_1", "KD_FAS_2", "KD_FAS_3", "KD_KAPAL_1", "KD_KAPAL_2", "KD_KAPAL_3", "TGL_JAM_TIBA_KPL1", "TGL_JAM_TIBA_KPL2", "TGL_JAM_TIBA_KPL3", "TGL_JAM_BRNGKT_KPL1", "TGL_JAM_BRNGKT_KPL2", "TGL_JAM_BRNGKT_KPL3", "KOREKSI_KE", "PPKB_KE_ORIGIN", "PPKB_KE_ORIGIN_AKHIR", "KD_KAPAL_4", "KD_KAPAL_5", "KD_KAPAL_6", "TGL_JAM_TIBA_KPL4", "TGL_JAM_TIBA_KPL5", "TGL_JAM_TIBA_KPL6", "TGL_JAM_BRNGKT_KPL4", "TGL_JAM_BRNGKT_KPL5", "TGL_JAM_BRNGKT_KPL6", "KD_FAS_4", "KD_FAS_5", "KD_FAS_6"];
	var str = f.getValueUpdate(mstbkttunda, id, arr);
	var id_activity_log = await f.getid("activity_log");
	objek.koneksi = id;
	objek.action = mstbkttunda.approval_status_id;
	objek.item = "mstbkttunda";
	objek.remark = mstbkttunda.activityLog ? mstbkttunda.activityLog.remark : '';
	objek.user_id = user_id;
	const hval = await f.headerValue(objek, id_activity_log);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);
	await f.query("UPDATE \"mst_bkt_tunda\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...mstbkttunda });
};

MstBktTunda.remove = (id, result) => {
	f.query("DELETE FROM \"mst_bkt_tunda\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = MstBktTunda;


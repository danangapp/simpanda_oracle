const f = require('../controllers/function');
var objek = new Object();

// constructor
const MstKapalCabangBktTunda = function (mstkapalcabangbkttunda) {
    this.NO_BKT_TUNDA = mstkapalcabangbkttunda.NO_BKT_TUNDA;
    this.TGL_FORM_BKT_TUNDA = mstkapalcabangbkttunda.TGL_FORM_BKT_TUNDA;
    this.NO_UKK = mstkapalcabangbkttunda.NO_UKK;
    this.KD_PPKB = mstkapalcabangbkttunda.KD_PPKB;
    this.TUNDA_DARI = mstkapalcabangbkttunda.TUNDA_DARI;
    this.TUNDA_KE = mstkapalcabangbkttunda.TUNDA_KE;
    this.TGL_JAM_ENTRY = mstkapalcabangbkttunda.TGL_JAM_ENTRY;
    this.USERID_BKT_TUNDA = mstkapalcabangbkttunda.USERID_BKT_TUNDA;
    this.PPKB_KE = mstkapalcabangbkttunda.PPKB_KE;
    this.BIAYA_TUNDA = mstkapalcabangbkttunda.BIAYA_TUNDA;
    this.TGL_JAM_MTUNDA = mstkapalcabangbkttunda.TGL_JAM_MTUNDA;
    this.TGL_JAM_STUNDA = mstkapalcabangbkttunda.TGL_JAM_STUNDA;
    this.NO_BKT_PANDU = mstkapalcabangbkttunda.NO_BKT_PANDU;
    this.KD_FAS_1 = mstkapalcabangbkttunda.KD_FAS_1;
    this.KD_FAS_2 = mstkapalcabangbkttunda.KD_FAS_2;
    this.KD_FAS_3 = mstkapalcabangbkttunda.KD_FAS_3;
    this.KD_KAPAL_1 = mstkapalcabangbkttunda.KD_KAPAL_1;
    this.KD_KAPAL_2 = mstkapalcabangbkttunda.KD_KAPAL_2;
    this.KD_KAPAL_3 = mstkapalcabangbkttunda.KD_KAPAL_3;
    this.TGL_JAM_TIBA_KPL1 = mstkapalcabangbkttunda.TGL_JAM_TIBA_KPL1;
    this.TGL_JAM_TIBA_KPL2 = mstkapalcabangbkttunda.TGL_JAM_TIBA_KPL2;
    this.TGL_JAM_TIBA_KPL3 = mstkapalcabangbkttunda.TGL_JAM_TIBA_KPL3;
    this.TGL_JAM_BRNGKT_KPL1 = mstkapalcabangbkttunda.TGL_JAM_BRNGKT_KPL1;
    this.TGL_JAM_BRNGKT_KPL2 = mstkapalcabangbkttunda.TGL_JAM_BRNGKT_KPL2;
    this.TGL_JAM_BRNGKT_KPL3 = mstkapalcabangbkttunda.TGL_JAM_BRNGKT_KPL3;
    this.KOREKSI_KE = mstkapalcabangbkttunda.KOREKSI_KE;
    this.KD_KAPAL_4 = mstkapalcabangbkttunda.KD_KAPAL_4;
    this.TGL_JAM_TIBA_KPL4 = mstkapalcabangbkttunda.TGL_JAM_TIBA_KPL4;
    this.TGL_JAM_BRNGKT_KPL4 = mstkapalcabangbkttunda.TGL_JAM_BRNGKT_KPL4;
    this.TUNDA_X = mstkapalcabangbkttunda.TUNDA_X;
    this.EMERGENCY = mstkapalcabangbkttunda.EMERGENCY;
    this.EMERGENCY_KPL1 = mstkapalcabangbkttunda.EMERGENCY_KPL1;
    this.EMERGENCY_KPL2 = mstkapalcabangbkttunda.EMERGENCY_KPL2;
    this.EMERGENCY_KPL3 = mstkapalcabangbkttunda.EMERGENCY_KPL3;
    this.EMERGENCY_KPL4 = mstkapalcabangbkttunda.EMERGENCY_KPL4;
    this.BERMUATAN = mstkapalcabangbkttunda.BERMUATAN;
    this.FLAG_LS = mstkapalcabangbkttunda.FLAG_LS;
    this.EMERGENCY_KPL6 = mstkapalcabangbkttunda.EMERGENCY_KPL6;
    this.KD_KAPAL_5 = mstkapalcabangbkttunda.KD_KAPAL_5;
    this.TGL_JAM_TIBA_KPL5 = mstkapalcabangbkttunda.TGL_JAM_TIBA_KPL5;
    this.TGL_JAM_BRNGKT_KPL5 = mstkapalcabangbkttunda.TGL_JAM_BRNGKT_KPL5;
    this.EMERGENCY_KPL5 = mstkapalcabangbkttunda.EMERGENCY_KPL5;
    this.KD_KAPAL_6 = mstkapalcabangbkttunda.KD_KAPAL_6;
    this.TGL_JAM_TIBA_KPL6 = mstkapalcabangbkttunda.TGL_JAM_TIBA_KPL6;
    this.TGL_JAM_BRNGKT_KPL6 = mstkapalcabangbkttunda.TGL_JAM_BRNGKT_KPL6;
    this.TGL_JAM_MOVE_KPL1 = mstkapalcabangbkttunda.TGL_JAM_MOVE_KPL1;
    this.TGL_JAM_MOVE_KPL2 = mstkapalcabangbkttunda.TGL_JAM_MOVE_KPL2;
    this.TGL_JAM_MOVE_KPL3 = mstkapalcabangbkttunda.TGL_JAM_MOVE_KPL3;
    this.TGL_JAM_MOVE_KPL4 = mstkapalcabangbkttunda.TGL_JAM_MOVE_KPL4;
    this.TGL_JAM_MOVE_KPL5 = mstkapalcabangbkttunda.TGL_JAM_MOVE_KPL5;
    this.TGL_JAM_MOVE_KPL6 = mstkapalcabangbkttunda.TGL_JAM_MOVE_KPL6;
    this.TGL_JAM_START_KPL1 = mstkapalcabangbkttunda.TGL_JAM_START_KPL1;
    this.TGL_JAM_START_KPL2 = mstkapalcabangbkttunda.TGL_JAM_START_KPL2;
    this.TGL_JAM_START_KPL3 = mstkapalcabangbkttunda.TGL_JAM_START_KPL3;
    this.TGL_JAM_START_KPL4 = mstkapalcabangbkttunda.TGL_JAM_START_KPL4;
    this.TGL_JAM_START_KPL5 = mstkapalcabangbkttunda.TGL_JAM_START_KPL5;
    this.TGL_JAM_START_KPL6 = mstkapalcabangbkttunda.TGL_JAM_START_KPL6;
    this.CUSTOM13 = mstkapalcabangbkttunda.CUSTOM13;
    this.CUSTOM14 = mstkapalcabangbkttunda.CUSTOM14;
    this.CUSTOM15 = mstkapalcabangbkttunda.CUSTOM15;
    this.CUSTOM16 = mstkapalcabangbkttunda.CUSTOM16;
    this.CUSTOM17 = mstkapalcabangbkttunda.CUSTOM17;
    this.CUSTOM18 = mstkapalcabangbkttunda.CUSTOM18;
};

MstKapalCabangBktTunda.create = async(newMstKapalCabangBktTunda, result, cabang_id, user_id) => {
		var id = await f.getid("mst_kapal_cabang_bkt_tunda");
		const hv = await f.headerValue(newMstKapalCabangBktTunda, id);
		var queryText = "INSERT INTO \"mst_kapal_cabang_bkt_tunda\" " + hv + " RETURN \"id\" INTO :id";
		const exec = f.query(queryText, 1);
		delete newMstKapalCabangBktTunda.id;
		const res = await exec;

		result(null, { id: id, ...newMstKapalCabangBktTunda });
};

MstKapalCabangBktTunda.findById = async (id, result) => {
	var queryText = "SELECT a.*  FROM \"mst_kapal_cabang_bkt_tunda\" a   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

MstKapalCabangBktTunda.getAll = async (param, result, cabang_id) => {
    var wheres = f.getParam(param, "mst_kapal_cabang_bkt_tunda");
    var query = "SELECT a.*  FROM \"mst_kapal_cabang_bkt_tunda\" a ";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"NO_BKT_TUNDA\" LIKE '%" + param.q + "%' OR a.\"TGL_FORM_BKT_TUNDA\" LIKE '%" + param.q + "%' OR a.\"NO_UKK\" LIKE '%" + param.q + "%' OR a.\"KD_PPKB\" LIKE '%" + param.q + "%' OR a.\"TUNDA_DARI\" LIKE '%" + param.q + "%' OR a.\"TUNDA_KE\" LIKE '%" + param.q + "%' OR a.\"TGL_JAM_ENTRY\" LIKE '%" + param.q + "%' OR a.\"USERID_BKT_TUNDA\" LIKE '%" + param.q + "%' OR a.\"PPKB_KE\" LIKE '%" + param.q + "%' OR a.\"BIAYA_TUNDA\" LIKE '%" + param.q + "%' OR a.\"TGL_JAM_MTUNDA\" LIKE '%" + param.q + "%' OR a.\"TGL_JAM_STUNDA\" LIKE '%" + param.q + "%' OR a.\"NO_BKT_PANDU\" LIKE '%" + param.q + "%' OR a.\"KD_FAS_1\" LIKE '%" + param.q + "%' OR a.\"KD_FAS_2\" LIKE '%" + param.q + "%' OR a.\"KD_FAS_3\" LIKE '%" + param.q + "%' OR a.\"KD_KAPAL_1\" LIKE '%" + param.q + "%' OR a.\"KD_KAPAL_2\" LIKE '%" + param.q + "%' OR a.\"KD_KAPAL_3\" LIKE '%" + param.q + "%' OR a.\"TGL_JAM_TIBA_KPL1\" LIKE '%" + param.q + "%' OR a.\"TGL_JAM_TIBA_KPL2\" LIKE '%" + param.q + "%' OR a.\"TGL_JAM_TIBA_KPL3\" LIKE '%" + param.q + "%' OR a.\"TGL_JAM_BRNGKT_KPL1\" LIKE '%" + param.q + "%' OR a.\"TGL_JAM_BRNGKT_KPL2\" LIKE '%" + param.q + "%' OR a.\"TGL_JAM_BRNGKT_KPL3\" LIKE '%" + param.q + "%' OR a.\"KOREKSI_KE\" LIKE '%" + param.q + "%' OR a.\"KD_KAPAL_4\" LIKE '%" + param.q + "%' OR a.\"TGL_JAM_TIBA_KPL4\" LIKE '%" + param.q + "%' OR a.\"TGL_JAM_BRNGKT_KPL4\" LIKE '%" + param.q + "%' OR a.\"TUNDA_X\" LIKE '%" + param.q + "%' OR a.\"EMERGENCY\" LIKE '%" + param.q + "%' OR a.\"EMERGENCY_KPL1\" LIKE '%" + param.q + "%' OR a.\"EMERGENCY_KPL2\" LIKE '%" + param.q + "%' OR a.\"EMERGENCY_KPL3\" LIKE '%" + param.q + "%' OR a.\"EMERGENCY_KPL4\" LIKE '%" + param.q + "%' OR a.\"BERMUATAN\" LIKE '%" + param.q + "%' OR a.\"FLAG_LS\" LIKE '%" + param.q + "%' OR a.\"EMERGENCY_KPL6\" LIKE '%" + param.q + "%' OR a.\"KD_KAPAL_5\" LIKE '%" + param.q + "%' OR a.\"TGL_JAM_TIBA_KPL5\" LIKE '%" + param.q + "%' OR a.\"TGL_JAM_BRNGKT_KPL5\" LIKE '%" + param.q + "%' OR a.\"EMERGENCY_KPL5\" LIKE '%" + param.q + "%' OR a.\"KD_KAPAL_6\" LIKE '%" + param.q + "%' OR a.\"TGL_JAM_TIBA_KPL6\" LIKE '%" + param.q + "%' OR a.\"TGL_JAM_BRNGKT_KPL6\" LIKE '%" + param.q + "%' OR a.\"TGL_JAM_MOVE_KPL1\" LIKE '%" + param.q + "%' OR a.\"TGL_JAM_MOVE_KPL2\" LIKE '%" + param.q + "%' OR a.\"TGL_JAM_MOVE_KPL3\" LIKE '%" + param.q + "%' OR a.\"TGL_JAM_MOVE_KPL4\" LIKE '%" + param.q + "%' OR a.\"TGL_JAM_MOVE_KPL5\" LIKE '%" + param.q + "%' OR a.\"TGL_JAM_MOVE_KPL6\" LIKE '%" + param.q + "%' OR a.\"TGL_JAM_START_KPL1\" LIKE '%" + param.q + "%' OR a.\"TGL_JAM_START_KPL2\" LIKE '%" + param.q + "%' OR a.\"TGL_JAM_START_KPL3\" LIKE '%" + param.q + "%' OR a.\"TGL_JAM_START_KPL4\" LIKE '%" + param.q + "%' OR a.\"TGL_JAM_START_KPL5\" LIKE '%" + param.q + "%' OR a.\"TGL_JAM_START_KPL6\" LIKE '%" + param.q + "%' OR a.\"CUSTOM13\" LIKE '%" + param.q + "%' OR a.\"CUSTOM14\" LIKE '%" + param.q + "%' OR a.\"CUSTOM15\" LIKE '%" + param.q + "%' OR a.\"CUSTOM16\" LIKE '%" + param.q + "%' OR a.\"CUSTOM17\" LIKE '%" + param.q + "%' OR a.\"CUSTOM18\" LIKE '%" + param.q + "%'";	
		wheres += ")";
	}

	query += wheres;
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

MstKapalCabangBktTunda.updateById = async(id, mstkapalcabangbkttunda, result, user_id) => {

	var arr = ["NO_BKT_TUNDA", "TGL_FORM_BKT_TUNDA", "NO_UKK", "KD_PPKB", "TUNDA_DARI", "TUNDA_KE", "TGL_JAM_ENTRY", "USERID_BKT_TUNDA", "PPKB_KE", "BIAYA_TUNDA", "TGL_JAM_MTUNDA", "TGL_JAM_STUNDA", "NO_BKT_PANDU", "KD_FAS_1", "KD_FAS_2", "KD_FAS_3", "KD_KAPAL_1", "KD_KAPAL_2", "KD_KAPAL_3", "TGL_JAM_TIBA_KPL1", "TGL_JAM_TIBA_KPL2", "TGL_JAM_TIBA_KPL3", "TGL_JAM_BRNGKT_KPL1", "TGL_JAM_BRNGKT_KPL2", "TGL_JAM_BRNGKT_KPL3", "KOREKSI_KE", "KD_KAPAL_4", "TGL_JAM_TIBA_KPL4", "TGL_JAM_BRNGKT_KPL4", "TUNDA_X", "EMERGENCY", "EMERGENCY_KPL1", "EMERGENCY_KPL2", "EMERGENCY_KPL3", "EMERGENCY_KPL4", "BERMUATAN", "FLAG_LS", "EMERGENCY_KPL6", "KD_KAPAL_5", "TGL_JAM_TIBA_KPL5", "TGL_JAM_BRNGKT_KPL5", "EMERGENCY_KPL5", "KD_KAPAL_6", "TGL_JAM_TIBA_KPL6", "TGL_JAM_BRNGKT_KPL6", "TGL_JAM_MOVE_KPL1", "TGL_JAM_MOVE_KPL2", "TGL_JAM_MOVE_KPL3", "TGL_JAM_MOVE_KPL4", "TGL_JAM_MOVE_KPL5", "TGL_JAM_MOVE_KPL6", "TGL_JAM_START_KPL1", "TGL_JAM_START_KPL2", "TGL_JAM_START_KPL3", "TGL_JAM_START_KPL4", "TGL_JAM_START_KPL5", "TGL_JAM_START_KPL6", "CUSTOM13", "CUSTOM14", "CUSTOM15", "CUSTOM16", "CUSTOM17", "CUSTOM18"];
	var str = f.getValueUpdate(mstkapalcabangbkttunda, id, arr);
	var id = await f.getid("activity_log");
	objek.koneksi = id;
	objek.action = "2";
	objek.user_id = user_id;
	const hval = await f.headerValue(objek, id);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);
	f.query("UPDATE \"mst_kapal_cabang_bkt_tunda\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...mstkapalcabangbkttunda });
};

MstKapalCabangBktTunda.remove = (id, result) => {
	f.query("DELETE FROM \"mst_kapal_cabang_bkt_tunda\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = MstKapalCabangBktTunda;


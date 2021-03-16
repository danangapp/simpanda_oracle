const f = require('../controllers/function');
var objek = new Object();

// constructor
const MstBktPandu = function (mstbktpandu) {
    this.NO_BKT_PANDU = mstbktpandu.NO_BKT_PANDU;
    this.TGL_FORM_BKT_PANDU = mstbktpandu.TGL_FORM_BKT_PANDU;
    this.NO_UKK = mstbktpandu.NO_UKK;
    this.KD_PERS_PANDU = mstbktpandu.KD_PERS_PANDU;
    this.KD_FAS = mstbktpandu.KD_FAS;
    this.KD_PPKB = mstbktpandu.KD_PPKB;
    this.KD_NM_NAHKODA = mstbktpandu.KD_NM_NAHKODA;
    this.PANDU_DARI = mstbktpandu.PANDU_DARI;
    this.PANDU_KE = mstbktpandu.PANDU_KE;
    this.TGL_MPANDU = mstbktpandu.TGL_MPANDU;
    this.TGL_SPANDU = mstbktpandu.TGL_SPANDU;
    this.KD_GERAKAN = mstbktpandu.KD_GERAKAN;
    this.KET_PANDU = mstbktpandu.KET_PANDU;
    this.KD_PERAIRAN = mstbktpandu.KD_PERAIRAN;
    this.TGL_JAM_ENTRY = mstbktpandu.TGL_JAM_ENTRY;
    this.JAM_PANDU_NAIK = mstbktpandu.JAM_PANDU_NAIK;
    this.JAM_KAPAL_GERAK = mstbktpandu.JAM_KAPAL_GERAK;
    this.JAM_SPANDU = mstbktpandu.JAM_SPANDU;
    this.JAM_PANDU_TURUN = mstbktpandu.JAM_PANDU_TURUN;
    this.USERID_BKT_PANDU = mstbktpandu.USERID_BKT_PANDU;
    this.PPKB_KE = mstbktpandu.PPKB_KE;
    this.BIAYA_PANDU = mstbktpandu.BIAYA_PANDU;
    this.NO_UKK1 = mstbktpandu.NO_UKK1;
    this.NO_UKK2 = mstbktpandu.NO_UKK2;
    this.NO_UKK3 = mstbktpandu.NO_UKK3;
    this.DRAFT_DEPAN = mstbktpandu.DRAFT_DEPAN;
    this.DRAFT_BELAKANG = mstbktpandu.DRAFT_BELAKANG;
    this.NO_UKK_TK1 = mstbktpandu.NO_UKK_TK1;
    this.NO_UKK_TK2 = mstbktpandu.NO_UKK_TK2;
    this.PPKB_KE_ORIGIN = mstbktpandu.PPKB_KE_ORIGIN;
    this.KOREKSI_KE = mstbktpandu.KOREKSI_KE;
    this.PPKB_KE_ORIGIN_AKHIR = mstbktpandu.PPKB_KE_ORIGIN_AKHIR;
    this.NO_BA = mstbktpandu.NO_BA;
    this.KETERANGAN_BA = mstbktpandu.KETERANGAN_BA;
    this.TGL_BA = mstbktpandu.TGL_BA;
    this.KET_PANDU_KHUSUS = mstbktpandu.KET_PANDU_KHUSUS;
    this.KD_FAS_JEMPUT = mstbktpandu.KD_FAS_JEMPUT;
};

MstBktPandu.create = async(newMstBktPandu, result, cabang_id, user_id) => {
		var id = await f.getid("mst_bkt_pandu");
		const hv = await f.headerValue(newMstBktPandu, id);
		var queryText = "INSERT INTO \"mst_bkt_pandu\" " + hv + " RETURN \"id\" INTO :id";
		const exec = f.query(queryText, 1);
		delete newMstBktPandu.id;
		const res = await exec;

		result(null, { id: id, ...newMstBktPandu });
};

MstBktPandu.findById = async (id, result) => {
	var queryText = "SELECT a.*  FROM \"mst_bkt_pandu\" a   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

MstBktPandu.getAll = async (param, result, cabang_id) => {
    var wheres = f.getParam(param, "mst_bkt_pandu");
    var query = "SELECT a.*  FROM \"mst_bkt_pandu\" a ";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"NO_BKT_PANDU\" LIKE '%" + param.q + "%' OR a.\"TGL_FORM_BKT_PANDU\" LIKE '%" + param.q + "%' OR a.\"NO_UKK\" LIKE '%" + param.q + "%' OR a.\"KD_PERS_PANDU\" LIKE '%" + param.q + "%' OR a.\"KD_FAS\" LIKE '%" + param.q + "%' OR a.\"KD_PPKB\" LIKE '%" + param.q + "%' OR a.\"KD_NM_NAHKODA\" LIKE '%" + param.q + "%' OR a.\"PANDU_DARI\" LIKE '%" + param.q + "%' OR a.\"PANDU_KE\" LIKE '%" + param.q + "%' OR a.\"TGL_MPANDU\" LIKE '%" + param.q + "%' OR a.\"TGL_SPANDU\" LIKE '%" + param.q + "%' OR a.\"KD_GERAKAN\" LIKE '%" + param.q + "%' OR a.\"KET_PANDU\" LIKE '%" + param.q + "%' OR a.\"KD_PERAIRAN\" LIKE '%" + param.q + "%' OR a.\"TGL_JAM_ENTRY\" LIKE '%" + param.q + "%' OR a.\"JAM_PANDU_NAIK\" LIKE '%" + param.q + "%' OR a.\"JAM_KAPAL_GERAK\" LIKE '%" + param.q + "%' OR a.\"JAM_SPANDU\" LIKE '%" + param.q + "%' OR a.\"JAM_PANDU_TURUN\" LIKE '%" + param.q + "%' OR a.\"USERID_BKT_PANDU\" LIKE '%" + param.q + "%' OR a.\"PPKB_KE\" LIKE '%" + param.q + "%' OR a.\"BIAYA_PANDU\" LIKE '%" + param.q + "%' OR a.\"NO_UKK1\" LIKE '%" + param.q + "%' OR a.\"NO_UKK2\" LIKE '%" + param.q + "%' OR a.\"NO_UKK3\" LIKE '%" + param.q + "%' OR a.\"DRAFT_DEPAN\" LIKE '%" + param.q + "%' OR a.\"DRAFT_BELAKANG\" LIKE '%" + param.q + "%' OR a.\"NO_UKK_TK1\" LIKE '%" + param.q + "%' OR a.\"NO_UKK_TK2\" LIKE '%" + param.q + "%' OR a.\"PPKB_KE_ORIGIN\" LIKE '%" + param.q + "%' OR a.\"KOREKSI_KE\" LIKE '%" + param.q + "%' OR a.\"PPKB_KE_ORIGIN_AKHIR\" LIKE '%" + param.q + "%' OR a.\"NO_BA\" LIKE '%" + param.q + "%' OR a.\"KETERANGAN_BA\" LIKE '%" + param.q + "%' OR a.\"TGL_BA\" LIKE '%" + param.q + "%' OR a.\"KET_PANDU_KHUSUS\" LIKE '%" + param.q + "%' OR a.\"KD_FAS_JEMPUT\" LIKE '%" + param.q + "%'";	
		wheres += ")";
	}

	query += wheres;
	query += "ORDER BY a.\"id\" DESC";
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

MstBktPandu.updateById = async(id, mstbktpandu, result, user_id) => {

	var arr = ["NO_BKT_PANDU", "TGL_FORM_BKT_PANDU", "NO_UKK", "KD_PERS_PANDU", "KD_FAS", "KD_PPKB", "KD_NM_NAHKODA", "PANDU_DARI", "PANDU_KE", "TGL_MPANDU", "TGL_SPANDU", "KD_GERAKAN", "KET_PANDU", "KD_PERAIRAN", "TGL_JAM_ENTRY", "JAM_PANDU_NAIK", "JAM_KAPAL_GERAK", "JAM_SPANDU", "JAM_PANDU_TURUN", "USERID_BKT_PANDU", "PPKB_KE", "BIAYA_PANDU", "NO_UKK1", "NO_UKK2", "NO_UKK3", "DRAFT_DEPAN", "DRAFT_BELAKANG", "NO_UKK_TK1", "NO_UKK_TK2", "PPKB_KE_ORIGIN", "KOREKSI_KE", "PPKB_KE_ORIGIN_AKHIR", "NO_BA", "KETERANGAN_BA", "TGL_BA", "KET_PANDU_KHUSUS", "KD_FAS_JEMPUT"];
	var str = f.getValueUpdate(mstbktpandu, id, arr);
	var id_activity_log = await f.getid("activity_log");
	objek.koneksi = id;
	objek.action = mstbktpandu.approval_status_id;
	objek.item = "mstbktpandu";
	objek.remark = mstbktpandu.activityLog ? mstbktpandu.activityLog.remark : '';
	objek.user_id = user_id;
	const hval = await f.headerValue(objek, id_activity_log);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);
	await f.query("UPDATE \"mst_bkt_pandu\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...mstbktpandu });
};

MstBktPandu.remove = (id, result) => {
	f.query("DELETE FROM \"mst_bkt_pandu\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = MstBktPandu;


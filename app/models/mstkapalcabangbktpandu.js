const f = require('../controllers/function');
var objek = new Object();

// constructor
const MstKapalCabangBktPandu = function (mstkapalcabangbktpandu) {
    this.NO_BKT_PANDU = mstkapalcabangbktpandu.NO_BKT_PANDU;
    this.TGL_FORM_BKT_PANDU = mstkapalcabangbktpandu.TGL_FORM_BKT_PANDU;
    this.NO_UKK = mstkapalcabangbktpandu.NO_UKK;
    this.KD_PERS_PANDU = mstkapalcabangbktpandu.KD_PERS_PANDU;
    this.KD_FAS = mstkapalcabangbktpandu.KD_FAS;
    this.KD_PPKB = mstkapalcabangbktpandu.KD_PPKB;
    this.KD_NM_NAHKODA = mstkapalcabangbktpandu.KD_NM_NAHKODA;
    this.PANDU_DARI = mstkapalcabangbktpandu.PANDU_DARI;
    this.PANDU_KE = mstkapalcabangbktpandu.PANDU_KE;
    this.TGL_MPANDU = mstkapalcabangbktpandu.TGL_MPANDU;
    this.TGL_SPANDU = mstkapalcabangbktpandu.TGL_SPANDU;
    this.KD_GERAKAN = mstkapalcabangbktpandu.KD_GERAKAN;
    this.KET_PANDU = mstkapalcabangbktpandu.KET_PANDU;
    this.KD_PERAIRAN = mstkapalcabangbktpandu.KD_PERAIRAN;
    this.TGL_JAM_ENTRY = mstkapalcabangbktpandu.TGL_JAM_ENTRY;
    this.JAM_PANDU_NAIK = mstkapalcabangbktpandu.JAM_PANDU_NAIK;
    this.JAM_KAPAL_GERAK = mstkapalcabangbktpandu.JAM_KAPAL_GERAK;
    this.JAM_SPANDU = mstkapalcabangbktpandu.JAM_SPANDU;
    this.JAM_PANDU_TURUN = mstkapalcabangbktpandu.JAM_PANDU_TURUN;
    this.USERID_BKT_PANDU = mstkapalcabangbktpandu.USERID_BKT_PANDU;
    this.PPKB_KE = mstkapalcabangbktpandu.PPKB_KE;
    this.BIAYA_PANDU = mstkapalcabangbktpandu.BIAYA_PANDU;
    this.NO_UKK1 = mstkapalcabangbktpandu.NO_UKK1;
    this.NO_UKK2 = mstkapalcabangbktpandu.NO_UKK2;
    this.NO_UKK3 = mstkapalcabangbktpandu.NO_UKK3;
    this.DRAFT_DEPAN = mstkapalcabangbktpandu.DRAFT_DEPAN;
    this.DRAFT_BELAKANG = mstkapalcabangbktpandu.DRAFT_BELAKANG;
    this.NO_UKK_TK1 = mstkapalcabangbktpandu.NO_UKK_TK1;
    this.NO_UKK_TK2 = mstkapalcabangbktpandu.NO_UKK_TK2;
    this.PPKB_KE_ORIGIN = mstkapalcabangbktpandu.PPKB_KE_ORIGIN;
    this.KOREKSI_KE = mstkapalcabangbktpandu.KOREKSI_KE;
    this.PANDU_X = mstkapalcabangbktpandu.PANDU_X;
    this.CAP_KEAGENAN = mstkapalcabangbktpandu.CAP_KEAGENAN;
    this.NO_BA = mstkapalcabangbktpandu.NO_BA;
    this.KETERANGAN_BA = mstkapalcabangbktpandu.KETERANGAN_BA;
    this.TGL_BA = mstkapalcabangbktpandu.TGL_BA;
    this.BERMUATAN = mstkapalcabangbktpandu.BERMUATAN;
    this.STATUS_WS = mstkapalcabangbktpandu.STATUS_WS;
    this.IS_PAKET = mstkapalcabangbktpandu.IS_PAKET;
    this.JML_LABUH = mstkapalcabangbktpandu.JML_LABUH;
    this.SHIFTING = mstkapalcabangbktpandu.SHIFTING;
};

MstKapalCabangBktPandu.create = async(newMstKapalCabangBktPandu, result) => {
		newMstKapalCabangBktPandu.id = "mst_kapal_cabang_bkt_pandu_seq.nextval"
		const hv = f.headerValue(newMstKapalCabangBktPandu);
		var queryText = "INSERT INTO \"mst_kapal_cabang_bkt_pandu\" " + hv + " RETURN \"id\" INTO :id";
		const exec = f.query(queryText, 1);
		delete newMstKapalCabangBktPandu.id;
		const res = await exec;

		result(null, { id: res.outBinds.id[0], ...newMstKapalCabangBktPandu });
};

MstKapalCabangBktPandu.findById = async (id, result) => {
	var queryText = "SELECT a.*  FROM \"mst_kapal_cabang_bkt_pandu\" a   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

MstKapalCabangBktPandu.getAll = async (param, result) => {
    var wheres = f.getParam(param);
    var query = "SELECT a.*  FROM \"mst_kapal_cabang_bkt_pandu\" a ";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"NO_BKT_PANDU\" LIKE '%" + param.q + "%' OR a.\"TGL_FORM_BKT_PANDU\" LIKE '%" + param.q + "%' OR a.\"NO_UKK\" LIKE '%" + param.q + "%' OR a.\"KD_PERS_PANDU\" LIKE '%" + param.q + "%' OR a.\"KD_FAS\" LIKE '%" + param.q + "%' OR a.\"KD_PPKB\" LIKE '%" + param.q + "%' OR a.\"KD_NM_NAHKODA\" LIKE '%" + param.q + "%' OR a.\"PANDU_DARI\" LIKE '%" + param.q + "%' OR a.\"PANDU_KE\" LIKE '%" + param.q + "%' OR a.\"TGL_MPANDU\" LIKE '%" + param.q + "%' OR a.\"TGL_SPANDU\" LIKE '%" + param.q + "%' OR a.\"KD_GERAKAN\" LIKE '%" + param.q + "%' OR a.\"KET_PANDU\" LIKE '%" + param.q + "%' OR a.\"KD_PERAIRAN\" LIKE '%" + param.q + "%' OR a.\"TGL_JAM_ENTRY\" LIKE '%" + param.q + "%' OR a.\"JAM_PANDU_NAIK\" LIKE '%" + param.q + "%' OR a.\"JAM_KAPAL_GERAK\" LIKE '%" + param.q + "%' OR a.\"JAM_SPANDU\" LIKE '%" + param.q + "%' OR a.\"JAM_PANDU_TURUN\" LIKE '%" + param.q + "%' OR a.\"USERID_BKT_PANDU\" LIKE '%" + param.q + "%' OR a.\"PPKB_KE\" LIKE '%" + param.q + "%' OR a.\"BIAYA_PANDU\" LIKE '%" + param.q + "%' OR a.\"NO_UKK1\" LIKE '%" + param.q + "%' OR a.\"NO_UKK2\" LIKE '%" + param.q + "%' OR a.\"NO_UKK3\" LIKE '%" + param.q + "%' OR a.\"DRAFT_DEPAN\" LIKE '%" + param.q + "%' OR a.\"DRAFT_BELAKANG\" LIKE '%" + param.q + "%' OR a.\"NO_UKK_TK1\" LIKE '%" + param.q + "%' OR a.\"NO_UKK_TK2\" LIKE '%" + param.q + "%' OR a.\"PPKB_KE_ORIGIN\" LIKE '%" + param.q + "%' OR a.\"KOREKSI_KE\" LIKE '%" + param.q + "%' OR a.\"PANDU_X\" LIKE '%" + param.q + "%' OR a.\"CAP_KEAGENAN\" LIKE '%" + param.q + "%' OR a.\"NO_BA\" LIKE '%" + param.q + "%' OR a.\"KETERANGAN_BA\" LIKE '%" + param.q + "%' OR a.\"TGL_BA\" LIKE '%" + param.q + "%' OR a.\"BERMUATAN\" LIKE '%" + param.q + "%' OR a.\"STATUS_WS\" LIKE '%" + param.q + "%' OR a.\"IS_PAKET\" LIKE '%" + param.q + "%' OR a.\"JML_LABUH\" LIKE '%" + param.q + "%' OR a.\"SHIFTING\" LIKE '%" + param.q + "%'";	
		wheres += ")";
	}

	query += wheres;
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

MstKapalCabangBktPandu.updateById = async(id, mstkapalcabangbktpandu, result) => {

	var arr = ["NO_BKT_PANDU", "TGL_FORM_BKT_PANDU", "NO_UKK", "KD_PERS_PANDU", "KD_FAS", "KD_PPKB", "KD_NM_NAHKODA", "PANDU_DARI", "PANDU_KE", "TGL_MPANDU", "TGL_SPANDU", "KD_GERAKAN", "KET_PANDU", "KD_PERAIRAN", "TGL_JAM_ENTRY", "JAM_PANDU_NAIK", "JAM_KAPAL_GERAK", "JAM_SPANDU", "JAM_PANDU_TURUN", "USERID_BKT_PANDU", "PPKB_KE", "BIAYA_PANDU", "NO_UKK1", "NO_UKK2", "NO_UKK3", "DRAFT_DEPAN", "DRAFT_BELAKANG", "NO_UKK_TK1", "NO_UKK_TK2", "PPKB_KE_ORIGIN", "KOREKSI_KE", "PANDU_X", "CAP_KEAGENAN", "NO_BA", "KETERANGAN_BA", "TGL_BA", "BERMUATAN", "STATUS_WS", "IS_PAKET", "JML_LABUH", "SHIFTING"];
	var str = f.getValueUpdate(mstkapalcabangbktpandu, id, arr);
	if (objek.action != null) {
		const hv = f.headerValue(objek);
		f.query("INSERT INTO \"activity_log\" " + hv, 2);
	}
	f.query("UPDATE \"mst_kapal_cabang_bkt_pandu\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...mstkapalcabangbktpandu });
};

MstKapalCabangBktPandu.remove = (id, result) => {
	f.query("DELETE FROM \"mst_kapal_cabang_bkt_pandu\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = MstKapalCabangBktPandu;


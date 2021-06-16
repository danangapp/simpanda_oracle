const f = require('../controllers/function');
var objek = new Object();

// constructor
const MstKapalCabangPersPandu = function (mstkapalcabangperspandu) {
    this.KD_PERS_PANDU = mstkapalcabangperspandu.KD_PERS_PANDU;
    this.NM_PERS_PANDU = mstkapalcabangperspandu.NM_PERS_PANDU;
    this.NIPP = mstkapalcabangperspandu.NIPP;
    this.KELAS = mstkapalcabangperspandu.KELAS;
    this.KD_CABANG = mstkapalcabangperspandu.KD_CABANG;
    this.ENABLE = mstkapalcabangperspandu.ENABLE;
    this.KD_PERS_PANDU_CBG = mstkapalcabangperspandu.KD_PERS_PANDU_CBG;
};

MstKapalCabangPersPandu.create = async(newMstKapalCabangPersPandu, result, cabang_id, user_id) => {
	var id = await f.getid("mst_kapal_cabang_pers_pandu");
	const hv = await f.headerValue(newMstKapalCabangPersPandu, id);
	var queryText = "INSERT INTO \"mst_kapal_cabang_pers_pandu\" " + hv + " RETURN \"id\" INTO :id";
	const exec = f.query(queryText, 1);
	delete newMstKapalCabangPersPandu.id;
	const res = await exec;

	result(null, { id: id, ...newMstKapalCabangPersPandu });
};

MstKapalCabangPersPandu.findById = async (id, result) => {
	var queryText = "SELECT a.*  FROM \"mst_kapal_cabang_pers_pandu\" a   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

MstKapalCabangPersPandu.getAll = async (param, result, cabang_id) => {
    var wheres = f.getParam(param, "mst_kapal_cabang_pers_pandu");
    var query = "SELECT a.*  FROM \"mst_kapal_cabang_pers_pandu\" a ";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"KD_PERS_PANDU\" LIKE '%" + param.q + "%' OR a.\"NM_PERS_PANDU\" LIKE '%" + param.q + "%' OR a.\"NIPP\" LIKE '%" + param.q + "%' OR a.\"KELAS\" LIKE '%" + param.q + "%' OR a.\"KD_CABANG\" LIKE '%" + param.q + "%' OR a.\"ENABLE\" LIKE '%" + param.q + "%' OR a.\"KD_PERS_PANDU_CBG\" LIKE '%" + param.q + "%'";	
		wheres += ")";
	}

	query += wheres;
	query += "ORDER BY a.\"id\" DESC";
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

MstKapalCabangPersPandu.updateById = async(id, mstkapalcabangperspandu, result, user_id) => {

	var arr = ["KD_PERS_PANDU", "NM_PERS_PANDU", "NIPP", "KELAS", "KD_CABANG", "ENABLE", "KD_PERS_PANDU_CBG"];
	var str = f.getValueUpdate(mstkapalcabangperspandu, id, arr);
	var id_activity_log = await f.getid("activity_log");
	objek.koneksi = id;
	objek.action = mstkapalcabangperspandu.approval_status_id;
	objek.keterangan = mstkapalcabangperspandu.keterangan;
	objek.item = "mstkapalcabangperspandu";
	objek.user_id = user_id;
	if(mstkapalcabangperspandu.approval_status_id == 1){
		objek.remark = "Pengajuan disetujui oleh pusat";
	}else if(mstkapalcabangperspandu.approval_status_id == 2){
		objek.remark = "Pengajuan ditolak oleh pusat";
	}else if(mstkapalcabangperspandu.approval_status_id == 0){
		objek.remark = "Pengajuan dirubah oleh admin cabang";
	}
	const hval = await f.headerValue(objek, id_activity_log);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);
	await f.query("UPDATE \"mst_kapal_cabang_pers_pandu\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...mstkapalcabangperspandu });
};

MstKapalCabangPersPandu.remove = (id, result) => {
	f.query("DELETE FROM \"mst_kapal_cabang_pers_pandu\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = MstKapalCabangPersPandu;


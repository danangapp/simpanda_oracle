const f = require('../controllers/function');
var objek = new Object();

// constructor
const TipeStasiun = function (tipestasiun) {
    this.nama = tipestasiun.nama;
};

TipeStasiun.create = async(newTipeStasiun, result, cabang_id, user_id) => {
	var id = await f.getid("tipe_stasiun");
	const hv = await f.headerValue(newTipeStasiun, id);
	var queryText = "INSERT INTO \"tipe_stasiun\" " + hv + " RETURN \"id\" INTO :id";
	const exec = f.query(queryText, 1);
	delete newTipeStasiun.id;
	const res = await exec;

	result(null, { id: id, ...newTipeStasiun });
};

TipeStasiun.findById = async (id, result) => {
	var queryText = "SELECT a.*  FROM \"tipe_stasiun\" a   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

TipeStasiun.getAll = async (param, result, cabang_id) => {
    var wheres = f.getParam(param, "tipe_stasiun");
    var query = "SELECT a.*  FROM \"tipe_stasiun\" a ";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"nama\" LIKE '%" + param.q + "%'";	
		wheres += ")";
	}

	query += wheres;
	query += "ORDER BY a.\"id\" DESC";
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

TipeStasiun.updateById = async(id, tipestasiun, result, user_id) => {

	var arr = ["nama"];
	var str = f.getValueUpdate(tipestasiun, id, arr);
	var id_activity_log = await f.getid("activity_log");
	objek.koneksi = id;
	objek.action = tipestasiun.approval_status_id;
	objek.keterangan = tipestasiun.keterangan;
	objek.item = "tipestasiun";
	objek.user_id = user_id;
	if(tipestasiun.approval_status_id == 1){
		objek.remark = "Pengajuan disetujui oleh pusat";
	}else if(tipestasiun.approval_status_id == 2){
		objek.remark = "Pengajuan ditolak oleh pusat";
	}else if(tipestasiun.approval_status_id == 0){
		objek.remark = "Pengajuan dirubah oleh admin cabang";
	}
	const hval = await f.headerValue(objek, id_activity_log);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);
	await f.query("UPDATE \"tipe_stasiun\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...tipestasiun });
};

TipeStasiun.remove = (id, result) => {
	f.query("DELETE FROM \"tipe_stasiun\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = TipeStasiun;


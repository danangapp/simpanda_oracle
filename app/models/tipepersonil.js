const f = require('../controllers/function');
var objek = new Object();

// constructor
const TipePersonil = function (tipepersonil) {
    this.nama = tipepersonil.nama;
    this.flag = tipepersonil.flag;
};

TipePersonil.create = async(newTipePersonil, result, cabang_id, user_id) => {
	var id = await f.getid("tipe_personil");
	const hv = await f.headerValue(newTipePersonil, id);
	var queryText = "INSERT INTO \"tipe_personil\" " + hv + " RETURN \"id\" INTO :id";
	const exec = f.query(queryText, 1);
	delete newTipePersonil.id;
	const res = await exec;

	result(null, { id: id, ...newTipePersonil });
};

TipePersonil.findById = async (id, result) => {
	var queryText = "SELECT a.*  FROM \"tipe_personil\" a   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

TipePersonil.getAll = async (param, result, cabang_id) => {
    var wheres = f.getParam(param, "tipe_personil");
    var query = "SELECT a.*  FROM \"tipe_personil\" a ";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"nama\" LIKE '%" + param.q + "%' OR a.\"flag\" LIKE '%" + param.q + "%'";	
		wheres += ")";
	}

	query += wheres;
	query += "ORDER BY a.\"id\" DESC";
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

TipePersonil.updateById = async(id, tipepersonil, result, user_id) => {

	var arr = ["nama", "flag"];
	var str = f.getValueUpdate(tipepersonil, id, arr);
	var id_activity_log = await f.getid("activity_log");
	objek.koneksi = id;
	objek.action = tipepersonil.approval_status_id;
	objek.keterangan = tipepersonil.keterangan;
	objek.item = "tipepersonil";
	objek.user_id = user_id;
	if(tipepersonil.approval_status_id == 1){
		objek.remark = "Pengajuan disetujui oleh pusat";
	}else if(tipepersonil.approval_status_id == 2){
		objek.remark = "Pengajuan ditolak oleh pusat";
	}else if(tipepersonil.approval_status_id == 0){
		objek.remark = "Pengajuan dirubah oleh admin cabang";
	}
	const hval = await f.headerValue(objek, id_activity_log);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);
	await f.query("UPDATE \"tipe_personil\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...tipepersonil });
};

TipePersonil.remove = (id, result) => {
	f.query("DELETE FROM \"tipe_personil\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = TipePersonil;


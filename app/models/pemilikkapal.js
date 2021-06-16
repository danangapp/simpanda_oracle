const f = require('../controllers/function');
var objek = new Object();

// constructor
const PemilikKapal = function (pemilikkapal) {
    this.nama = pemilikkapal.nama;
};

PemilikKapal.create = async(newPemilikKapal, result, cabang_id, user_id) => {
	var id = await f.getid("pemilik_kapal");
	const hv = await f.headerValue(newPemilikKapal, id);
	var queryText = "INSERT INTO \"pemilik_kapal\" " + hv + " RETURN \"id\" INTO :id";
	const exec = f.query(queryText, 1);
	delete newPemilikKapal.id;
	const res = await exec;

	result(null, { id: id, ...newPemilikKapal });
};

PemilikKapal.findById = async (id, result) => {
	var queryText = "SELECT a.*  FROM \"pemilik_kapal\" a   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

PemilikKapal.getAll = async (param, result, cabang_id) => {
    var wheres = f.getParam(param, "pemilik_kapal");
    var query = "SELECT a.*  FROM \"pemilik_kapal\" a ";
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

PemilikKapal.updateById = async(id, pemilikkapal, result, user_id) => {

	var arr = ["nama"];
	var str = f.getValueUpdate(pemilikkapal, id, arr);
	var id_activity_log = await f.getid("activity_log");
	objek.koneksi = id;
	objek.action = pemilikkapal.approval_status_id;
	objek.keterangan = pemilikkapal.keterangan;
	objek.item = "pemilikkapal";
	objek.user_id = user_id;
	if(pemilikkapal.approval_status_id == 1){
		objek.remark = "Pengajuan disetujui oleh pusat";
	}else if(pemilikkapal.approval_status_id == 2){
		objek.remark = "Pengajuan ditolak oleh pusat";
	}else if(pemilikkapal.approval_status_id == 0){
		objek.remark = "Pengajuan dirubah oleh admin cabang";
	}
	const hval = await f.headerValue(objek, id_activity_log);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);
	await f.query("UPDATE \"pemilik_kapal\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...pemilikkapal });
};

PemilikKapal.remove = (id, result) => {
	f.query("DELETE FROM \"pemilik_kapal\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = PemilikKapal;


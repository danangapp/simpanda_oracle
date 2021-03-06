const f = require('../controllers/function');
var objek = new Object();

// constructor
const DokumenKapal = function (dokumenkapal) {
    this.nama = dokumenkapal.nama;
};

DokumenKapal.create = async(newDokumenKapal, result, cabang_id, user_id) => {
	var id = await f.getid("dokumen_kapal");
	const hv = await f.headerValue(newDokumenKapal, id);
	var queryText = "INSERT INTO \"dokumen_kapal\" " + hv + " RETURN \"id\" INTO :id";
	const exec = f.query(queryText, 1);
	delete newDokumenKapal.id;
	const res = await exec;

	result(null, { id: id, ...newDokumenKapal });
};

DokumenKapal.findById = async (id, result) => {
	var queryText = "SELECT a.*  FROM \"dokumen_kapal\" a   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

DokumenKapal.getAll = async (param, result, cabang_id) => {
    var wheres = f.getParam(param, "dokumen_kapal");
    var query = "SELECT a.*  FROM \"dokumen_kapal\" a ";
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

DokumenKapal.updateById = async(id, dokumenkapal, result, user_id) => {

	var arr = ["nama"];
	var str = f.getValueUpdate(dokumenkapal, id, arr);
	var id_activity_log = await f.getid("activity_log");
	objek.koneksi = id;
	objek.action = dokumenkapal.approval_status_id;
	objek.keterangan = dokumenkapal.keterangan;
	objek.item = "dokumenkapal";
	objek.user_id = user_id;
	if(dokumenkapal.approval_status_id == 1){
		objek.remark = "Pengajuan disetujui oleh pusat";
	}else if(dokumenkapal.approval_status_id == 2){
		objek.remark = "Pengajuan ditolak oleh pusat";
	}else if(dokumenkapal.approval_status_id == 0){
		objek.remark = "Pengajuan dirubah oleh admin cabang";
	}
	const hval = await f.headerValue(objek, id_activity_log);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);
	await f.query("UPDATE \"dokumen_kapal\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...dokumenkapal });
};

DokumenKapal.remove = (id, result) => {
	f.query("DELETE FROM \"dokumen_kapal\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = DokumenKapal;


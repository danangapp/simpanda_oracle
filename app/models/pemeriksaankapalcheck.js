const f = require('../controllers/function');
var objek = new Object();

// constructor
const PemeriksaanKapalCheck = function (pemeriksaankapalcheck) {
    this.question = pemeriksaankapalcheck.question;
};

PemeriksaanKapalCheck.create = async(newPemeriksaanKapalCheck, result, cabang_id, user_id) => {
	var id = await f.getid("pemeriksaan_kapal_check");
	const hv = await f.headerValue(newPemeriksaanKapalCheck, id);
	var queryText = "INSERT INTO \"pemeriksaan_kapal_check\" " + hv + " RETURN \"id\" INTO :id";
	const exec = f.query(queryText, 1);
	delete newPemeriksaanKapalCheck.id;
	const res = await exec;

	result(null, { id: id, ...newPemeriksaanKapalCheck });
};

PemeriksaanKapalCheck.findById = async (id, result) => {
	var queryText = "SELECT a.*  FROM \"pemeriksaan_kapal_check\" a   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

PemeriksaanKapalCheck.getAll = async (param, result, cabang_id) => {
    var wheres = f.getParam(param, "pemeriksaan_kapal_check");
    var query = "SELECT a.*  FROM \"pemeriksaan_kapal_check\" a ";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"question\" LIKE '%" + param.q + "%'";	
		wheres += ")";
	}

	query += wheres;
	query += "ORDER BY a.\"id\" DESC";
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

PemeriksaanKapalCheck.updateById = async(id, pemeriksaankapalcheck, result, user_id) => {

	var arr = ["question"];
	var str = f.getValueUpdate(pemeriksaankapalcheck, id, arr);
	var id_activity_log = await f.getid("activity_log");
	objek.koneksi = id;
	objek.action = pemeriksaankapalcheck.approval_status_id;
	objek.item = "pemeriksaankapalcheck";
	objek.user_id = user_id;
	if(pemeriksaankapalcheck.approval_status_id == 1){
		objek.remark = "Pengajuan disetujui oleh pusat";
	}else if(pemeriksaankapalcheck.approval_status_id == 2){
		objek.remark = "Pengajuan ditolak oleh pusat";
	}else if(pemeriksaankapalcheck.approval_status_id == 0){
		objek.remark = "Pengajuan dibuat oleh admin cabang";
	}
	const hval = await f.headerValue(objek, id_activity_log);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);
	await f.query("UPDATE \"pemeriksaan_kapal_check\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...pemeriksaankapalcheck });
};

PemeriksaanKapalCheck.remove = (id, result) => {
	f.query("DELETE FROM \"pemeriksaan_kapal_check\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = PemeriksaanKapalCheck;


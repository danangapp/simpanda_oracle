const f = require('../controllers/function');
var objek = new Object();

// constructor
const PemeriksaanKapalCheckData = function (pemeriksaankapalcheckdata) {
    this.kondisi_id = pemeriksaankapalcheckdata.kondisi_id;
    this.tanggal_awal = pemeriksaankapalcheckdata.tanggal_awal;
    this.tanggal_akhir = pemeriksaankapalcheckdata.tanggal_akhir;
    this.keterangan = pemeriksaankapalcheckdata.keterangan;
    this.pemeriksaan_kapal_id = pemeriksaankapalcheckdata.pemeriksaan_kapal_id;
    this.pemeriksaan_kapal_check_id = pemeriksaankapalcheckdata.pemeriksaan_kapal_check_id;
    this.status = pemeriksaankapalcheckdata.status;
    this.gambar = pemeriksaankapalcheckdata.gambar;
};

PemeriksaanKapalCheckData.create = async(newPemeriksaanKapalCheckData, result, cabang_id, user_id) => {
	var id = await f.getid("pemeriksaan_kapal_check_data");
	const hv = await f.headerValue(newPemeriksaanKapalCheckData, id);
	var queryText = "INSERT INTO \"pemeriksaan_kapal_check_data\" " + hv + " RETURN \"id\" INTO :id";
	const exec = f.query(queryText, 1);
	delete newPemeriksaanKapalCheckData.id;
	const res = await exec;

	result(null, { id: id, ...newPemeriksaanKapalCheckData });
};

PemeriksaanKapalCheckData.findById = async (id, result) => {
	var queryText = "SELECT a.*  , a1.\"nama\" as \"kondisi\" FROM \"pemeriksaan_kapal_check_data\" a  LEFT JOIN \"kondisi\" a1 ON a.\"kondisi_id\" = a1.\"id\"  WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

PemeriksaanKapalCheckData.getAll = async (param, result, cabang_id) => {
    var wheres = f.getParam(param, "pemeriksaan_kapal_check_data");
    var query = "SELECT a.*  , a1.\"nama\" as \"kondisi\" FROM \"pemeriksaan_kapal_check_data\" a  LEFT JOIN \"kondisi\" a1 ON a.\"kondisi_id\" = a1.\"id\"";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"kondisi_id\" LIKE '%" + param.q + "%' OR a.\"tanggal_awal\" LIKE '%" + param.q + "%' OR a.\"tanggal_akhir\" LIKE '%" + param.q + "%' OR a.\"keterangan\" LIKE '%" + param.q + "%' OR a.\"pemeriksaan_kapal_id\" LIKE '%" + param.q + "%' OR a.\"pemeriksaan_kapal_check_id\" LIKE '%" + param.q + "%' OR a.\"status\" LIKE '%" + param.q + "%' OR a.\"gambar\" LIKE '%" + param.q + "%'";	
		wheres += ")";
	}

	query += wheres;
	query += "ORDER BY a.\"id\" DESC";
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

PemeriksaanKapalCheckData.updateById = async(id, pemeriksaankapalcheckdata, result, user_id) => {

	var arr = ["kondisi_id", "tanggal_awal", "tanggal_akhir", "keterangan", "pemeriksaan_kapal_id", "pemeriksaan_kapal_check_id", "status", "gambar"];
	var str = f.getValueUpdate(pemeriksaankapalcheckdata, id, arr);
	var id_activity_log = await f.getid("activity_log");
	objek.koneksi = id;
	objek.action = pemeriksaankapalcheckdata.approval_status_id;
	objek.keterangan = pemeriksaankapalcheckdata.keterangan;
	objek.item = "pemeriksaankapalcheckdata";
	objek.user_id = user_id;
	if(pemeriksaankapalcheckdata.approval_status_id == 1){
		objek.remark = "Pengajuan disetujui oleh pusat";
	}else if(pemeriksaankapalcheckdata.approval_status_id == 2){
		objek.remark = "Pengajuan ditolak oleh pusat";
	}else if(pemeriksaankapalcheckdata.approval_status_id == 0){
		objek.remark = "Pengajuan dirubah oleh admin cabang";
	}
	const hval = await f.headerValue(objek, id_activity_log);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);
	await f.query("UPDATE \"pemeriksaan_kapal_check_data\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...pemeriksaankapalcheckdata });
};

PemeriksaanKapalCheckData.remove = (id, result) => {
	f.query("DELETE FROM \"pemeriksaan_kapal_check_data\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = PemeriksaanKapalCheckData;


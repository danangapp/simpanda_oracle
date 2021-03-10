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
};

PemeriksaanKapalCheckData.create = async(newPemeriksaanKapalCheckData, result) => {
		const hv = await f.headerValue(newPemeriksaanKapalCheckData, "pemeriksaan_kapal_check_data");
		var queryText = "INSERT INTO \"pemeriksaan_kapal_check_data\" " + hv + " RETURN \"id\" INTO :id";
		const exec = f.query(queryText, 1);
		delete newPemeriksaanKapalCheckData.id;
		const res = await exec;

		result(null, { id: res.outBinds.id[0], ...newPemeriksaanKapalCheckData });
};

PemeriksaanKapalCheckData.findById = async (id, result) => {
	var queryText = "SELECT a.* , a1.\"nama\" as \"kondisi\", a2.\"nama\" as \"pemeriksaan_kapal\", a3.\"nama\" as \"pemeriksaan_kapal_check\" FROM \"pemeriksaan_kapal_check_data\" a  LEFT JOIN \"kondisi\" a1 ON a.\"kondisi_id\" = a1.\"id\"  LEFT JOIN \"pemeriksaan_kapal\" a2 ON a.\"pemeriksaan_kapal_id\" = a2.\"id\"  LEFT JOIN \"pemeriksaan_kapal_check\" a3 ON a.\"pemeriksaan_kapal_check_id\" = a3.\"id\"   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

PemeriksaanKapalCheckData.getAll = async (param, result) => {
    var wheres = f.getParam(param, "pemeriksaan_kapal_check_data");
    var query = "SELECT a.* , a1.\"nama\" as \"kondisi\", a2.\"nama\" as \"pemeriksaan_kapal\", a3.\"nama\" as \"pemeriksaan_kapal_check\" FROM \"pemeriksaan_kapal_check_data\" a  LEFT JOIN \"kondisi\" a1 ON a.\"kondisi_id\" = a1.\"id\"  LEFT JOIN \"pemeriksaan_kapal\" a2 ON a.\"pemeriksaan_kapal_id\" = a2.\"id\"  LEFT JOIN \"pemeriksaan_kapal_check\" a3 ON a.\"pemeriksaan_kapal_check_id\" = a3.\"id\" ";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"kondisi_id\" LIKE '%" + param.q + "%' OR a.\"tanggal_awal\" LIKE '%" + param.q + "%' OR a.\"tanggal_akhir\" LIKE '%" + param.q + "%' OR a.\"keterangan\" LIKE '%" + param.q + "%' OR a.\"pemeriksaan_kapal_id\" LIKE '%" + param.q + "%' OR a.\"pemeriksaan_kapal_check_id\" LIKE '%" + param.q + "%'";	
		wheres += ")";
	}

	query += wheres;
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

PemeriksaanKapalCheckData.updateById = async(id, pemeriksaankapalcheckdata, result) => {

	var arr = ["kondisi_id", "tanggal_awal", "tanggal_akhir", "keterangan", "pemeriksaan_kapal_id", "pemeriksaan_kapal_check_id"];
	var str = f.getValueUpdate(pemeriksaankapalcheckdata, id, arr);
	if (objek.action != null) {
		const hv = await f.headerValue(objek, "activity_log");
		f.query("INSERT INTO \"activity_log\" " + hv, 2);
	}
	f.query("UPDATE \"pemeriksaan_kapal_check_data\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...pemeriksaankapalcheckdata });
};

PemeriksaanKapalCheckData.remove = (id, result) => {
	f.query("DELETE FROM \"pemeriksaan_kapal_check_data\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = PemeriksaanKapalCheckData;


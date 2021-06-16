const f = require('../controllers/function');
var objek = new Object();

// constructor
const TipeCert = function (tipecert) {
	this.nama = tipecert.nama;
	this.remark = tipecert.remark;
	this.jenis_cert_id = tipecert.jenis_cert_id;
};

TipeCert.create = async (newTipeCert, result, cabang_id, user_id) => {
	var id = await f.getid("tipe_cert");
	const hv = await f.headerValue(newTipeCert, id);
	var queryText = "INSERT INTO \"tipe_cert\" " + hv + " RETURN \"id\" INTO :id";
	const exec = f.query(queryText, 1);
	delete newTipeCert.id;
	const res = await exec;

	result(null, { id: id, ...newTipeCert });
};

TipeCert.findById = async (id, result) => {
	var queryText = "SELECT a.* , a1.\"nama\" as \"jenis_cert\" FROM \"tipe_cert\" a  LEFT JOIN \"jenis_cert\" a1 ON a.\"jenis_cert_id\" = a1.\"id\"   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

TipeCert.getAll = async (param, result, cabang_id) => {
	if (param.jenis_cert_id == 'false') {
		delete param.jenis_cert_id;
	}
	var wheres = f.getParam(param, "tipe_cert");

	// console.log("danang", param.jenis_cert_id);
	var query = "SELECT a.* , a1.\"nama\" as \"jenis_cert\" FROM \"tipe_cert\" a  LEFT JOIN \"jenis_cert\" a1 ON a.\"jenis_cert_id\" = a1.\"id\" ";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"nama\" LIKE '%" + param.q + "%' OR a.\"remark\" LIKE '%" + param.q + "%' OR a.\"jenis_cert_id\" LIKE '%" + param.q + "%'";
		wheres += ")";
	}

	query += wheres;
	query += "ORDER BY a.\"id\" DESC";
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

TipeCert.updateById = async (id, tipecert, result, user_id) => {

	var arr = ["nama", "remark", "jenis_cert_id"];
	var str = f.getValueUpdate(tipecert, id, arr);
	var id_activity_log = await f.getid("activity_log");
	objek.koneksi = id;
	objek.action = tipecert.approval_status_id;
	objek.keterangan = tipecert.keterangan;
	objek.item = "tipecert";
	objek.user_id = user_id;
	if (tipecert.approval_status_id == 1) {
		objek.remark = "Pengajuan disetujui oleh pusat";
	} else if (tipecert.approval_status_id == 2) {
		objek.remark = "Pengajuan ditolak oleh pusat";
	} else if (tipecert.approval_status_id == 0) {
		objek.remark = "Pengajuan dirubah oleh admin cabang";
	}
	const hval = await f.headerValue(objek, id_activity_log);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);
	await f.query("UPDATE \"tipe_cert\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...tipecert });
};

TipeCert.remove = (id, result) => {
	f.query("DELETE FROM \"tipe_cert\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = TipeCert;


const f = require('../controllers/function');
var objek = new Object();

// constructor
const JenisCert = function (jeniscert) {
    this.nama = jeniscert.nama;
    this.remark = jeniscert.remark;
};

JenisCert.create = async(newJenisCert, result, cabang_id, user_id) => {
	var id = await f.getid("jenis_cert");
	const hv = await f.headerValue(newJenisCert, id);
	var queryText = "INSERT INTO \"jenis_cert\" " + hv + " RETURN \"id\" INTO :id";
	const exec = f.query(queryText, 1);
	delete newJenisCert.id;
	const res = await exec;

	result(null, { id: id, ...newJenisCert });
};

JenisCert.findById = async (id, result) => {
	var queryText = "SELECT a.*  FROM \"jenis_cert\" a   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

JenisCert.getAll = async (param, result, cabang_id) => {
    var wheres = f.getParam(param, "jenis_cert");
    var query = "SELECT a.*  FROM \"jenis_cert\" a ";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"nama\" LIKE '%" + param.q + "%' OR a.\"remark\" LIKE '%" + param.q + "%'";	
		wheres += ")";
	}

	query += wheres;
	query += "ORDER BY a.\"id\" DESC";
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

JenisCert.updateById = async(id, jeniscert, result, user_id) => {

	var arr = ["nama", "remark"];
	var str = f.getValueUpdate(jeniscert, id, arr);
	var id_activity_log = await f.getid("activity_log");
	objek.koneksi = id;
	objek.action = jeniscert.approval_status_id;
	objek.item = "jeniscert";
	objek.remark = jeniscert.activityLog ? jeniscert.activityLog.remark : '';
	objek.user_id = user_id;
	const hval = await f.headerValue(objek, id_activity_log);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);
	await f.query("UPDATE \"jenis_cert\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...jeniscert });
};

JenisCert.remove = (id, result) => {
	f.query("DELETE FROM \"jenis_cert\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = JenisCert;


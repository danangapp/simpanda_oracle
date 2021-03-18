const f = require('../controllers/function');
var objek = new Object();

// constructor
const Kondisi = function (kondisi) {
    this.nama = kondisi.nama;
};

Kondisi.create = async(newKondisi, result, cabang_id, user_id) => {
	var id = await f.getid("kondisi");
	const hv = await f.headerValue(newKondisi, id);
	var queryText = "INSERT INTO \"kondisi\" " + hv + " RETURN \"id\" INTO :id";
	const exec = f.query(queryText, 1);
	delete newKondisi.id;
	const res = await exec;

	result(null, { id: id, ...newKondisi });
};

Kondisi.findById = async (id, result) => {
	var queryText = "SELECT a.*  FROM \"kondisi\" a   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

Kondisi.getAll = async (param, result, cabang_id) => {
    var wheres = f.getParam(param, "kondisi");
    var query = "SELECT a.*  FROM \"kondisi\" a ";
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

Kondisi.updateById = async(id, kondisi, result, user_id) => {

	var arr = ["nama"];
	var str = f.getValueUpdate(kondisi, id, arr);
	var id_activity_log = await f.getid("activity_log");
	objek.koneksi = id;
	objek.action = kondisi.approval_status_id;
	objek.item = "kondisi";
	objek.remark = kondisi.activityLog ? kondisi.activityLog.remark : '';
	objek.user_id = user_id;
	const hval = await f.headerValue(objek, id_activity_log);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);
	await f.query("UPDATE \"kondisi\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...kondisi });
};

Kondisi.remove = (id, result) => {
	f.query("DELETE FROM \"kondisi\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = Kondisi;


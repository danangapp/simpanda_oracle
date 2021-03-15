const f = require('../controllers/function');
var objek = new Object();

// constructor
const StatusIjazah = function (statusijazah) {
    this.nama = statusijazah.nama;
};

StatusIjazah.create = async(newStatusIjazah, result, cabang_id, user_id) => {
		var id = await f.getid("status_ijazah");
		const hv = await f.headerValue(newStatusIjazah, id);
		var queryText = "INSERT INTO \"status_ijazah\" " + hv + " RETURN \"id\" INTO :id";
		const exec = f.query(queryText, 1);
		delete newStatusIjazah.id;
		const res = await exec;

		result(null, { id: id, ...newStatusIjazah });
};

StatusIjazah.findById = async (id, result) => {
	var queryText = "SELECT a.*  FROM \"status_ijazah\" a   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

StatusIjazah.getAll = async (param, result, cabang_id) => {
    var wheres = f.getParam(param, "status_ijazah");
    var query = "SELECT a.*  FROM \"status_ijazah\" a ";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"nama\" LIKE '%" + param.q + "%'";	
		wheres += ")";
	}

	query += wheres;
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

StatusIjazah.updateById = async(id, statusijazah, result, user_id) => {

	var arr = ["nama"];
	var str = f.getValueUpdate(statusijazah, id, arr);
	var id_activity_log = await f.getid("activity_log");
	objek.koneksi = id;
	objek.action = statusijazah.approval_status_id;
	objek.user_id = user_id;
	const hval = await f.headerValue(objek, id_activity_log);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);
	await f.query("UPDATE \"status_ijazah\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...statusijazah });
};

StatusIjazah.remove = (id, result) => {
	f.query("DELETE FROM \"status_ijazah\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = StatusIjazah;


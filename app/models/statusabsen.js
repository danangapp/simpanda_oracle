const f = require('../controllers/function');
var objek = new Object();

// constructor
const StatusAbsen = function (statusabsen) {
    this.nama = statusabsen.nama;
};

StatusAbsen.create = async(newStatusAbsen, result, cabang_id, user_id) => {
		var id = await f.getid("status_absen");
		const hv = await f.headerValue(newStatusAbsen, id);
		var queryText = "INSERT INTO \"status_absen\" " + hv + " RETURN \"id\" INTO :id";
		const exec = f.query(queryText, 1);
		delete newStatusAbsen.id;
		const res = await exec;

		result(null, { id: id, ...newStatusAbsen });
};

StatusAbsen.findById = async (id, result) => {
	var queryText = "SELECT a.*  FROM \"status_absen\" a   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

StatusAbsen.getAll = async (param, result, cabang_id) => {
    var wheres = f.getParam(param, "status_absen");
    var query = "SELECT a.*  FROM \"status_absen\" a ";
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

StatusAbsen.updateById = async(id, statusabsen, result, user_id) => {

	var arr = ["nama"];
	var str = f.getValueUpdate(statusabsen, id, arr);
	var id_activity_log = await f.getid("activity_log");
	objek.koneksi = id;
	objek.action = statusabsen.approval_status_id;
	objek.user_id = user_id;
	const hval = await f.headerValue(objek, id_activity_log);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);
	await f.query("UPDATE \"status_absen\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...statusabsen });
};

StatusAbsen.remove = (id, result) => {
	f.query("DELETE FROM \"status_absen\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = StatusAbsen;


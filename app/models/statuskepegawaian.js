const f = require('../controllers/function');
var objek = new Object();

// constructor
const StatusKepegawaian = function (statuskepegawaian) {
    this.nama = statuskepegawaian.nama;
};

StatusKepegawaian.create = async(newStatusKepegawaian, result, cabang_id) => {
		const hv = await f.headerValue(newStatusKepegawaian, "status_kepegawaian");
		var queryText = "INSERT INTO \"status_kepegawaian\" " + hv + " RETURN \"id\" INTO :id";
		const exec = f.query(queryText, 1);
		delete newStatusKepegawaian.id;
		const res = await exec;

		result(null, { id: res.outBinds.id[0], ...newStatusKepegawaian });
};

StatusKepegawaian.findById = async (id, result) => {
	var queryText = "SELECT a.*  FROM \"status_kepegawaian\" a   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

StatusKepegawaian.getAll = async (param, result, cabang_id) => {
    var wheres = f.getParam(param, "status_kepegawaian");
    var query = "SELECT a.*  FROM \"status_kepegawaian\" a ";
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

StatusKepegawaian.updateById = async(id, statuskepegawaian, result) => {

	var arr = ["nama"];
	var str = f.getValueUpdate(statuskepegawaian, id, arr);
	if (objek.action != null) {
		const hv = await f.headerValue(objek, "activity_log");
		await f.query("INSERT INTO \"activity_log\" " + hv, 2);
	}
	f.query("UPDATE \"status_kepegawaian\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...statuskepegawaian });
};

StatusKepegawaian.remove = (id, result) => {
	f.query("DELETE FROM \"status_kepegawaian\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = StatusKepegawaian;


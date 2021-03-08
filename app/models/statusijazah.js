const f = require('../controllers/function');
var objek = new Object();

// constructor
const StatusIjazah = function (statusijazah) {
    this.nama = statusijazah.nama;
};

StatusIjazah.create = async(newStatusIjazah, result) => {
		newStatusIjazah.id = "status_ijazah_seq.nextval"
		const hv = f.headerValue(newStatusIjazah);
		var queryText = "INSERT INTO \"status_ijazah\" " + hv + " RETURN \"id\" INTO :id";
		const exec = f.query(queryText, 1);
		delete newStatusIjazah.id;
		const res = await exec;

		result(null, { id: res.outBinds.id[0], ...newStatusIjazah });
};

StatusIjazah.findById = async (id, result) => {
	var queryText = "SELECT a.*  FROM \"status_ijazah\" a   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

StatusIjazah.getAll = async (param, result) => {
    var wheres = f.getParam(param);
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

StatusIjazah.updateById = async(id, statusijazah, result) => {

	var arr = ["nama"];
	var str = f.getValueUpdate(statusijazah, id, arr);
	if (objek.action != null) {
		const hv = f.headerValue(objek);
		f.query("INSERT INTO \"activity_log\" " + hv, 2);
	}
	f.query("UPDATE \"status_ijazah\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...statusijazah });
};

StatusIjazah.remove = (id, result) => {
	f.query("DELETE FROM \"status_ijazah\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = StatusIjazah;


const f = require('../controllers/function');
var objek = new Object();

// constructor
const Kondisi = function (kondisi) {
    this.nama = kondisi.nama;
};

Kondisi.create = async(newKondisi, result) => {
		const hv = await f.headerValue(newKondisi, "kondisi");
		var queryText = "INSERT INTO \"kondisi\" " + hv + " RETURN \"id\" INTO :id";
		const exec = f.query(queryText, 1);
		delete newKondisi.id;
		const res = await exec;

		result(null, { id: res.outBinds.id[0], ...newKondisi });
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
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

Kondisi.updateById = async(id, kondisi, result) => {

	var arr = ["nama"];
	var str = f.getValueUpdate(kondisi, id, arr);
	if (objek.action != null) {
		const hv = await f.headerValue(objek, "activity_log");
		await f.query("INSERT INTO \"activity_log\" " + hv, 2);
	}
	f.query("UPDATE \"kondisi\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...kondisi });
};

Kondisi.remove = (id, result) => {
	f.query("DELETE FROM \"kondisi\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = Kondisi;


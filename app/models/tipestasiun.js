const f = require('../controllers/function');
var objek = new Object();

// constructor
const TipeStasiun = function (tipestasiun) {
    this.nama = tipestasiun.nama;
};

TipeStasiun.create = async(newTipeStasiun, result) => {
		const hv = await f.headerValue(newTipeStasiun, "tipe_stasiun");
		var queryText = "INSERT INTO \"tipe_stasiun\" " + hv + " RETURN \"id\" INTO :id";
		const exec = f.query(queryText, 1);
		delete newTipeStasiun.id;
		const res = await exec;

		result(null, { id: res.outBinds.id[0], ...newTipeStasiun });
};

TipeStasiun.findById = async (id, result) => {
	var queryText = "SELECT a.*  FROM \"tipe_stasiun\" a   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

TipeStasiun.getAll = async (param, result) => {
    var wheres = f.getParam(param, "tipe_stasiun");
    var query = "SELECT a.*  FROM \"tipe_stasiun\" a ";
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

TipeStasiun.updateById = async(id, tipestasiun, result) => {

	var arr = ["nama"];
	var str = f.getValueUpdate(tipestasiun, id, arr);
	if (objek.action != null) {
		const hv = await f.headerValue(objek, "activity_log");
		await f.query("INSERT INTO \"activity_log\" " + hv, 2);
	}
	f.query("UPDATE \"tipe_stasiun\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...tipestasiun });
};

TipeStasiun.remove = (id, result) => {
	f.query("DELETE FROM \"tipe_stasiun\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = TipeStasiun;


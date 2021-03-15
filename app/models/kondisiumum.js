const f = require('../controllers/function');
var objek = new Object();

// constructor
const KondisiUmum = function (kondisiumum) {
    this.nama = kondisiumum.nama;
};

KondisiUmum.create = async(newKondisiUmum, result, cabang_id) => {
		var id = await f.getid("kondisi_umum");
		const hv = await f.headerValue(newKondisiUmum, id);
		var queryText = "INSERT INTO \"kondisi_umum\" " + hv + " RETURN \"id\" INTO :id";
		const exec = f.query(queryText, 1);
		delete newKondisiUmum.id;
		const res = await exec;

		result(null, { id: id, ...newKondisiUmum });
};

KondisiUmum.findById = async (id, result) => {
	var queryText = "SELECT a.*  FROM \"kondisi_umum\" a   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

KondisiUmum.getAll = async (param, result, cabang_id) => {
    var wheres = f.getParam(param, "kondisi_umum");
    var query = "SELECT a.*  FROM \"kondisi_umum\" a ";
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

KondisiUmum.updateById = async(id, kondisiumum, result) => {

	var arr = ["nama"];
	var str = f.getValueUpdate(kondisiumum, id, arr);
	if (objek.action != null) {
		var id = await f.getid("activity_log");
		const hv = await f.headerValue(objek, id);
		await f.query("INSERT INTO \"activity_log\" " + hv, 2);
	}
	f.query("UPDATE \"kondisi_umum\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...kondisiumum });
};

KondisiUmum.remove = (id, result) => {
	f.query("DELETE FROM \"kondisi_umum\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = KondisiUmum;


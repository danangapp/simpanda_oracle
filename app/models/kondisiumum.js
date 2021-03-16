const f = require('../controllers/function');
var objek = new Object();

// constructor
const KondisiUmum = function (kondisiumum) {
    this.nama = kondisiumum.nama;
};

KondisiUmum.create = async(newKondisiUmum, result, cabang_id, user_id) => {
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
	query += "ORDER BY a.\"id\" DESC";
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

KondisiUmum.updateById = async(id, kondisiumum, result, user_id) => {

	var arr = ["nama"];
	var str = f.getValueUpdate(kondisiumum, id, arr);
	var id_activity_log = await f.getid("activity_log");
	objek.koneksi = id;
	objek.action = kondisiumum.approval_status_id;
	objek.item = "kondisiumum";
	objek.remark = kondisiumum.activityLog ? kondisiumum.activityLog.remark : '';
	objek.user_id = user_id;
	const hval = await f.headerValue(objek, id_activity_log);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);
	await f.query("UPDATE \"kondisi_umum\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...kondisiumum });
};

KondisiUmum.remove = (id, result) => {
	f.query("DELETE FROM \"kondisi_umum\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = KondisiUmum;


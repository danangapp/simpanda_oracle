const f = require('../controllers/function');
var objek = new Object();

// constructor
const Enable = function (enable) {
    this.nama = enable.nama;
};

Enable.create = async(newEnable, result, cabang_id, user_id) => {
		var id = await f.getid("enable");
		const hv = await f.headerValue(newEnable, id);
		var queryText = "INSERT INTO \"enable\" " + hv + " RETURN \"id\" INTO :id";
		const exec = f.query(queryText, 1);
		delete newEnable.id;
		const res = await exec;

		result(null, { id: id, ...newEnable });
};

Enable.findById = async (id, result) => {
	var queryText = "SELECT a.*  FROM \"enable\" a   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

Enable.getAll = async (param, result, cabang_id) => {
    var wheres = f.getParam(param, "enable");
    var query = "SELECT a.*  FROM \"enable\" a ";
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

Enable.updateById = async(id, enable, result, user_id) => {

	var arr = ["nama"];
	var str = f.getValueUpdate(enable, id, arr);
	var id_activity_log = await f.getid("activity_log");
	objek.koneksi = id;
	objek.action = enable.approval_status_id;
	objek.item = "enable";
	objek.remark = enable.activityLog ? enable.activityLog.remark : '';
	objek.user_id = user_id;
	const hval = await f.headerValue(objek, id_activity_log);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);
	await f.query("UPDATE \"enable\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...enable });
};

Enable.remove = (id, result) => {
	f.query("DELETE FROM \"enable\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = Enable;


const f = require('../controllers/function');
var objek = new Object();

// constructor
const PanduBandarLaut = function (pandubandarlaut) {
    this.nama = pandubandarlaut.nama;
};

PanduBandarLaut.create = async(newPanduBandarLaut, result, cabang_id, user_id) => {
		var id = await f.getid("pandu_bandar_laut");
		const hv = await f.headerValue(newPanduBandarLaut, id);
		var queryText = "INSERT INTO \"pandu_bandar_laut\" " + hv + " RETURN \"id\" INTO :id";
		const exec = f.query(queryText, 1);
		delete newPanduBandarLaut.id;
		const res = await exec;

		result(null, { id: id, ...newPanduBandarLaut });
};

PanduBandarLaut.findById = async (id, result) => {
	var queryText = "SELECT a.*  FROM \"pandu_bandar_laut\" a   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

PanduBandarLaut.getAll = async (param, result, cabang_id) => {
    var wheres = f.getParam(param, "pandu_bandar_laut");
    var query = "SELECT a.*  FROM \"pandu_bandar_laut\" a ";
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

PanduBandarLaut.updateById = async(id, pandubandarlaut, result, user_id) => {

	var arr = ["nama"];
	var str = f.getValueUpdate(pandubandarlaut, id, arr);
	var id_activity_log = await f.getid("activity_log");
	objek.koneksi = id;
	objek.action = pandubandarlaut.approval_status_id;
	objek.item = "pandubandarlaut";
	objek.remark = pandubandarlaut.activityLog ? pandubandarlaut.activityLog.remark : '';
	objek.user_id = user_id;
	const hval = await f.headerValue(objek, id_activity_log);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);
	await f.query("UPDATE \"pandu_bandar_laut\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...pandubandarlaut });
};

PanduBandarLaut.remove = (id, result) => {
	f.query("DELETE FROM \"pandu_bandar_laut\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = PanduBandarLaut;


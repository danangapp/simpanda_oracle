const f = require('../controllers/function');
var objek = new Object();

// constructor
const ActivityLog = function (activitylog) {
    this.date = activitylog.date;
    this.item = activitylog.item;
    this.action = activitylog.action;
    this.user_id = activitylog.user_id;
    this.remark = activitylog.remark;
    this.koneksi = activitylog.koneksi;
};

ActivityLog.create = async(newActivityLog, result, cabang_id, user_id) => {
		var id = await f.getid("activity_log");
		const hv = await f.headerValue(newActivityLog, id);
		var queryText = "INSERT INTO \"activity_log\" " + hv + " RETURN \"id\" INTO :id";
		const exec = f.query(queryText, 1);
		delete newActivityLog.id;
		const res = await exec;

		result(null, { id: id, ...newActivityLog });
};

ActivityLog.findById = async (id, result) => {
	var queryText = "SELECT a.* , a1.\"nama\" as \"user\" FROM \"activity_log\" a  LEFT JOIN \"user\" a1 ON a.\"user_id\" = a1.\"id\"   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

ActivityLog.getAll = async (param, result, cabang_id) => {
    var wheres = f.getParam(param, "activity_log");
    var query = "SELECT a.* , a1.\"nama\" as \"user\" FROM \"activity_log\" a  LEFT JOIN \"user\" a1 ON a.\"user_id\" = a1.\"id\" ";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"date\" LIKE '%" + param.q + "%' OR a.\"item\" LIKE '%" + param.q + "%' OR a.\"action\" LIKE '%" + param.q + "%' OR a.\"user_id\" LIKE '%" + param.q + "%' OR a.\"remark\" LIKE '%" + param.q + "%' OR a.\"koneksi\" LIKE '%" + param.q + "%'";	
		wheres += ")";
	}

	query += wheres;
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

ActivityLog.updateById = async(id, activitylog, result, user_id) => {

	var arr = ["date", "item", "action", "user_id", "remark", "koneksi"];
	var str = f.getValueUpdate(activitylog, id, arr);
	var id = await f.getid("activity_log");
	objek.koneksi = id;
	objek.action = "2";
	objek.user_id = user_id;
	const hval = await f.headerValue(objek, id);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);
	f.query("UPDATE \"activity_log\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...activitylog });
};

ActivityLog.remove = (id, result) => {
	f.query("DELETE FROM \"activity_log\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = ActivityLog;


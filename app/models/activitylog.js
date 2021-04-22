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
	this.keterangan = activitylog.keterangan;
};

ActivityLog.create = async (newActivityLog, result, cabang_id, user_id) => {
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
		wheres += "a.\"date\" LIKE '%" + param.q + "%' OR a.\"item\" LIKE '%" + param.q + "%' OR a.\"action\" LIKE '%" + param.q + "%' OR a.\"user_id\" LIKE '%" + param.q + "%' OR a.\"remark\" LIKE '%" + param.q + "%' OR a.\"koneksi\" LIKE '%" + param.q + "%' OR a.\"keterangan\" LIKE '%" + param.q + "%'";
		wheres += ")";
	}

	query += wheres;
	query += "ORDER BY a.\"id\" DESC";
	// console.log(query);
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

ActivityLog.updateById = async (id, activitylog, result, user_id) => {

	var arr = ["date", "item", "action", "user_id", "remark", "koneksi", "keterangan"];
	var str = f.getValueUpdate(activitylog, id, arr);
	var id_activity_log = await f.getid("activity_log");
	objek.koneksi = id;
	objek.action = activitylog.approval_status_id;
	objek.keterangan = activitylog.keterangan;
	objek.item = "activitylog";
	objek.user_id = user_id;
	if (activitylog.approval_status_id == 1) {
		objek.remark = "Pengajuan disetujui oleh pusat";
	} else if (activitylog.approval_status_id == 2) {
		objek.remark = "Pengajuan ditolak oleh pusat";
	} else if (activitylog.approval_status_id == 0) {
		objek.remark = "Pengajuan dirubah oleh admin cabang";
	}
	const hval = await f.headerValue(objek, id_activity_log);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);
	await f.query("UPDATE \"activity_log\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...activitylog });
};

ActivityLog.remove = (id, result) => {
	f.query("DELETE FROM \"activity_log\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = ActivityLog;


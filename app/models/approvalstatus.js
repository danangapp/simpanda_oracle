const f = require('../controllers/function');
var objek = new Object();

// constructor
const ApprovalStatus = function (approvalstatus) {
    this.nama = approvalstatus.nama;
};

ApprovalStatus.create = async(newApprovalStatus, result, cabang_id, user_id) => {
		var id = await f.getid("approval_status");
		const hv = await f.headerValue(newApprovalStatus, id);
		var queryText = "INSERT INTO \"approval_status\" " + hv + " RETURN \"id\" INTO :id";
		const exec = f.query(queryText, 1);
		delete newApprovalStatus.id;
		const res = await exec;

		result(null, { id: id, ...newApprovalStatus });
};

ApprovalStatus.findById = async (id, result) => {
	var queryText = "SELECT a.*  FROM \"approval_status\" a   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

ApprovalStatus.getAll = async (param, result, cabang_id) => {
    var wheres = f.getParam(param, "approval_status");
    var query = "SELECT a.*  FROM \"approval_status\" a ";
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

ApprovalStatus.updateById = async(id, approvalstatus, result, user_id) => {

	var arr = ["nama"];
	var str = f.getValueUpdate(approvalstatus, id, arr);
	var id_activity_log = await f.getid("activity_log");
	objek.koneksi = id;
	objek.action = approvalstatus.approval_status_id;
	objek.user_id = user_id;
	const hval = await f.headerValue(objek, id_activity_log);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);
	await f.query("UPDATE \"approval_status\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...approvalstatus });
};

ApprovalStatus.remove = (id, result) => {
	f.query("DELETE FROM \"approval_status\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = ApprovalStatus;


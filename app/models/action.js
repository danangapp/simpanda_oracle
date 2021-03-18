const f = require('../controllers/function');
var objek = new Object();

// constructor
const Action = function (action) {
    this.nama = action.nama;
};

Action.create = async(newAction, result, cabang_id, user_id) => {
	const hv = await f.headerValue(newAction);
	var queryText = "INSERT INTO \"action\" " + hv + " RETURN \"id\" INTO :id";
	const exec = f.query(queryText, 1);
	delete newAction.id;
	const res = await exec;
	var id = res.outBinds.id[0];

	result(null, { id: id, ...newAction });
};

Action.findById = async (id, result) => {
	var queryText = "SELECT a.*  FROM \"action\" a   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

Action.getAll = async (param, result, cabang_id) => {
    var wheres = f.getParam(param, "action");
    var query = "SELECT a.*  FROM \"action\" a ";
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

Action.updateById = async(id, action, result, user_id) => {

	var arr = ["nama"];
	var str = f.getValueUpdate(action, id, arr);
	objek.koneksi = id;
	objek.action = action.approval_status_id;
	objek.item = "action";
	objek.remark = action.activityLog ? action.activityLog.remark : '';
	objek.user_id = user_id;
	const hval = await f.headerValue(objek);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);
	await f.query("UPDATE \"action\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...action });
};

Action.remove = (id, result) => {
	f.query("DELETE FROM \"action\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = Action;


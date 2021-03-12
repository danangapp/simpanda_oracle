const f = require('../controllers/function');
var objek = new Object();

// constructor
const Action = function (action) {
    this.nama = action.nama;
};

Action.create = async(newAction, result) => {
		const hv = await f.headerValue(newAction, "action");
		var queryText = "INSERT INTO \"action\" " + hv + " RETURN \"id\" INTO :id";
		const exec = f.query(queryText, 1);
		delete newAction.id;
		const res = await exec;

		result(null, { id: res.outBinds.id[0], ...newAction });
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
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

Action.updateById = async(id, action, result) => {

	var arr = ["nama"];
	var str = f.getValueUpdate(action, id, arr);
	if (objek.action != null) {
		const hv = await f.headerValue(objek, "activity_log");
		await f.query("INSERT INTO \"activity_log\" " + hv, 2);
	}
	f.query("UPDATE \"action\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...action });
};

Action.remove = (id, result) => {
	f.query("DELETE FROM \"action\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = Action;


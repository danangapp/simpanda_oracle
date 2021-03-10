const f = require('../controllers/function');
var objek = new Object();

// constructor
const Role = function (role) {
    this.nama = role.nama;
};

Role.create = async(newRole, result) => {
		const hv = await f.headerValue(newRole, "role");
		var queryText = "INSERT INTO \"role\" " + hv + " RETURN \"id\" INTO :id";
		const exec = f.query(queryText, 1);
		delete newRole.id;
		const res = await exec;

		result(null, { id: res.outBinds.id[0], ...newRole });
};

Role.findById = async (id, result) => {
	var queryText = "SELECT a.*  FROM \"role\" a   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

Role.getAll = async (param, result) => {
    var wheres = f.getParam(param, "role");
    var query = "SELECT a.*  FROM \"role\" a ";
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

Role.updateById = async(id, role, result) => {

	var arr = ["nama"];
	var str = f.getValueUpdate(role, id, arr);
	if (objek.action != null) {
		const hv = await f.headerValue(objek, "activity_log");
		await f.query("INSERT INTO \"activity_log\" " + hv, 2);
	}
	f.query("UPDATE \"role\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...role });
};

Role.remove = (id, result) => {
	f.query("DELETE FROM \"role\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = Role;


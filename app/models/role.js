const f = require('../controllers/function');
var objek = new Object();

// constructor
const Role = function (role) {
    this.nama = role.nama;
};

Role.create = async(newRole, result, cabang_id, user_id) => {
		var id = await f.getid("role");
		const hv = await f.headerValue(newRole, id);
		var queryText = "INSERT INTO \"role\" " + hv + " RETURN \"id\" INTO :id";
		const exec = f.query(queryText, 1);
		delete newRole.id;
		const res = await exec;

		result(null, { id: id, ...newRole });
};

Role.findById = async (id, result) => {
	var queryText = "SELECT a.*  FROM \"role\" a   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

Role.getAll = async (param, result, cabang_id) => {
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

Role.updateById = async(id, role, result, user_id) => {

	var arr = ["nama"];
	var str = f.getValueUpdate(role, id, arr);
	var id = await f.getid("activity_log");
	objek.koneksi = id;
	objek.action = "2";
	objek.user_id = user_id;
	const hval = await f.headerValue(objek, id);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);
	f.query("UPDATE \"role\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...role });
};

Role.remove = (id, result) => {
	f.query("DELETE FROM \"role\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = Role;


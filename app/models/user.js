const f = require('../controllers/function');
var objek = new Object();

// constructor
const User = function (user) {
	this.username = user.username;
	this.nama = user.nama;
	this.password = user.password;
	this.user_group_id = user.user_group_id;
	this.role_id = user.role_id;
	this.accessToken = user.accessToken;
	this.refreshToken = user.refreshToken;
};

User.create = async (newUser, result) => {
	var rand = function () {
		return Math.random().toString(36).substr(2); // remove `0.`
	};
	var token = function () {
		return rand() + rand(); // to make it longer
	};
	newUser.accessToken = f.hashCode(token())
	newUser.password = f.hashCode(newUser.password)
	const hv = await f.headerValue(newUser, "user");
	var queryText = "INSERT INTO \"user\" " + hv + " RETURN \"id\" INTO :id";
	const exec = f.query(queryText, 1);
	delete newUser.id;
	const res = await exec;

	result(null, { id: res.outBinds.id[0], ...newUser });
};

User.findById = async (id, result) => {
	var queryText = "SELECT a.\"username\", a.\"nama\", \"a.user_group_id\" , a1.\"nama\", a1.\"keterangan\", a1.\"cabang_id\", a.\"accessToken\", a.\"refreshToken\", a2.\"nama\" as \"cabang\" FROM \"user\" a  INNER JOIN \"user_group\" a1 ON a.\"user_group_id\" = a1.\"id\" INNER JOIN \"cabang\" a2 ON a1.\"cabang_id\" = a2.\"id\"  WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

User.getAll = async (param, result) => {
	var wheres = f.getParam(param);
	var query = "SELECT a.\"username\", a.\"nama\", \"a.user_group_id\" , a1.\"nama\", a1.\"keterangan\", a1.\"cabang_id\", a.\"accessToken\", a.\"refreshToken\", a2.\"nama\" as \"cabang\" FROM \"user\" a  INNER JOIN \"user_group\" a1 ON a.\"user_group_id\" = a1.\"id\" INNER JOIN \"cabang\" a2 ON a1.\"cabang_id\" = a2.\"id\"  WHERE a.\"id\" ";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"username\" LIKE '%" + param.q + "%' OR a.\"nama\" LIKE '%" + param.q + "%' OR a.\"password\" LIKE '%" + param.q + "%' OR a.\"user_group_id\" LIKE '%" + param.q + "%' OR a.\"role_id\" LIKE '%" + param.q + "%' OR a.\"accessToken\" LIKE '%" + param.q + "%' OR a.\"refreshToken\" LIKE '%" + param.q + "%'";
		wheres += ")";
	}

	query += wheres;
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

User.login = async (req, result) => {
	req.password = f.hashCode(req.password);
	var query = "SELECT a.\"username\", a.\"nama\", a.\"user_group_id\" , a1.\"nama\" as \"user_group\" FROM \"user\" a  LEFT JOIN \"user_group\" a1 ON a.\"user_group_id\" = a1.\"id\" WHERE a.\"username\" = '" + req.username + "' AND \"password\" = '" + req.password + "' ";
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
};

User.updateById = async (id, user, result) => {

	var arr = ["username", "nama", "password", "user_group_id", "role_id", "accessToken", "refreshToken"];
	var str = f.getValueUpdate(user, id, arr);
	if (objek.action != null) {
		const hv = await f.headerValue(objek, "activity_log");
		f.query("INSERT INTO \"activity_log\" " + hv, 2);
	}
	f.query("UPDATE \"user\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...user });
};

User.remove = (id, result) => {
	f.query("DELETE FROM \"user\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = User;


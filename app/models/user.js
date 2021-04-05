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
	// newUser.accessToken = f.hashCode(token())
	newUser.password = f.hashCode(newUser.password)
	var id = await f.getid("user");
	const hv = await f.headerValue(newUser, id);
	var queryText = "INSERT INTO \"user\" " + hv + " RETURN \"id\" INTO :id";
	const exec = f.query(queryText, 1);
	delete newUser.id;
	const res = await exec;

	result(null, { id: res.outBinds.id[0], ...newUser });
};

User.findById = async (id, result) => {
	var queryText = "SELECT a.\"username\", a.\"nama\", a.\"user_group_id\", a1.\"keterangan\", a1.\"cabang_id\", a2.\"nama\" as \"cabang\" FROM \"user\" a  INNER JOIN \"user_group\" a1 ON a.\"user_group_id\" = a1.\"id\" INNER JOIN \"cabang\" a2 ON a1.\"cabang_id\" = a2.\"id\"  WHERE a.\"id\" = '" + id + "'";
	console.log(queryText);
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

User.getAll = async (param, result) => {
	var wheres = f.getParam(param);
	var query = "SELECT a.\"id\", a.\"username\", a.\"nama\", a.\"user_group_id\" , a1.\"nama\", a1.\"keterangan\", a1.\"cabang_id\", a2.\"nama\" as \"cabang\" FROM \"user\" a  INNER JOIN \"user_group\" a1 ON a.\"user_group_id\" = a1.\"id\" INNER JOIN \"cabang\" a2 ON a1.\"cabang_id\" = a2.\"id\"";
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

Date.prototype.addHours = function (h) {
	this.setHours(this.getHours() + h);
	return this;
}

User.login = async (req, result) => {
	req.password = f.hashCode(req.password);
	var query = `SELECT a."id", a."username", a."nama", a."user_group_id" , a1."nama" as "user_group", a1."cabang_id" FROM "user" a  LEFT JOIN "user_group" a1 ON a."user_group_id" = a1."id" WHERE a."username" = '${req.username}' AND "password" = '${req.password}'`;
	const exec = f.query(query);
	const res = await exec;
	const rows = res.rows[0];

	var rand = function () {
		return Math.random().toString(36).substr(2); // remove `0.`
	};
	var token = function () {
		return rand() + rand();
	};

	if (rows) {
		var obj = {}
		obj.user_id = rows.id;
		obj.cabang_id = rows.cabang_id;
		obj.accessToken = f.hashCode(token());
		obj.refreshToken = f.hashCode(token());
		const timeExpired = f.toDate(new Date().addHours(1), "YYYY/MM/DD HH:mm:ss");
		obj.expired = timeExpired;

		var id = await f.getid("authorization");
		const hv = await f.headerValue(obj, id);
		// await f.query(`DELETE FROM "authorization" WHERE "user_id" = '${rows.id}'`, 2);
		await f.query(`INSERT INTO "authorization" ${hv}`, 2);


		query = `SELECT c."config", c."parent", c."id", c."url", c."nama", c."icon" FROM "user" a INNER JOIN "user_access" b ON a."user_group_id" = b."user_group_id" INNER JOIN "menu" c ON b."menu_id" = c."id" WHERE a."id" = '${rows.id}'`;
		const exex = f.query(query);
		const rex = await exex;
		const menu = rex.rows;
		delete obj.id;
		obj.username = rows.username;
		obj.nama = rows.nama;
		let merge = { ...obj, menu }

		result(null, merge);
	} else {
		result(null, "Cannot Get Login Data");
	}

};

User.updateById = async (id, user, result) => {

	var arr = ["username", "nama", "password", "user_group_id", "role_id"];
	user.password = f.hashCode(user.password)
	var str = f.getValueUpdate(user, id, arr);
	// console.log(str);
	f.query("UPDATE \"user\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...user });
};

User.remove = (id, result) => {
	f.query("DELETE FROM \"user\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = User;


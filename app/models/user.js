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

const checkPassword = (str) => {
	var re = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}$/;
	return re.test(str);
}

User.create = async (newUser, result) => {
	var check = `SELECT "username" FROM "user" WHERE "username" = '${newUser.username}'`
	var dataCheck = await f.query(check)

	const cekPass = checkPassword(newUser.password);
	if (!cekPass) {
		result(null, { 'status': false, 'message': 'Password harus memiliki minimal 8 karakter, terdapat huruf besar, huruf kecil dan angka' })
		return false;
	}

	if (dataCheck.rows.length > 0) {
		if (dataCheck.rows[0].username.toLowerCase() === newUser.username.toLowerCase()) {
			result(null, { 'status': false, 'message': 'Maaf, Username sudah terdaftar !' })
		}
		return false
	}

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
	result(null, { id: id, ...newUser });
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
	var query = "SELECT a.\"id\",a.\"flag\",  a.\"username\", a.\"nama\", a.\"user_group_id\" , a1.\"nama\", a1.\"keterangan\", a1.\"cabang_id\", a2.\"nama\" as \"cabang\" FROM \"user\" a  INNER JOIN \"user_group\" a1 ON a.\"user_group_id\" = a1.\"id\" INNER JOIN \"cabang\" a2 ON a1.\"cabang_id\" = a2.\"id\"";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += `LOWER(a."username") LIKE LOWER('%${param.q}%') OR LOWER(a."nama") LIKE LOWER('%${param.q}%')`;
		wheres += ")";
	}

	query += wheres;
	query += `ORDER BY a."upd_date" DESC`;
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

	var query = `SELECT a."id", a."username", a."nama", a."user_group_id" , a1."nama" as "user_group", a1."cabang_id", a."password", a."flag" FROM "user" a  LEFT JOIN "user_group" a1 ON a."user_group_id" = a1."id" WHERE a."username" = '${req.username}'`;
	const exec = f.query(query);
	const res = await exec;
	const rows = res.rows[0];

	if (res.rows.length == 0) {
		result(null, { 'status': false, 'message': 'Username tidak ada' });
	}

	console.log("test ya", rows.flag)
	if (rows.flag >= 2) {
		result(null, { 'status': false, 'message': 'Password salah lebih dari 3, untuk reset silahkan hubungi Kantor Pusat' });
		return false;
	}

	if (rows.password != req.password) {
		await f.query(`UPDATE "user" SET "flag"="flag"+1 WHERE "username"='${req.username}'`, 2);
		result(null, { 'status': false, 'message': `Password salah ${rows.flag + 1}/3` });
		return false;
	}

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
		await f.query(`UPDATE "user" SET "flag"=0 WHERE "username"='${req.username}'`, 2);

		query = `SELECT c."config", c."parent", c."id", c."url", c."nama", c."icon" FROM "user" a INNER JOIN "user_access" b ON a."user_group_id" = b."user_group_id" INNER JOIN "menu" c ON b."menu_id" = c."id" WHERE a."id" = '${rows.id}'`;
		const exex = f.query(query);
		const rex = await exex;
		const menu = rex.rows;
		delete obj.id;
		obj.username = rows.username;
		obj.nama = rows.nama;
		delete obj.password;
		let merge = { ...obj, menu }

		result(null, merge);
	} else {
		result(null, "Cannot Get Login Data");
	}

};

User.updateById = async (id, user, result) => {
	console.log(user)
	
	var check = `SELECT "username" FROM "user" WHERE "username" = '${user.username}' AND "id" != '${id}' `
	var dataCheck = await f.query(check)

	user.flag = 0;
	var arr = ["username", "nama", "password", "user_group_id", "role_id", "flag"];

	if (user.type === undefined) {
		const cekPass = checkPassword(user.password);
		if (!cekPass) {
			result(null, { 'status': false, 'message': 'Password harus memiliki minimal 8 karakter, terdapat huruf besar, huruf kecil dan angka' })
			return false;
		}

		if (dataCheck.rows.length > 0) {
			result(null, { 'status': false, 'message': 'Maaf, Username sudah terdaftar !' })
			return false
		}

		

		if (user.password == "" || !user.password) {
			console.log(user)
			delete user.password;
		} else {
			user.password = f.hashCode(user.password)
		}
	}else{
		user.password = f.hashCode('123456A')
	}

	

	

	var str = f.getValueUpdate(user, id, arr);
	f.query("UPDATE \"user\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	f.query("DELETE \"authorization\" WHERE \"user_id\" = '" + id + "'", 2);
	result(null, { id: id, ...user });
};

User.remove = (id, result) => {
	f.query("DELETE FROM \"user\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = User;


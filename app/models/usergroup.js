const f = require('../controllers/function');
var objek = new Object();

// constructor
const UserGroup = function (usergroup) {
	this.nama = usergroup.nama;
	this.keterangan = usergroup.keterangan;
	this.cabang_id = usergroup.cabang_id;
};

UserGroup.create = async (newUserGroup, result, cabang_id, user_id) => {
	const user_access = newUserGroup.user_access;
	delete newUserGroup.user_access;
	var id = await f.getid("user_group");
	const hv = await f.headerValue(newUserGroup, id);
	var queryText = "INSERT INTO \"user_group\" " + hv + " RETURN \"id\" INTO :id";
	const exec = f.query(queryText, 1);
	delete newUserGroup.id;
	const res = await exec;

	for (var i in user_access) {
		const x = user_access[i];
		var a = {};
		a['user_group_id'] = id;
		a['menu_id'] = x;
		// console.log(a);

		var id_access = await f.getid("user_access");
		const hv = await f.headerValue(a, id_access);
		var queryText = "INSERT INTO \"user_access\" " + hv;
		await f.query(queryText);
	}

	result(null, { id: id, ...newUserGroup });
};

UserGroup.findById = async (id, result) => {
	const resQuery = await f.query(`SELECT b."nama", b."id" FROM "user_access" a INNER JOIN "menu" b ON a."menu_id" = b."id" WHERE a."user_group_id" = '${id}'`);
	var queryText = "SELECT a.* , a1.\"nama\" as \"cabang\" FROM \"user_group\" a  LEFT JOIN \"cabang\" a1 ON a.\"cabang_id\" = a1.\"id\"   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	var x = {};
	for (var a in resQuery.rows) {
		x[resQuery.rows[a].nama] = resQuery.rows[a].id
	}
	const user_access = { "user_access": x }
	let merge = { ...res.rows[0], ...user_access }
	result(null, merge);
}

UserGroup.getAll = async (param, result, cabang_id) => {
	var wheres = f.getParam(param, "user_group");
	var query = "SELECT a.* , a1.\"nama\" as \"cabang\" FROM \"user_group\" a  LEFT JOIN \"cabang\" a1 ON a.\"cabang_id\" = a1.\"id\" ";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += `LOWER(a."nama") LIKE LOWER('%${param.q}%') OR LOWER(a."keterangan") LIKE LOWER('%${param.q}%') OR LOWER(a."cabang_id") LIKE LOWER('%${param.q}%')`;
		wheres += ")";
	}

	wheres += f.whereCabang(cabang_id, `a."cabang_id"`, wheres.length);
	query += wheres;
	query += `ORDER BY a."upd_date" DESC`;
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

UserGroup.updateById = async (id, usergroup, result, user_id) => {
	const user_access = usergroup.user_access;
	var arr = ["user_group_id", "menu_id"]
	f.query("DELETE FROM \"user_access\" WHERE \"user_group_id\"='" + id + "'");
	for (var i in user_access) {
		const x = user_access[i];
		var a = {};
		a['user_group_id'] = id;
		a['menu_id'] = x;

		var id_access = await f.getid("user_access");
		const hv = await f.headerValue(a, id_access);
		var queryText = "INSERT INTO \"user_access\" " + hv;
		await f.query(queryText);
	}
	delete usergroup.user_access;

	var arr = ["nama", "keterangan", "cabang_id"];
	var str = f.getValueUpdate(usergroup, id, arr);
	var id_activity_log = await f.getid("activity_log");
	objek.koneksi = id;
	objek.action = usergroup.approval_status_id;
	objek.keterangan = usergroup.keterangan;
	objek.item = "usergroup";
	objek.user_id = user_id;
	if (usergroup.approval_status_id == 1) {
		objek.remark = "Pengajuan disetujui oleh pusat";
	} else if (usergroup.approval_status_id == 2) {
		objek.remark = "Pengajuan ditolak oleh pusat";
	} else if (usergroup.approval_status_id == 0) {
		objek.remark = "Pengajuan dirubah oleh admin cabang";
	}
	const hval = await f.headerValue(objek, id_activity_log);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);
	await f.query("UPDATE \"user_group\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...usergroup });
};

UserGroup.remove = (id, result) => {
	f.query("DELETE FROM \"user_group\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = UserGroup;


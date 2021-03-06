const f = require('../controllers/function');
var objek = new Object();

// constructor
const UserAccess = function (useraccess) {
    this.user_group_id = useraccess.user_group_id;
    this.menu_id = useraccess.menu_id;
};

UserAccess.create = async(newUserAccess, result, cabang_id, user_id) => {
	var id = await f.getid("user_access");
	const hv = await f.headerValue(newUserAccess, id);
	var queryText = "INSERT INTO \"user_access\" " + hv + " RETURN \"id\" INTO :id";
	const exec = f.query(queryText, 1);
	delete newUserAccess.id;
	const res = await exec;

	result(null, { id: id, ...newUserAccess });
};

UserAccess.findById = async (id, result) => {
	var queryText = "SELECT a.* , a1.\"nama\" as \"user_group\", a2.\"nama\" as \"menu\" FROM \"user_access\" a  LEFT JOIN \"user_group\" a1 ON a.\"user_group_id\" = a1.\"id\"  LEFT JOIN \"menu\" a2 ON a.\"menu_id\" = a2.\"id\"   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

UserAccess.getAll = async (param, result, cabang_id) => {
    var wheres = f.getParam(param, "user_access");
    var query = "SELECT a.* , a1.\"nama\" as \"user_group\", a2.\"nama\" as \"menu\" FROM \"user_access\" a  LEFT JOIN \"user_group\" a1 ON a.\"user_group_id\" = a1.\"id\"  LEFT JOIN \"menu\" a2 ON a.\"menu_id\" = a2.\"id\" ";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"user_group_id\" LIKE '%" + param.q + "%' OR a.\"menu_id\" LIKE '%" + param.q + "%'";	
		wheres += ")";
	}

	query += wheres;
	query += "ORDER BY a.\"id\" DESC";
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

UserAccess.updateById = async(id, useraccess, result, user_id) => {

	var arr = ["user_group_id", "menu_id"];
	var str = f.getValueUpdate(useraccess, id, arr);
	var id_activity_log = await f.getid("activity_log");
	objek.koneksi = id;
	objek.action = useraccess.approval_status_id;
	objek.keterangan = useraccess.keterangan;
	objek.item = "useraccess";
	objek.user_id = user_id;
	if(useraccess.approval_status_id == 1){
		objek.remark = "Pengajuan disetujui oleh pusat";
	}else if(useraccess.approval_status_id == 2){
		objek.remark = "Pengajuan ditolak oleh pusat";
	}else if(useraccess.approval_status_id == 0){
		objek.remark = "Pengajuan dirubah oleh admin cabang";
	}
	const hval = await f.headerValue(objek, id_activity_log);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);
	await f.query("UPDATE \"user_access\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...useraccess });
};

UserAccess.remove = (id, result) => {
	f.query("DELETE FROM \"user_access\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = UserAccess;


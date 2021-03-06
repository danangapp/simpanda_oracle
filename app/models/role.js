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
	query += "ORDER BY a.\"id\" DESC";
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

Role.updateById = async(id, role, result, user_id) => {

	var arr = ["nama"];
	var str = f.getValueUpdate(role, id, arr);
	var id_activity_log = await f.getid("activity_log");
	objek.koneksi = id;
	objek.action = role.approval_status_id;
	objek.keterangan = role.keterangan;
	objek.item = "role";
	objek.user_id = user_id;
	if(role.approval_status_id == 1){
		objek.remark = "Pengajuan disetujui oleh pusat";
	}else if(role.approval_status_id == 2){
		objek.remark = "Pengajuan ditolak oleh pusat";
	}else if(role.approval_status_id == 0){
		objek.remark = "Pengajuan dirubah oleh admin cabang";
	}
	const hval = await f.headerValue(objek, id_activity_log);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);
	await f.query("UPDATE \"role\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...role });
};

Role.remove = (id, result) => {
	f.query("DELETE FROM \"role\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = Role;


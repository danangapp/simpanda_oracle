const f = require('../controllers/function');
var objek = new Object();

// constructor
const Authorization = function (authorization) {
    this.user_id = authorization.user_id;
    this.accessToken = authorization.accessToken;
    this.refreshToken = authorization.refreshToken;
    this.expired = authorization.expired;
    this.cabang_id = authorization.cabang_id;
};

Authorization.create = async(newAuthorization, result, cabang_id, user_id) => {
	var id = await f.getid("authorization");
	const hv = await f.headerValue(newAuthorization, id);
	var queryText = "INSERT INTO \"authorization\" " + hv + " RETURN \"id\" INTO :id";
	const exec = f.query(queryText, 1);
	delete newAuthorization.id;
	const res = await exec;

	result(null, { id: id, ...newAuthorization });
};

Authorization.findById = async (id, result) => {
	var queryText = "SELECT a.* , a1.\"nama\" as \"user\", a2.\"nama\" as \"cabang\" FROM \"authorization\" a  LEFT JOIN \"user\" a1 ON a.\"user_id\" = a1.\"id\"  LEFT JOIN \"cabang\" a2 ON a.\"cabang_id\" = a2.\"id\"   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

Authorization.getAll = async (param, result, cabang_id) => {
    var wheres = f.getParam(param, "authorization");
    var query = "SELECT a.* , a1.\"nama\" as \"user\", a2.\"nama\" as \"cabang\" FROM \"authorization\" a  LEFT JOIN \"user\" a1 ON a.\"user_id\" = a1.\"id\"  LEFT JOIN \"cabang\" a2 ON a.\"cabang_id\" = a2.\"id\" ";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"user_id\" LIKE '%" + param.q + "%' OR a.\"accessToken\" LIKE '%" + param.q + "%' OR a.\"refreshToken\" LIKE '%" + param.q + "%' OR a.\"expired\" LIKE '%" + param.q + "%' OR a.\"cabang_id\" LIKE '%" + param.q + "%'";	
		wheres += ")";
	}

	wheres += f.whereCabang(cabang_id, `a."cabang_id"`, wheres.length);
	query += wheres;
	query += "ORDER BY a.\"id\" DESC";
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

Authorization.updateById = async(id, authorization, result, user_id) => {

	var arr = ["user_id", "accessToken", "refreshToken", "expired", "cabang_id"];
	var str = f.getValueUpdate(authorization, id, arr);
	var id_activity_log = await f.getid("activity_log");
	objek.koneksi = id;
	objek.action = authorization.approval_status_id;
	objek.item = "authorization";
	objek.user_id = user_id;
	if(authorization.approval_status_id == 1){
		objek.remark = "Pengajuan disetujui oleh pusat";
	}else if(authorization.approval_status_id == 2){
		objek.remark = "Pengajuan ditolak oleh pusat";
	}else if(authorization.approval_status_id == 0){
		objek.remark = "Pengajuan dibuat oleh admin cabang";
	}
	const hval = await f.headerValue(objek, id_activity_log);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);
	await f.query("UPDATE \"authorization\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...authorization });
};

Authorization.remove = (id, result) => {
	f.query("DELETE FROM \"authorization\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = Authorization;


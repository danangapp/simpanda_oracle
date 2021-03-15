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

Authorization.create = async(newAuthorization, result, cabang_id) => {
		const hv = await f.headerValue(newAuthorization, "authorization");
		var queryText = "INSERT INTO \"authorization\" " + hv + " RETURN \"id\" INTO :id";
		const exec = f.query(queryText, 1);
		delete newAuthorization.id;
		const res = await exec;

		result(null, { id: res.outBinds.id[0], ...newAuthorization });
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
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

Authorization.updateById = async(id, authorization, result) => {

	var arr = ["user_id", "accessToken", "refreshToken", "expired", "cabang_id"];
	var str = f.getValueUpdate(authorization, id, arr);
	if (objek.action != null) {
		const hv = await f.headerValue(objek, "activity_log");
		await f.query("INSERT INTO \"activity_log\" " + hv, 2);
	}
	f.query("UPDATE \"authorization\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...authorization });
};

Authorization.remove = (id, result) => {
	f.query("DELETE FROM \"authorization\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = Authorization;


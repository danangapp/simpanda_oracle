const f = require('../controllers/function');
var objek = new Object();

// constructor
const SbpData = function (sbpdata) {
    this.question_id = sbpdata.question_id;
    this.answer = sbpdata.answer;
    this.sarana_bantu_pemandu_id = sbpdata.sarana_bantu_pemandu_id;
};

SbpData.create = async(newSbpData, result, cabang_id, user_id) => {
	var id = await f.getid("sbp_data");
	const hv = await f.headerValue(newSbpData, id);
	var queryText = "INSERT INTO \"sbp_data\" " + hv + " RETURN \"id\" INTO :id";
	const exec = f.query(queryText, 1);
	delete newSbpData.id;
	const res = await exec;

	result(null, { id: id, ...newSbpData });
};

SbpData.findById = async (id, result) => {
	var queryText = "SELECT a.* , a1.\"nama\" as \"question\", a2.\"nama\" as \"sarana_bantu_pemandu\" FROM \"sbp_data\" a  LEFT JOIN \"question\" a1 ON a.\"question_id\" = a1.\"id\"  LEFT JOIN \"sarana_bantu_pemandu\" a2 ON a.\"sarana_bantu_pemandu_id\" = a2.\"id\"   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

SbpData.getAll = async (param, result, cabang_id) => {
    var wheres = f.getParam(param, "sbp_data");
    var query = "SELECT a.* , a1.\"nama\" as \"question\", a2.\"nama\" as \"sarana_bantu_pemandu\" FROM \"sbp_data\" a  LEFT JOIN \"question\" a1 ON a.\"question_id\" = a1.\"id\"  LEFT JOIN \"sarana_bantu_pemandu\" a2 ON a.\"sarana_bantu_pemandu_id\" = a2.\"id\" ";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"question_id\" LIKE '%" + param.q + "%' OR a.\"answer\" LIKE '%" + param.q + "%' OR a.\"sarana_bantu_pemandu_id\" LIKE '%" + param.q + "%'";	
		wheres += ")";
	}

	query += wheres;
	query += "ORDER BY a.\"id\" DESC";
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

SbpData.updateById = async(id, sbpdata, result, user_id) => {

	var arr = ["question_id", "answer", "sarana_bantu_pemandu_id"];
	var str = f.getValueUpdate(sbpdata, id, arr);
	var id_activity_log = await f.getid("activity_log");
	objek.koneksi = id;
	objek.action = sbpdata.approval_status_id;
	objek.item = "sbpdata";
	objek.remark = sbpdata.activityLog ? sbpdata.activityLog.remark : '';
	objek.user_id = user_id;
	const hval = await f.headerValue(objek, id_activity_log);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);
	await f.query("UPDATE \"sbp_data\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...sbpdata });
};

SbpData.remove = (id, result) => {
	f.query("DELETE FROM \"sbp_data\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = SbpData;


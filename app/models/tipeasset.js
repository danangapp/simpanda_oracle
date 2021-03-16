const f = require('../controllers/function');
var objek = new Object();

// constructor
const TipeAsset = function (tipeasset) {
    this.nama = tipeasset.nama;
    this.type = tipeasset.type;
    this.sarana_config_question = tipeasset.sarana_config_question;
    this.flag = tipeasset.flag;
};

TipeAsset.create = async(newTipeAsset, result, cabang_id, user_id) => {
		var id = await f.getid("tipe_asset");
		const hv = await f.headerValue(newTipeAsset, id);
		var queryText = "INSERT INTO \"tipe_asset\" " + hv + " RETURN \"id\" INTO :id";
		const exec = f.query(queryText, 1);
		delete newTipeAsset.id;
		const res = await exec;

		result(null, { id: id, ...newTipeAsset });
};

TipeAsset.findById = async (id, result) => {
	var queryText = "SELECT a.*  FROM \"tipe_asset\" a   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

TipeAsset.getAll = async (param, result, cabang_id) => {
    var wheres = f.getParam(param, "tipe_asset");
    var query = "SELECT a.*  FROM \"tipe_asset\" a ";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"nama\" LIKE '%" + param.q + "%' OR a.\"type\" LIKE '%" + param.q + "%' OR a.\"sarana_config_question\" LIKE '%" + param.q + "%' OR a.\"flag\" LIKE '%" + param.q + "%'";	
		wheres += ")";
	}

	query += wheres;
	query += "ORDER BY a.\"id\" DESC";
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

TipeAsset.updateById = async(id, tipeasset, result, user_id) => {

	var arr = ["nama", "type", "sarana_config_question", "flag"];
	var str = f.getValueUpdate(tipeasset, id, arr);
	var id_activity_log = await f.getid("activity_log");
	objek.koneksi = id;
	objek.action = tipeasset.approval_status_id;
	objek.item = "tipeasset";
	objek.remark = tipeasset.activityLog ? tipeasset.activityLog.remark : '';
	objek.user_id = user_id;
	const hval = await f.headerValue(objek, id_activity_log);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);
	await f.query("UPDATE \"tipe_asset\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...tipeasset });
};

TipeAsset.remove = (id, result) => {
	f.query("DELETE FROM \"tipe_asset\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = TipeAsset;


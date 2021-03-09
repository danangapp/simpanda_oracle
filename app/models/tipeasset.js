const f = require('../controllers/function');
var objek = new Object();

// constructor
const TipeAsset = function (tipeasset) {
    this.nama = tipeasset.nama;
    this.type = tipeasset.type;
    this.sarana_config_question = tipeasset.sarana_config_question;
    this.flag = tipeasset.flag;
};

TipeAsset.create = async(newTipeAsset, result) => {
		const hv = await f.headerValue(newTipeAsset, "tipe_asset");
		var queryText = "INSERT INTO \"tipe_asset\" " + hv + " RETURN \"id\" INTO :id";
		const exec = f.query(queryText, 1);
		delete newTipeAsset.id;
		const res = await exec;

		result(null, { id: res.outBinds.id[0], ...newTipeAsset });
};

TipeAsset.findById = async (id, result) => {
	var queryText = "SELECT a.*  FROM \"tipe_asset\" a   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

TipeAsset.getAll = async (param, result) => {
    var wheres = f.getParam(param);
    var query = "SELECT a.*  FROM \"tipe_asset\" a ";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"nama\" LIKE '%" + param.q + "%' OR a.\"type\" LIKE '%" + param.q + "%' OR a.\"sarana_config_question\" LIKE '%" + param.q + "%' OR a.\"flag\" LIKE '%" + param.q + "%'";	
		wheres += ")";
	}

	query += wheres;
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

TipeAsset.updateById = async(id, tipeasset, result) => {

	var arr = ["nama", "type", "sarana_config_question", "flag"];
	var str = f.getValueUpdate(tipeasset, id, arr);
	if (objek.action != null) {
		const hv = await f.headerValue(objek, "activity_log");
		f.query("INSERT INTO \"activity_log\" " + hv, 2);
	}
	f.query("UPDATE \"tipe_asset\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...tipeasset });
};

TipeAsset.remove = (id, result) => {
	f.query("DELETE FROM \"tipe_asset\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = TipeAsset;


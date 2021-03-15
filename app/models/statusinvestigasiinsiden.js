const f = require('../controllers/function');
var objek = new Object();

// constructor
const StatusInvestigasiInsiden = function (statusinvestigasiinsiden) {
    this.nama = statusinvestigasiinsiden.nama;
};

StatusInvestigasiInsiden.create = async(newStatusInvestigasiInsiden, result, cabang_id, user_id) => {
		var id = await f.getid("status_investigasi_insiden");
		const hv = await f.headerValue(newStatusInvestigasiInsiden, id);
		var queryText = "INSERT INTO \"status_investigasi_insiden\" " + hv + " RETURN \"id\" INTO :id";
		const exec = f.query(queryText, 1);
		delete newStatusInvestigasiInsiden.id;
		const res = await exec;

		result(null, { id: id, ...newStatusInvestigasiInsiden });
};

StatusInvestigasiInsiden.findById = async (id, result) => {
	var queryText = "SELECT a.*  FROM \"status_investigasi_insiden\" a   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

StatusInvestigasiInsiden.getAll = async (param, result, cabang_id) => {
    var wheres = f.getParam(param, "status_investigasi_insiden");
    var query = "SELECT a.*  FROM \"status_investigasi_insiden\" a ";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"nama\" LIKE '%" + param.q + "%'";	
		wheres += ")";
	}

	query += wheres;
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

StatusInvestigasiInsiden.updateById = async(id, statusinvestigasiinsiden, result, user_id) => {

	var arr = ["nama"];
	var str = f.getValueUpdate(statusinvestigasiinsiden, id, arr);
	var id_activity_log = await f.getid("activity_log");
	objek.koneksi = id;
	objek.action = "2";
	objek.user_id = user_id;
	const hval = await f.headerValue(objek, id_activity_log);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);
	await f.query("UPDATE \"status_investigasi_insiden\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...statusinvestigasiinsiden });
};

StatusInvestigasiInsiden.remove = (id, result) => {
	f.query("DELETE FROM \"status_investigasi_insiden\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = StatusInvestigasiInsiden;


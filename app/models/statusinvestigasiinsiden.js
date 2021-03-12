const f = require('../controllers/function');
var objek = new Object();

// constructor
const StatusInvestigasiInsiden = function (statusinvestigasiinsiden) {
    this.nama = statusinvestigasiinsiden.nama;
};

StatusInvestigasiInsiden.create = async(newStatusInvestigasiInsiden, result) => {
		const hv = await f.headerValue(newStatusInvestigasiInsiden, "status_investigasi_insiden");
		var queryText = "INSERT INTO \"status_investigasi_insiden\" " + hv + " RETURN \"id\" INTO :id";
		const exec = f.query(queryText, 1);
		delete newStatusInvestigasiInsiden.id;
		const res = await exec;

		result(null, { id: res.outBinds.id[0], ...newStatusInvestigasiInsiden });
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

StatusInvestigasiInsiden.updateById = async(id, statusinvestigasiinsiden, result) => {

	var arr = ["nama"];
	var str = f.getValueUpdate(statusinvestigasiinsiden, id, arr);
	if (objek.action != null) {
		const hv = await f.headerValue(objek, "activity_log");
		await f.query("INSERT INTO \"activity_log\" " + hv, 2);
	}
	f.query("UPDATE \"status_investigasi_insiden\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...statusinvestigasiinsiden });
};

StatusInvestigasiInsiden.remove = (id, result) => {
	f.query("DELETE FROM \"status_investigasi_insiden\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = StatusInvestigasiInsiden;


const f = require('../controllers/function');
var objek = new Object();

// constructor
const InvestigasiInsidenTim = function (investigasiinsidentim) {
    this.nama = investigasiinsidentim.nama;
    this.jabatan = investigasiinsidentim.jabatan;
    this.tgl = investigasiinsidentim.tgl;
    this.status = investigasiinsidentim.status;
    this.investigasi_insiden_id = investigasiinsidentim.investigasi_insiden_id;
};

InvestigasiInsidenTim.create = async(newInvestigasiInsidenTim, result) => {
		const hv = await f.headerValue(newInvestigasiInsidenTim, "investigasi_insiden_tim");
		var queryText = "INSERT INTO \"investigasi_insiden_tim\" " + hv + " RETURN \"id\" INTO :id";
		const exec = f.query(queryText, 1);
		delete newInvestigasiInsidenTim.id;
		const res = await exec;

		result(null, { id: res.outBinds.id[0], ...newInvestigasiInsidenTim });
};

InvestigasiInsidenTim.findById = async (id, result) => {
	var queryText = "SELECT a.* , a1.\"nama\" as \"investigasi_insiden\" FROM \"investigasi_insiden_tim\" a  LEFT JOIN \"investigasi_insiden\" a1 ON a.\"investigasi_insiden_id\" = a1.\"id\"   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

InvestigasiInsidenTim.getAll = async (param, result) => {
    var wheres = f.getParam(param, "investigasi_insiden_tim");
    var query = "SELECT a.* , a1.\"nama\" as \"investigasi_insiden\" FROM \"investigasi_insiden_tim\" a  LEFT JOIN \"investigasi_insiden\" a1 ON a.\"investigasi_insiden_id\" = a1.\"id\" ";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"nama\" LIKE '%" + param.q + "%' OR a.\"jabatan\" LIKE '%" + param.q + "%' OR a.\"tgl\" LIKE '%" + param.q + "%' OR a.\"status\" LIKE '%" + param.q + "%' OR a.\"investigasi_insiden_id\" LIKE '%" + param.q + "%'";	
		wheres += ")";
	}

	query += wheres;
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

InvestigasiInsidenTim.updateById = async(id, investigasiinsidentim, result) => {

	var arr = ["nama", "jabatan", "tgl", "status", "investigasi_insiden_id"];
	var str = f.getValueUpdate(investigasiinsidentim, id, arr);
	if (objek.action != null) {
		const hv = await f.headerValue(objek, "activity_log");
		await f.query("INSERT INTO \"activity_log\" " + hv, 2);
	}
	f.query("UPDATE \"investigasi_insiden_tim\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...investigasiinsidentim });
};

InvestigasiInsidenTim.remove = (id, result) => {
	f.query("DELETE FROM \"investigasi_insiden_tim\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = InvestigasiInsidenTim;


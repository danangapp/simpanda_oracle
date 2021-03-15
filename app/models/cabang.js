const f = require('../controllers/function');
var objek = new Object();

// constructor
const Cabang = function (cabang) {
	this.nama = cabang.nama;
	this.almt_cabang = cabang.almt_cabang;
	this.cabang_cms = cabang.cabang_cms;
	this.no_account_cabang = cabang.no_account_cabang;
	this.nm_cabang_3digit = cabang.nm_cabang_3digit;
	this.kd_account_cabang = cabang.kd_account_cabang;
	this.kd_cabang_jai_puspel = cabang.kd_cabang_jai_puspel;
	this.orgid = cabang.orgid;
	this.port_code = cabang.port_code;
	this.autospk = cabang.autospk;
	this.kd_jenis_pelabuhan = cabang.kd_jenis_pelabuhan;
};

Cabang.create = async (newCabang, result, cabang_id) => {
	const hv = await f.headerValue(newCabang, "cabang");
	var queryText = "INSERT INTO \"cabang\" " + hv + " RETURN \"id\" INTO :id";
	const exec = f.query(queryText, 1);
	delete newCabang.id;
	const res = await exec;

	result(null, { id: res.outBinds.id[0], ...newCabang });
};

Cabang.findById = async (id, result) => {
	var queryText = "SELECT a.*  FROM \"cabang\" a   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

Cabang.getAll = async (param, result, cabang_id) => {
	var wheres = f.getParam(param, "cabang");
	var query = "SELECT a.*  FROM \"cabang\" a ";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"nama\" LIKE '%" + param.q + "%' OR a.\"almt_cabang\" LIKE '%" + param.q + "%' OR a.\"cabang_cms\" LIKE '%" + param.q + "%' OR a.\"no_account_cabang\" LIKE '%" + param.q + "%' OR a.\"nm_cabang_3digit\" LIKE '%" + param.q + "%' OR a.\"kd_account_cabang\" LIKE '%" + param.q + "%' OR a.\"kd_cabang_jai_puspel\" LIKE '%" + param.q + "%' OR a.\"orgid\" LIKE '%" + param.q + "%' OR a.\"port_code\" LIKE '%" + param.q + "%' OR a.\"autospk\" LIKE '%" + param.q + "%' OR a.\"kd_jenis_pelabuhan\" LIKE '%" + param.q + "%'";
		wheres += ")";
	}

	query += wheres;
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

Cabang.updateById = async (id, cabang, result) => {

	var arr = ["nama", "almt_cabang", "cabang_cms", "no_account_cabang", "nm_cabang_3digit", "kd_account_cabang", "kd_cabang_jai_puspel", "orgid", "port_code", "autospk", "kd_jenis_pelabuhan"];
	var str = f.getValueUpdate(cabang, id, arr);
	if (objek.action != null) {
		const hv = await f.headerValue(objek, "activity_log");
		await f.query("INSERT INTO \"activity_log\" " + hv, 2);
	}
	f.query("UPDATE \"cabang\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...cabang });
};

Cabang.remove = (id, result) => {
	f.query("DELETE FROM \"cabang\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = Cabang;


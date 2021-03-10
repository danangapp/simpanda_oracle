const f = require('../controllers/function');
var objek = new Object();

// constructor
const StatusEvaluasiPelimpahan = function (statusevaluasipelimpahan) {
    this.nama = statusevaluasipelimpahan.nama;
};

StatusEvaluasiPelimpahan.create = async(newStatusEvaluasiPelimpahan, result) => {
		const hv = await f.headerValue(newStatusEvaluasiPelimpahan, "status_evaluasi_pelimpahan");
		var queryText = "INSERT INTO \"status_evaluasi_pelimpahan\" " + hv + " RETURN \"id\" INTO :id";
		const exec = f.query(queryText, 1);
		delete newStatusEvaluasiPelimpahan.id;
		const res = await exec;

		result(null, { id: res.outBinds.id[0], ...newStatusEvaluasiPelimpahan });
};

StatusEvaluasiPelimpahan.findById = async (id, result) => {
	var queryText = "SELECT a.*  FROM \"status_evaluasi_pelimpahan\" a   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

StatusEvaluasiPelimpahan.getAll = async (param, result) => {
    var wheres = f.getParam(param, "status_evaluasi_pelimpahan");
    var query = "SELECT a.*  FROM \"status_evaluasi_pelimpahan\" a ";
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

StatusEvaluasiPelimpahan.updateById = async(id, statusevaluasipelimpahan, result) => {

	var arr = ["nama"];
	var str = f.getValueUpdate(statusevaluasipelimpahan, id, arr);
	if (objek.action != null) {
		const hv = await f.headerValue(objek, "activity_log");
		f.query("INSERT INTO \"activity_log\" " + hv, 2);
	}
	f.query("UPDATE \"status_evaluasi_pelimpahan\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...statusevaluasipelimpahan });
};

StatusEvaluasiPelimpahan.remove = (id, result) => {
	f.query("DELETE FROM \"status_evaluasi_pelimpahan\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = StatusEvaluasiPelimpahan;


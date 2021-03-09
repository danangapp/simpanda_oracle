const f = require('../controllers/function');
var objek = new Object();

// constructor
const DokumenKapal = function (dokumenkapal) {
    this.nama = dokumenkapal.nama;
};

DokumenKapal.create = async(newDokumenKapal, result) => {
		const hv = await f.headerValue(newDokumenKapal, "dokumen_kapal");
		var queryText = "INSERT INTO \"dokumen_kapal\" " + hv + " RETURN \"id\" INTO :id";
		const exec = f.query(queryText, 1);
		delete newDokumenKapal.id;
		const res = await exec;

		result(null, { id: res.outBinds.id[0], ...newDokumenKapal });
};

DokumenKapal.findById = async (id, result) => {
	var queryText = "SELECT a.*  FROM \"dokumen_kapal\" a   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

DokumenKapal.getAll = async (param, result) => {
    var wheres = f.getParam(param);
    var query = "SELECT a.*  FROM \"dokumen_kapal\" a ";
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

DokumenKapal.updateById = async(id, dokumenkapal, result) => {

	var arr = ["nama"];
	var str = f.getValueUpdate(dokumenkapal, id, arr);
	if (objek.action != null) {
		const hv = await f.headerValue(objek, "activity_log");
		f.query("INSERT INTO \"activity_log\" " + hv, 2);
	}
	f.query("UPDATE \"dokumen_kapal\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...dokumenkapal });
};

DokumenKapal.remove = (id, result) => {
	f.query("DELETE FROM \"dokumen_kapal\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = DokumenKapal;


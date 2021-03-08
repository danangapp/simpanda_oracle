const f = require('../controllers/function');
var objek = new Object();

// constructor
const JenisCert = function (jeniscert) {
    this.nama = jeniscert.nama;
    this.remark = jeniscert.remark;
};

JenisCert.create = async(newJenisCert, result) => {
		newJenisCert.id = "jenis_cert_seq.nextval"
		const hv = f.headerValue(newJenisCert);
		var queryText = "INSERT INTO \"jenis_cert\" " + hv + " RETURN \"id\" INTO :id";
		const exec = f.query(queryText, 1);
		delete newJenisCert.id;
		const res = await exec;

		result(null, { id: res.outBinds.id[0], ...newJenisCert });
};

JenisCert.findById = async (id, result) => {
	var queryText = "SELECT a.*  FROM \"jenis_cert\" a   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

JenisCert.getAll = async (param, result) => {
    var wheres = f.getParam(param);
    var query = "SELECT a.*  FROM \"jenis_cert\" a ";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"nama\" LIKE '%" + param.q + "%' OR a.\"remark\" LIKE '%" + param.q + "%'";	
		wheres += ")";
	}

	query += wheres;
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

JenisCert.updateById = async(id, jeniscert, result) => {

	var arr = ["nama", "remark"];
	var str = f.getValueUpdate(jeniscert, id, arr);
	if (objek.action != null) {
		const hv = f.headerValue(objek);
		f.query("INSERT INTO \"activity_log\" " + hv, 2);
	}
	f.query("UPDATE \"jenis_cert\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...jeniscert });
};

JenisCert.remove = (id, result) => {
	f.query("DELETE FROM \"jenis_cert\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = JenisCert;


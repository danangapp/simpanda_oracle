const f = require('../controllers/function');
var objek = new Object();

// constructor
const KepemilikanKapal = function (kepemilikankapal) {
    this.nama = kepemilikankapal.nama;
};

KepemilikanKapal.create = async(newKepemilikanKapal, result, cabang_id, user_id) => {
	const hv = await f.headerValue(newKepemilikanKapal);
	var queryText = "INSERT INTO \"kepemilikan_kapal\" " + hv + " RETURN \"id\" INTO :id";
	const exec = f.query(queryText, 1);
	delete newKepemilikanKapal.id;
	const res = await exec;
	var id = res.outBinds.id[0];

	result(null, { id: id, ...newKepemilikanKapal });
};

KepemilikanKapal.findById = async (id, result) => {
	var queryText = "SELECT a.*  FROM \"kepemilikan_kapal\" a   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

KepemilikanKapal.getAll = async (param, result, cabang_id) => {
    var wheres = f.getParam(param, "kepemilikan_kapal");
    var query = "SELECT a.*  FROM \"kepemilikan_kapal\" a ";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"nama\" LIKE '%" + param.q + "%'";	
		wheres += ")";
	}

	query += wheres;
	query += "ORDER BY a.\"id\" DESC";
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

KepemilikanKapal.updateById = async(id, kepemilikankapal, result, user_id) => {

	var arr = ["nama"];
	var str = f.getValueUpdate(kepemilikankapal, id, arr);
	objek.koneksi = id;
	objek.action = kepemilikankapal.approval_status_id;
	objek.item = "kepemilikankapal";
	objek.remark = kepemilikankapal.activityLog ? kepemilikankapal.activityLog.remark : '';
	objek.user_id = user_id;
	const hval = await f.headerValue(objek);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);
	await f.query("UPDATE \"kepemilikan_kapal\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...kepemilikankapal });
};

KepemilikanKapal.remove = (id, result) => {
	f.query("DELETE FROM \"kepemilikan_kapal\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = KepemilikanKapal;


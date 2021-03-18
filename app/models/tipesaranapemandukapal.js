const f = require('../controllers/function');
var objek = new Object();

// constructor
const TipeSaranaPemanduKapal = function (tipesaranapemandukapal) {
    this.nama = tipesaranapemandukapal.nama;
};

TipeSaranaPemanduKapal.create = async(newTipeSaranaPemanduKapal, result, cabang_id, user_id) => {
	const hv = await f.headerValue(newTipeSaranaPemanduKapal);
	var queryText = "INSERT INTO \"tipe_sarana_pemandu_kapal\" " + hv + " RETURN \"id\" INTO :id";
	const exec = f.query(queryText, 1);
	delete newTipeSaranaPemanduKapal.id;
	const res = await exec;
	var id = res.outBinds.id[0];

	result(null, { id: id, ...newTipeSaranaPemanduKapal });
};

TipeSaranaPemanduKapal.findById = async (id, result) => {
	var queryText = "SELECT a.*  FROM \"tipe_sarana_pemandu_kapal\" a   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

TipeSaranaPemanduKapal.getAll = async (param, result, cabang_id) => {
    var wheres = f.getParam(param, "tipe_sarana_pemandu_kapal");
    var query = "SELECT a.*  FROM \"tipe_sarana_pemandu_kapal\" a ";
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

TipeSaranaPemanduKapal.updateById = async(id, tipesaranapemandukapal, result, user_id) => {

	var arr = ["nama"];
	var str = f.getValueUpdate(tipesaranapemandukapal, id, arr);
	objek.koneksi = id;
	objek.action = tipesaranapemandukapal.approval_status_id;
	objek.item = "tipesaranapemandukapal";
	objek.remark = tipesaranapemandukapal.activityLog ? tipesaranapemandukapal.activityLog.remark : '';
	objek.user_id = user_id;
	const hval = await f.headerValue(objek);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);
	await f.query("UPDATE \"tipe_sarana_pemandu_kapal\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...tipesaranapemandukapal });
};

TipeSaranaPemanduKapal.remove = (id, result) => {
	f.query("DELETE FROM \"tipe_sarana_pemandu_kapal\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = TipeSaranaPemanduKapal;


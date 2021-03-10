const f = require('../controllers/function');
var objek = new Object();

// constructor
const TipeSaranaPemanduKapal = function (tipesaranapemandukapal) {
    this.nama = tipesaranapemandukapal.nama;
};

TipeSaranaPemanduKapal.create = async(newTipeSaranaPemanduKapal, result) => {
		const hv = await f.headerValue(newTipeSaranaPemanduKapal, "tipe_sarana_pemandu_kapal");
		var queryText = "INSERT INTO \"tipe_sarana_pemandu_kapal\" " + hv + " RETURN \"id\" INTO :id";
		const exec = f.query(queryText, 1);
		delete newTipeSaranaPemanduKapal.id;
		const res = await exec;

		result(null, { id: res.outBinds.id[0], ...newTipeSaranaPemanduKapal });
};

TipeSaranaPemanduKapal.findById = async (id, result) => {
	var queryText = "SELECT a.*  FROM \"tipe_sarana_pemandu_kapal\" a   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

TipeSaranaPemanduKapal.getAll = async (param, result) => {
    var wheres = f.getParam(param, "tipe_sarana_pemandu_kapal");
    var query = "SELECT a.*  FROM \"tipe_sarana_pemandu_kapal\" a ";
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

TipeSaranaPemanduKapal.updateById = async(id, tipesaranapemandukapal, result) => {

	var arr = ["nama"];
	var str = f.getValueUpdate(tipesaranapemandukapal, id, arr);
	if (objek.action != null) {
		const hv = await f.headerValue(objek, "activity_log");
		await f.query("INSERT INTO \"activity_log\" " + hv, 2);
	}
	f.query("UPDATE \"tipe_sarana_pemandu_kapal\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...tipesaranapemandukapal });
};

TipeSaranaPemanduKapal.remove = (id, result) => {
	f.query("DELETE FROM \"tipe_sarana_pemandu_kapal\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = TipeSaranaPemanduKapal;


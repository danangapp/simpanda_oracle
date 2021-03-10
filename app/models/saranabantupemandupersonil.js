const f = require('../controllers/function');
var objek = new Object();

// constructor
const SaranaBantuPemanduPersonil = function (saranabantupemandupersonil) {
    this.sarana_bantu_pemandu_id = saranabantupemandupersonil.sarana_bantu_pemandu_id;
    this.nama = saranabantupemandupersonil.nama;
    this.jabatan = saranabantupemandupersonil.jabatan;
    this.asset_kapal_id = saranabantupemandupersonil.asset_kapal_id;
    this.tipe_asset_id = saranabantupemandupersonil.tipe_asset_id;
    this.status_ijazah_id = saranabantupemandupersonil.status_ijazah_id;
};

SaranaBantuPemanduPersonil.create = async(newSaranaBantuPemanduPersonil, result) => {
		const hv = await f.headerValue(newSaranaBantuPemanduPersonil, "sarana_bantu_pemandu_personil");
		var queryText = "INSERT INTO \"sarana_bantu_pemandu_personil\" " + hv + " RETURN \"id\" INTO :id";
		const exec = f.query(queryText, 1);
		delete newSaranaBantuPemanduPersonil.id;
		const res = await exec;

		result(null, { id: res.outBinds.id[0], ...newSaranaBantuPemanduPersonil });
};

SaranaBantuPemanduPersonil.findById = async (id, result) => {
	var queryText = "SELECT a.* , a1.\"nama\" as \"sarana_bantu_pemandu\", a2.\"nama_asset\" as \"asset_kapal\", a3.\"nama\" as \"tipe_asset\", a4.\"nama\" as \"status_ijazah\" FROM \"sarana_bantu_pemandu_personil\" a  LEFT JOIN \"sarana_bantu_pemandu\" a1 ON a.\"sarana_bantu_pemandu_id\" = a1.\"id\"  LEFT JOIN \"asset_kapal\" a2 ON a.\"asset_kapal_id\" = a2.\"id\"  LEFT JOIN \"tipe_asset\" a3 ON a.\"tipe_asset_id\" = a3.\"id\"  LEFT JOIN \"status_ijazah\" a4 ON a.\"status_ijazah_id\" = a4.\"id\"   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

SaranaBantuPemanduPersonil.getAll = async (param, result) => {
    var wheres = f.getParam(param, "sarana_bantu_pemandu_personil");
    var query = "SELECT a.* , a1.\"nama\" as \"sarana_bantu_pemandu\", a2.\"nama_asset\" as \"asset_kapal\", a3.\"nama\" as \"tipe_asset\", a4.\"nama\" as \"status_ijazah\" FROM \"sarana_bantu_pemandu_personil\" a  LEFT JOIN \"sarana_bantu_pemandu\" a1 ON a.\"sarana_bantu_pemandu_id\" = a1.\"id\"  LEFT JOIN \"asset_kapal\" a2 ON a.\"asset_kapal_id\" = a2.\"id\"  LEFT JOIN \"tipe_asset\" a3 ON a.\"tipe_asset_id\" = a3.\"id\"  LEFT JOIN \"status_ijazah\" a4 ON a.\"status_ijazah_id\" = a4.\"id\" ";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"sarana_bantu_pemandu_id\" LIKE '%" + param.q + "%' OR a.\"nama\" LIKE '%" + param.q + "%' OR a.\"jabatan\" LIKE '%" + param.q + "%' OR a.\"asset_kapal_id\" LIKE '%" + param.q + "%' OR a.\"tipe_asset_id\" LIKE '%" + param.q + "%' OR a.\"status_ijazah_id\" LIKE '%" + param.q + "%'";	
		wheres += ")";
	}

	query += wheres;
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

SaranaBantuPemanduPersonil.updateById = async(id, saranabantupemandupersonil, result) => {

	var arr = ["sarana_bantu_pemandu_id", "nama", "jabatan", "asset_kapal_id", "tipe_asset_id", "status_ijazah_id"];
	var str = f.getValueUpdate(saranabantupemandupersonil, id, arr);
	if (objek.action != null) {
		const hv = await f.headerValue(objek, "activity_log");
		f.query("INSERT INTO \"activity_log\" " + hv, 2);
	}
	f.query("UPDATE \"sarana_bantu_pemandu_personil\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...saranabantupemandupersonil });
};

SaranaBantuPemanduPersonil.remove = (id, result) => {
	f.query("DELETE FROM \"sarana_bantu_pemandu_personil\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = SaranaBantuPemanduPersonil;


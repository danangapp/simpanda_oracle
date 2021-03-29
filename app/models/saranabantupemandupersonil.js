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

SaranaBantuPemanduPersonil.create = async(newSaranaBantuPemanduPersonil, result, cabang_id, user_id) => {
	var id = await f.getid("sarana_bantu_pemandu_personil");
	const hv = await f.headerValue(newSaranaBantuPemanduPersonil, id);
	var queryText = "INSERT INTO \"sarana_bantu_pemandu_personil\" " + hv + " RETURN \"id\" INTO :id";
	const exec = f.query(queryText, 1);
	delete newSaranaBantuPemanduPersonil.id;
	const res = await exec;

	result(null, { id: id, ...newSaranaBantuPemanduPersonil });
};

SaranaBantuPemanduPersonil.findById = async (id, result) => {
	var queryText = "SELECT a.* , a1.\"nama\" as \"sarana_bantu_pemandu\", a2.\"nama_asset\" as \"asset_kapal\", a3.\"nama\" as \"tipe_asset\", a4.\"nama\" as \"status_ijazah\" FROM \"sarana_bantu_pemandu_personil\" a  LEFT JOIN \"sarana_bantu_pemandu\" a1 ON a.\"sarana_bantu_pemandu_id\" = a1.\"id\"  LEFT JOIN \"asset_kapal\" a2 ON a.\"asset_kapal_id\" = a2.\"id\"  LEFT JOIN \"tipe_asset\" a3 ON a.\"tipe_asset_id\" = a3.\"id\"  LEFT JOIN \"status_ijazah\" a4 ON a.\"status_ijazah_id\" = a4.\"id\"   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

SaranaBantuPemanduPersonil.getAll = async (param, result, cabang_id) => {
    var wheres = f.getParam(param, "sarana_bantu_pemandu_personil");
    var query = "SELECT a.* , a1.\"nama\" as \"sarana_bantu_pemandu\", a2.\"nama_asset\" as \"asset_kapal\", a3.\"nama\" as \"tipe_asset\", a4.\"nama\" as \"status_ijazah\" FROM \"sarana_bantu_pemandu_personil\" a  LEFT JOIN \"sarana_bantu_pemandu\" a1 ON a.\"sarana_bantu_pemandu_id\" = a1.\"id\"  LEFT JOIN \"asset_kapal\" a2 ON a.\"asset_kapal_id\" = a2.\"id\"  LEFT JOIN \"tipe_asset\" a3 ON a.\"tipe_asset_id\" = a3.\"id\"  LEFT JOIN \"status_ijazah\" a4 ON a.\"status_ijazah_id\" = a4.\"id\" ";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"sarana_bantu_pemandu_id\" LIKE '%" + param.q + "%' OR a.\"nama\" LIKE '%" + param.q + "%' OR a.\"jabatan\" LIKE '%" + param.q + "%' OR a.\"asset_kapal_id\" LIKE '%" + param.q + "%' OR a.\"tipe_asset_id\" LIKE '%" + param.q + "%' OR a.\"status_ijazah_id\" LIKE '%" + param.q + "%'";	
		wheres += ")";
	}

	query += wheres;
	query += "ORDER BY a.\"id\" DESC";
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

SaranaBantuPemanduPersonil.updateById = async(id, saranabantupemandupersonil, result, user_id) => {

	var arr = ["sarana_bantu_pemandu_id", "nama", "jabatan", "asset_kapal_id", "tipe_asset_id", "status_ijazah_id"];
	var str = f.getValueUpdate(saranabantupemandupersonil, id, arr);
	var id_activity_log = await f.getid("activity_log");
	objek.koneksi = id;
	objek.action = saranabantupemandupersonil.approval_status_id;
	objek.item = "saranabantupemandupersonil";
	objek.user_id = user_id;
	if(saranabantupemandupersonil.approval_status_id == 1){
		objek.remark = "Pengajuan disetujui oleh pusat";
	}else if(saranabantupemandupersonil.approval_status_id == 2){
		objek.remark = "Pengajuan ditolak oleh pusat";
	}else if(saranabantupemandupersonil.approval_status_id == 0){
		objek.remark = "Pengajuan dibuat oleh admin cabang";
	}
	const hval = await f.headerValue(objek, id_activity_log);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);
	await f.query("UPDATE \"sarana_bantu_pemandu_personil\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...saranabantupemandupersonil });
};

SaranaBantuPemanduPersonil.remove = (id, result) => {
	f.query("DELETE FROM \"sarana_bantu_pemandu_personil\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = SaranaBantuPemanduPersonil;


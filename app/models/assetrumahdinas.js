const f = require('../controllers/function');
var objek = new Object();

// constructor
const AssetRumahDinas = function (assetrumahdinas) {
    this.nama_asset = assetrumahdinas.nama_asset;
    this.satuan = assetrumahdinas.satuan;
    this.tahun_perolehan = assetrumahdinas.tahun_perolehan;
    this.nilai_perolehan = assetrumahdinas.nilai_perolehan;
    this.wilayah = assetrumahdinas.wilayah;
    this.nilai_buku = assetrumahdinas.nilai_buku;
    this.approval_status_id = assetrumahdinas.approval_status_id;
    this.tanggal = assetrumahdinas.tanggal;
    this.nilai = assetrumahdinas.nilai;
    this.catatan = assetrumahdinas.catatan;
    this.enable = assetrumahdinas.enable;
};

const setActivity = (objects, koneksi = 1) => {
		objek.date = f.toDate(objects.date);
		objek.item = 'assetrumahdinas';
		objek.action = objects.approval_status_id;
		objek.user_id = objects.user_id;
		objek.remark = objects.remark;
		objek.koneksi = koneksi;
		delete objects.date;
		delete objects.item;
		delete objects.action;
		delete objects.user_id;
		delete objects.remark;
		delete objects.koneksi;
		return objects
};

AssetRumahDinas.create = async(newAssetRumahDinas, result, cabang_id, user_id) => {
	newAssetRumahDinas = setActivity(newAssetRumahDinas);
	const hv = await f.headerValue(newAssetRumahDinas);
	var queryText = "INSERT INTO \"asset_rumah_dinas\" " + hv + " RETURN \"id\" INTO :id";
	const exec = f.query(queryText, 1);
	delete newAssetRumahDinas.id;
	const res = await exec;
	var id = res.outBinds.id[0];

	objek.koneksi = id;
	objek.action = "0";
	objek.user_id = user_id;
	const hval = await f.headerValue(objek);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);

	result(null, { id: id, ...newAssetRumahDinas });
};

AssetRumahDinas.findById = async (id, result) => {
	const resActivityLog = await f.query("SELECT a.\"date\", a.\"item\", a.\"action\", a.\"user_id\", a.\"remark\", a.\"koneksi\" FROM \"activity_log\" a INNER JOIN \"asset_rumah_dinas\" b ON a.\"item\" = 'asset_rumah_dinas' AND a.\"koneksi\" = b.\"id\" WHERE b.\"id\" =  '" + id + "'");
	var queryText = "SELECT a.* , a1.\"nama\" as \"approval_status\", a2.\"nama\" as \"ena\" FROM \"asset_rumah_dinas\" a  LEFT JOIN \"approval_status\" a1 ON a.\"approval_status_id\" = a1.\"id\"  LEFT JOIN \"enable\" a2 ON a.\"enable\" = a2.\"id\"   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	const activityLog = { "activityLog": resActivityLog.rows }
	let merge = { ...res.rows[0], ...activityLog }	
	result(null, merge);
}

AssetRumahDinas.getAll = async (param, result, cabang_id) => {
    var wheres = f.getParam(param, "asset_rumah_dinas");
    var query = "SELECT a.* , a1.\"nama\" as \"approval_status\", a2.\"nama\" as \"ena\" FROM \"asset_rumah_dinas\" a  LEFT JOIN \"approval_status\" a1 ON a.\"approval_status_id\" = a1.\"id\"  LEFT JOIN \"enable\" a2 ON a.\"enable\" = a2.\"id\" ";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"nama_asset\" LIKE '%" + param.q + "%' OR a.\"satuan\" LIKE '%" + param.q + "%' OR a.\"tahun_perolehan\" LIKE '%" + param.q + "%' OR a.\"nilai_perolehan\" LIKE '%" + param.q + "%' OR a.\"wilayah\" LIKE '%" + param.q + "%' OR a.\"nilai_buku\" LIKE '%" + param.q + "%' OR a.\"approval_status_id\" LIKE '%" + param.q + "%' OR a.\"tanggal\" LIKE '%" + param.q + "%' OR a.\"nilai\" LIKE '%" + param.q + "%' OR a.\"catatan\" LIKE '%" + param.q + "%' OR a.\"enable\" LIKE '%" + param.q + "%'";	
		wheres += ")";
	}

	query += wheres;
	query += "ORDER BY a.\"id\" DESC";
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

AssetRumahDinas.updateById = async(id, assetrumahdinas, result, user_id) => {

	var arr = ["nama_asset", "satuan", "tahun_perolehan", "nilai_perolehan", "wilayah", "nilai_buku", "approval_status_id", "tanggal", "nilai", "catatan", "enable"];
	var str = f.getValueUpdate(assetrumahdinas, id, arr);
	objek.koneksi = id;
	objek.action = assetrumahdinas.approval_status_id;
	objek.item = "assetrumahdinas";
	objek.remark = assetrumahdinas.activityLog ? assetrumahdinas.activityLog.remark : '';
	objek.user_id = user_id;
	const hval = await f.headerValue(objek);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);
	await f.query("UPDATE \"asset_rumah_dinas\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...assetrumahdinas });
};

AssetRumahDinas.remove = (id, result) => {
	f.query("DELETE FROM \"asset_rumah_dinas\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = AssetRumahDinas;


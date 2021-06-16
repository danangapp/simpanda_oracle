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
	this.alamat = assetrumahdinas.alamat;
	this.keterangan = assetrumahdinas.keterangan;
	this.keterangan_rumah_dinas = assetrumahdinas.keterangan_rumah_dinas;
	this.no_asset = assetrumahdinas.no_asset;
	this.status_kepemilikan = assetrumahdinas.status_kepemilikan;
};

const setActivity = (objects, koneksi = 1) => {
	objek.date = f.toDate(objects.date);
	objek.item = 'assetrumahdinas';
	objek.action = objects.approval_status_id;
	objek.user_id = objects.user_id;
	objek.remark = objects.remark;
	objek.koneksi = koneksi;
	objek.keterangan = objects.keterangan;
	if (!objects.keterangan) {
		objek.keterangan = objects.activity_keterangan;
	}
	delete objects.date;
	delete objects.item;
	delete objects.action;
	delete objects.user_id;
	delete objects.remark;
	delete objects.koneksi;
	// delete objects.keterangan;
	return objects
};

AssetRumahDinas.create = async (newAssetRumahDinas, result, cabang_id, user_id) => {
	newAssetRumahDinas = setActivity(newAssetRumahDinas);
	var id = await f.getid("asset_rumah_dinas");
	delete newAssetRumahDinas.activity_keterangan;
	let valid = newAssetRumahDinas
	// console.log('valid',valid)
	// return false
	const hv = await f.headerValue(valid, id);
	var queryText = "INSERT INTO \"asset_rumah_dinas\" " + hv + " RETURN \"id\" INTO :id";
	const exec = f.query(queryText, 1);
	delete newAssetRumahDinas.id;
	const res = await exec;

	objek.koneksi = id;
	objek.action = "0";
	objek.user_id = user_id;
	objek.remark = "Pengajuan dibuat oleh admin cabang";
	// console.log('objek',objek)
	// return false
	var id_activity_log = await f.getid("activity_log");
	const hval = await f.headerValue(objek, id_activity_log);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);

	result(null, { id: id, ...newAssetRumahDinas });
};

AssetRumahDinas.findById = async (id, result) => {
	const resActivityLog = await f.query("SELECT a.\"date\", a.\"item\", a.\"action\", a.\"user_id\", a.\"remark\", a.\"keterangan\", a.\"koneksi\" FROM \"activity_log\" a INNER JOIN \"personil\" b ON a.\"item\" = 'assetrumahdinas' AND a.\"koneksi\" = b.\"id\" WHERE b.\"id\" =  '" + id + "' ORDER BY b.\"id\" DESC");
	var queryText = "SELECT a.* , a1.\"nama\" as \"approval_status\", a2.\"nama\" as \"ena\" FROM \"asset_rumah_dinas\" a  LEFT JOIN \"approval_status\" a1 ON a.\"approval_status_id\" = a1.\"id\"  LEFT JOIN \"enable\" a2 ON a.\"enable\" = a2.\"id\"   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	const activityLog = { "activityLog": resActivityLog.rows }
	// console.log('activityLog',activityLog)
	let merge = { ...res.rows[0], ...activityLog }
	result(null, merge);
}

AssetRumahDinas.getAll = async (param, result, cabang_id) => {
	var wheres = f.getParam(param, "asset_rumah_dinas");
	var query = "SELECT a.* , a1.\"nama\" as \"approval_status\", a2.\"nama\" as \"ena\", a3.\"nama\" as \"cabang\" FROM \"asset_rumah_dinas\" a  LEFT JOIN \"approval_status\" a1 ON a.\"approval_status_id\" = a1.\"id\"  LEFT JOIN \"enable\" a2 ON a.\"enable\" = a2.\"id\" LEFT JOIN \"cabang\" a3 ON a.\"cabang_id\" = a3.\"id\" ";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += `LOWER(a."nama_asset") LIKE LOWER('%${param.q}%') OR LOWER(a."satuan") LIKE LOWER('%${param.q}%') OR LOWER(a."tahun_perolehan") LIKE LOWER('%${param.q}%') OR LOWER(a."nilai_perolehan") LIKE LOWER('%${param.q}%') OR LOWER(a."wilayah") LIKE LOWER('%${param.q}%') OR LOWER(a."nilai_buku") LIKE LOWER('%${param.q}%') OR LOWER(a."approval_status_id") LIKE LOWER('%${param.q}%') OR LOWER(a."tanggal") LIKE LOWER('%${param.q}%') OR LOWER(a."nilai") LIKE LOWER('%${param.q}%') OR LOWER(a."catatan") LIKE LOWER('%${param.q}%') OR LOWER(a."enable") LIKE LOWER('%${param.q}%')`;
		wheres += ")";
	}
	wheres += f.whereCabang(cabang_id, `a.\"cabang_id\"`, wheres.length);
	query += wheres;
	query += `ORDER BY a."upd_date" DESC`;
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

AssetRumahDinas.updateById = async (id, assetrumahdinas, result, user_id) => {

	var arr = ["nama_asset", "satuan", "tahun_perolehan", "nilai_perolehan", "wilayah", "nilai_buku", "approval_status_id", "tanggal", "nilai", "catatan", "enable", "alamat", "keterangan_rumah_dinas", "no_asset", "cabang_id", "status_kepemilikan"];
	var str = f.getValueUpdate(assetrumahdinas, id, arr);
	await f.query("UPDATE \"asset_rumah_dinas\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);

	objek.koneksi = id;
	objek.action = assetrumahdinas.approval_status_id;
	objek.item = "assetrumahdinas";
	objek.user_id = user_id;
	objek.keterangan = assetrumahdinas.activity_keterangan;
	if (assetrumahdinas.keterangan) {
		objek.keterangan = assetrumahdinas.keterangan;
	}
	await f.approvalStatus("asset_rumah_dinas", assetrumahdinas, objek, id, user_id)
	// console.log('objek',objek)
	// return false
	// var id_activity_log = await f.getid("activity_log");
	// const hval = await f.headerValue(objek, id_activity_log);
	// await f.query("INSERT INTO \"activity_log\" " + hval, 2);

	result(null, { id: id, ...assetrumahdinas });
};

AssetRumahDinas.remove = (id, result) => {
	f.query("DELETE FROM \"asset_rumah_dinas\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = AssetRumahDinas;


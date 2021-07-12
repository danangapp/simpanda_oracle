const f = require('../controllers/function');
var objek = new Object();

// constructor
const DasarHukum = function (dasarhukum) {
	this.approval_status_id = dasarhukum.approval_status_id;
	this.cabang_id = dasarhukum.cabang_id;
	this.judul_dokumen = dasarhukum.judul_dokumen;
	this.status = dasarhukum.status;
	this.no_dokumen = dasarhukum.no_dokumen;
	this.tahun = dasarhukum.tahun;
	this.keterangan = dasarhukum.keterangan;
	this.dasar_hukum = dasarhukum.dasar_hukum;
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

DasarHukum.create = async (newAssetRumahDinas, result, cabang_id, user_id) => {
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

DasarHukum.findById = async (id, result) => {
	const resActivityLog = await f.query("SELECT a.\"date\", a.\"item\", a.\"action\", a.\"user_id\", a.\"remark\", a.\"keterangan\", a.\"koneksi\" FROM \"activity_log\" a INNER JOIN \"personil\" b ON a.\"item\" = 'dasarhukum' AND a.\"koneksi\" = b.\"id\" WHERE b.\"id\" =  '" + id + "' ORDER BY b.\"id\" DESC");
	// var queryText = "SELECT a.* , a1.\"nama\" as \"approval_status\", a2.\"nama\" as \"ena\" FROM \"asset_rumah_dinas\" a  LEFT JOIN \"approval_status\" a1 ON a.\"approval_status_id\" = a1.\"id\"  LEFT JOIN \"enable\" a2 ON a.\"enable\" = a2.\"id\"   WHERE a.\"id\" = '" + id + "'";
	var queryText = `SELECT a."id", "approval_status_id", "cabang_id", "judul_dokumen", "status",  "no_dokumen", "tahun", "ket", "dasar_hukum", c."nama" AS "cabang"
	FROM "dasar_hukum" a LEFT JOIN "approval_status" b ON b."id" = a."approval_status_id" LEFT JOIN "cabang" c ON c."id" = a."cabang_id"
	WHERE a."id" = ${id}`;
	const exec = f.query(queryText);
	const res = await exec;
	// const activityLog = { "activityLog": resActivityLog.rows }
	let merge = { ...res.rows[0], ...activityLog }
	result(null, merge);
}

DasarHukum.getAll = async (param, result, cabang_id) => {
	var wheres = f.getParam(param, "dasar_hukum");
	var query = `SELECT a."id", "approval_status_id", "cabang_id", "judul_dokumen", "status",  "no_dokumen", "tahun", "ket", "dasar_hukum", c."nama" AS "cabang"
				FROM "dasar_hukum" a LEFT JOIN "approval_status" b ON b."id" = a."approval_status_id" LEFT JOIN "cabang" c ON c."id" = a."cabang_id"`
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += `LOWER(a."judul_dokumen") LIKE LOWER('%${param.q}%') OR LOWER(a."cabang") LIKE LOWER('%${param.q}%') OR LOWER(a."no_dokumen") LIKE LOWER('%${param.q}%') OR LOWER(a."keterangan") LIKE LOWER('%${param.q}%')`;
		wheres += ")";
	}
	wheres += f.whereCabang(cabang_id, `a.\"cabang_id\"`, wheres.length);
	query += wheres;
	query += `ORDER BY a."update_at" DESC`;
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

DasarHukum.updateById = async (id, assetrumahdinas, result, user_id) => {

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

DasarHukum.remove = (id, result) => {
	f.query("DELETE FROM \"asset_rumah_dinas\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = DasarHukum;


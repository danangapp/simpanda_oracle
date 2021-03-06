const f = require('../controllers/function');
const simop = require('../controllers/simop');
var objek = new Object();

// constructor
const AssetKapal = function (assetkapal) {
	this.cabang_id = assetkapal.cabang_id;
	this.simop_kd_fas = assetkapal.simop_kd_fas;
	this.kepemilikan_kapal_id = assetkapal.kepemilikan_kapal_id;
	this.simop_status_milik = assetkapal.simop_status_milik;
	this.simop_kd_agen = assetkapal.simop_kd_agen;
	this.tipe_asset_id = assetkapal.tipe_asset_id;
	this.nama_asset = assetkapal.nama_asset;
	this.horse_power = assetkapal.horse_power;
	this.tahun_perolehan = assetkapal.tahun_perolehan;
	this.nilai_perolehan = assetkapal.nilai_perolehan;
	this.enable = assetkapal.enable;
	this.asset_number = assetkapal.asset_number;
	this.simop_kd_puspel_jai = assetkapal.simop_kd_puspel_jai;
	this.simop_new_puspel_jai = assetkapal.simop_new_puspel_jai;
	this.simop_new_asset_jai = assetkapal.simop_new_asset_jai;
	this.approval_status_id = assetkapal.approval_status_id;
	this.loa = assetkapal.loa;
	this.tahun_pembuatan = assetkapal.tahun_pembuatan;
	this.breadth = assetkapal.breadth;
	this.kontruksi = assetkapal.kontruksi;
	this.depth = assetkapal.depth;
	this.negara_pembuat = assetkapal.negara_pembuat;
	this.draft_max = assetkapal.draft_max;
	this.daya = assetkapal.daya;
	this.putaran = assetkapal.putaran;
	this.merk = assetkapal.merk;
	this.tipe = assetkapal.tipe;
	this.daya_motor = assetkapal.daya_motor;
	this.daya_generator = assetkapal.daya_generator;
	this.putaran_spesifikasi = assetkapal.putaran_spesifikasi;
	this.merk_spesifikasi = assetkapal.merk_spesifikasi;
	this.tipe_spesifikasi = assetkapal.tipe_spesifikasi;
	this.klas = assetkapal.klas;
	this.notasi_permesinan = assetkapal.notasi_permesinan;
	this.no_registrasi = assetkapal.no_registrasi;
	this.notasi_perlengkapan = assetkapal.notasi_perlengkapan;
	this.port_of_registration = assetkapal.port_of_registration;
	this.notasi_perairan = assetkapal.notasi_perairan;
	this.notasi_lambung = assetkapal.notasi_lambung;
	this.gross_tonnage = assetkapal.gross_tonnage;
	this.bolard_pull = assetkapal.bolard_pull;
	this.kecepatan = assetkapal.kecepatan;
	this.ship_particular = assetkapal.ship_particular;
	this.sertifikat = assetkapal.sertifikat;
	this.date = assetkapal.date;
	this.item = assetkapal.item;
	this.kd_fas = assetkapal.kd_fas;
	this.action = assetkapal.action;
	this.user_id = assetkapal.user_id;
	this.remark = assetkapal.remark;
	this.koneksi = assetkapal.koneksi;
	this.keterangan = assetkapal.keterangan;
};

const setActivity = (objects, koneksi = 1) => {
	objek.date = f.toDate(objects.date);
	objek.item = 'assetkapal';
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
	delete objects.keterangan;
	return objects
};

AssetKapal.create = async (newAssetKapal, result, cabang_id, user_id) => {
	const sertifikat = newAssetKapal.sertifikat;
	delete newAssetKapal.sertifikat;
	newAssetKapal['cabang_id'] = parseInt(newAssetKapal.cabang_id);
	newAssetKapal = setActivity(newAssetKapal);
	var id = await f.getid("asset_kapal");

	delete newAssetKapal.activity_keterangan;
	let valid = newAssetKapal

	var check = `SELECT "simop_kd_fas","nama_asset" FROM "asset_kapal"
					WHERE LOWER("simop_kd_fas") like LOWER('%${newAssetKapal.kd_fas}%')
					OR LOWER("nama_asset") like LOWER('%${newAssetKapal.nama_asset}%')`
	var dataCheck = await f.query(check)
	if (dataCheck.rows.length > 0) {
		if (dataCheck.rows[0].simop_kd_fas.toLowerCase() === newAssetKapal.kd_fas.toLowerCase()) {
			result(null, { 'status': false, 'message': 'Maaf, Kode fasilitas yang anda pilih sudah tersedia !' })
		}else if(dataCheck.rows[0].nama_asset.toLowerCase() === newAssetKapal.nama_asset.toLowerCase()){
			result(null, { 'status': false, 'message': 'Maaf, Nama kapal yang anda pilih sudah tersedia !' })
		}

		return false
	}


	// newAssetKapal.simop_kd_fas = newAssetKapal.kd_fas;
	// delete newAssetKapal.kd_fas;
	if (newAssetKapal.isFromSimop || newAssetKapal.is_from_simop) {
		delete newAssetKapal.is_from_simop;
	} else {
		await f.executeSertifikat(sertifikat, id, "asset_kapal", "asset_kapal_id");
		objek.koneksi = id;
		objek.action = "0";
		objek.user_id = user_id;
		objek.remark = "Pengajuan dibuat oleh admin cabang";
		var id_activity_log = await f.getid("activity_log");
		const hval = await f.headerValue(objek, id_activity_log);
		await f.query("INSERT INTO \"activity_log\" " + hval, 2);
	}

	const hv = await f.headerValue(newAssetKapal, id);
	var queryText = "INSERT INTO \"asset_kapal\" " + hv;
	// console.log("queryText", queryText);
	const exec = f.query(queryText, 2);
	delete newAssetKapal.id;
	const res = await exec;

	result(null, { id: id, ...newAssetKapal });
};

AssetKapal.findById = async (id, result) => {
	const resQuery = await f.query("SELECT a.*, c.\"nama\" as \"tipe_cert\", d.\"nama\" as \"jenis_cert\" FROM \"sertifikat\" a INNER JOIN \"asset_kapal\" b ON a.\"asset_kapal_id\" = b.\"id\" INNER JOIN \"tipe_cert\" c ON a.\"tipe_cert_id\" = c.\"id\" INNER JOIN \"jenis_cert\" d ON c.\"jenis_cert_id\" = d.\"id\" WHERE b.\"id\" =  '" + id + "'");
	const resActivityLog = await f.query("SELECT a.\"date\", a.\"item\", a.\"action\", a.\"user_id\", a.\"remark\", a.\"keterangan\", a.\"koneksi\" FROM \"activity_log\" a INNER JOIN \"asset_kapal\" b ON a.\"item\" = 'assetkapal' AND a.\"koneksi\" = b.\"id\" WHERE b.\"id\" =  '" + id + "'");
	var queryText = "SELECT a.*, a1.\"nama\" as \"cabang\", a2.\"nama\" as \"kepemilikan_kapal\", a3.\"flag\" as \"tipe_asset\", a4.\"nama\" as \"ena\", a5.\"nama\" as \"approval_status\" , a3.\"nama\" as \"jenis_asset\" FROM \"asset_kapal\" a  LEFT JOIN \"cabang\" a1 ON a.\"cabang_id\" = a1.\"id\"  LEFT JOIN \"kepemilikan_kapal\" a2 ON a.\"kepemilikan_kapal_id\" = a2.\"id\"  LEFT JOIN \"tipe_asset\" a3 ON a.\"tipe_asset_id\" = a3.\"id\"  LEFT JOIN \"enable\" a4 ON a.\"enable\" = a4.\"id\"  LEFT JOIN \"approval_status\" a5 ON a.\"approval_status_id\" = a5.\"id\"   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	const sertifikat = { "sertifikat": resQuery.rows }
	const activityLog = { "activityLog": resActivityLog.rows }
	let merge = { ...res.rows[0], ...sertifikat, ...activityLog }
	result(null, merge);
}

AssetKapal.getAll = async (param, result, cabang_id) => {
	var wheres = f.getParam(param, "asset_kapal");

	if (param.sertifikat) {
		wheres = wheres.replace(`and LOWER(a."sertifikat") = LOWER('${param.sertifikat}')`, '');
	}

	wheres = wheres.replace(`a."flag"`, `a2."flag"`);
	var query = "SELECT a.* , a1.\"nama\" as \"cabang\", a2.\"nama\" as \"kepemilikan_kapal\", a3.\"flag\" as \"tipe_asset\", a4.\"nama\" as \"ena\", a5.\"nama\" as \"approval_status\" , a3.\"nama\" as \"jenis_asset\" FROM \"asset_kapal\" a  LEFT JOIN \"cabang\" a1 ON a.\"cabang_id\" = a1.\"id\"  LEFT JOIN \"kepemilikan_kapal\" a2 ON a.\"kepemilikan_kapal_id\" = a2.\"id\"  LEFT JOIN \"tipe_asset\" a3 ON a.\"tipe_asset_id\" = a3.\"id\"  LEFT JOIN \"enable\" a4 ON a.\"enable\" = a4.\"id\"  LEFT JOIN \"approval_status\" a5 ON a.\"approval_status_id\" = a5.\"id\" ";

	if (param.sertifikat != undefined) {
		query += 'LEFT JOIN \"sertifikat\" a6 ON a6.\"asset_kapal_id\" = a.\"id\"';
		// wheres += ' AND a6.\"tanggal_expire\" < ADD_MONTHS(SYSDATE, 5)';
		if (param.sertifikat == "filter-1") {
			wheres += 'AND a6.\"tanggal_expire\" <= ADD_MONTHS(SYSDATE, 5)';
		} else if (param.sertifikat == 'filter-2') {
			wheres += 'AND a6.\"tanggal_expire\" > ADD_MONTHS(SYSDATE, 5) AND a6.\"tanggal_expire\" <= ADD_MONTHS(SYSDATE, 11)'
		} else if (param.sertifikat == 'filter-3') {
			wheres += 'AND a6.\"tanggal_expire\" <= ADD_MONTHS(SYSDATE, 12)'
		}
	}

	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += `LOWER(a."cabang_id") LIKE LOWER('%${param.q}%') OR LOWER(a."simop_kd_fas") LIKE LOWER('%${param.q}%') OR LOWER(a."kepemilikan_kapal_id") LIKE LOWER('%${param.q}%') OR LOWER(a."simop_status_milik") LIKE LOWER('%${param.q}%') OR LOWER(a."simop_kd_agen") LIKE LOWER('%${param.q}%') OR LOWER(a."tipe_asset_id") LIKE LOWER('%${param.q}%') OR LOWER(a."nama_asset") LIKE LOWER('%${param.q}%') OR LOWER(a."horse_power") LIKE LOWER('%${param.q}%') OR LOWER(a."tahun_perolehan") LIKE LOWER('%${param.q}%') OR LOWER(a."nilai_perolehan") LIKE LOWER('%${param.q}%') OR LOWER(a."enable") LIKE LOWER('%${param.q}%') OR LOWER(a."asset_number") LIKE LOWER('%${param.q}%') OR LOWER(a."simop_kd_puspel_jai") LIKE LOWER('%${param.q}%') OR LOWER(a."simop_new_puspel_jai") LIKE LOWER('%${param.q}%') OR LOWER(a."simop_new_asset_jai") LIKE LOWER('%${param.q}%') OR LOWER(a."approval_status_id") LIKE LOWER('%${param.q}%') OR LOWER(a."loa") LIKE LOWER('%${param.q}%') OR LOWER(a."tahun_pembuatan") LIKE LOWER('%${param.q}%') OR LOWER(a."breadth") LIKE LOWER('%${param.q}%') OR LOWER(a."kontruksi") LIKE LOWER('%${param.q}%') OR LOWER(a."depth") LIKE LOWER('%${param.q}%') OR LOWER(a."negara_pembuat") LIKE LOWER('%${param.q}%') OR LOWER(a."draft_max") LIKE LOWER('%${param.q}%') OR LOWER(a."daya") LIKE LOWER('%${param.q}%') OR LOWER(a."putaran") LIKE LOWER('%${param.q}%') OR LOWER(a."merk") LIKE LOWER('%${param.q}%') OR LOWER(a."tipe") LIKE LOWER('%${param.q}%') OR LOWER(a."daya_motor") LIKE LOWER('%${param.q}%') OR LOWER(a."daya_generator") LIKE LOWER('%${param.q}%') OR LOWER(a."putaran_spesifikasi") LIKE LOWER('%${param.q}%') OR LOWER(a."merk_spesifikasi") LIKE LOWER('%${param.q}%') OR LOWER(a."tipe_spesifikasi") LIKE LOWER('%${param.q}%') OR LOWER(a."klas") LIKE LOWER('%${param.q}%') OR LOWER(a."notasi_permesinan") LIKE LOWER('%${param.q}%') OR LOWER(a."no_registrasi") LIKE LOWER('%${param.q}%') OR LOWER(a."notasi_perlengkapan") LIKE LOWER('%${param.q}%') OR LOWER(a."port_of_registration") LIKE LOWER('%${param.q}%') OR LOWER(a."notasi_perairan") LIKE LOWER('%${param.q}%') OR LOWER(a."notasi_lambung") LIKE LOWER('%${param.q}%') OR LOWER(a."gross_tonnage") LIKE LOWER('%${param.q}%') OR LOWER(a."bolard_pull") LIKE LOWER('%${param.q}%') OR LOWER(a."kecepatan") LIKE LOWER('%${param.q}%') OR LOWER(a."ship_particular") LIKE LOWER('%${param.q}%') OR LOWER(a."sertifikat_id") LIKE LOWER('%${param.q}%')`
		wheres += ")";
	}

	wheres += f.whereCabang(cabang_id, `a."cabang_id"`, wheres.length);
	query += wheres;
	query += `ORDER BY a."upd_date" DESC`;
	// console.log(query);
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

AssetKapal.updateById = async (id, assetkapal, result, user_id, cabang_id) => {
	// console.log("assetkapalnya ya", assetkapal);
	// var check = `SELECT "simop_kd_fas","nama_asset" FROM "asset_kapal"
	// 				WHERE LOWER("simop_kd_fas") like LOWER('%${assetkapal.kd_fas}%')
	// 				OR LOWER("nama_asset") like LOWER('%${assetkapal.nama_asset}%') AND "id" != '${id}'`
	// var dataCheck = await f.query(check)
	// if (dataCheck.rows.length > 0) {
	// 	if (dataCheck.rows[0].simop_kd_fas.toLowerCase() === assetkapal.kd_fas.toLowerCase()) {
	// 		result(null, { 'status': false, 'message': 'Maaf, Kode fasilitas yang anda pilih sudah tersedia !' })
	// 	}else if(dataCheck.rows[0].nama_asset.toLowerCase() === assetkapal.nama_asset.toLowerCase()){
	// 		result(null, { 'status': false, 'message': 'Maaf, Nama kapal yang anda pilih sudah tersedia !' })
	// 	}
	// 	return false
	// }

	assetkapal.simop_kd_fas = assetkapal.kd_fas;
	const sertifikat = assetkapal.sertifikat;
	if (assetkapal.sertifikat) {
		await f.query("DELETE FROM \"sertifikat\" WHERE \"asset_kapal_id\"='" + id + "'");
		await f.executeSertifikat(sertifikat, id, "asset_kapal", "asset_kapal_id");
	}
	delete assetkapal.kd_fas;
	delete assetkapal.sertifikat;

	var arr = ["cabang_id", "simop_kd_fas", "kepemilikan_kapal_id", "simop_status_milik", "simop_kd_agen", "tipe_asset_id", "nama_asset", "horse_power", "tahun_perolehan", "nilai_perolehan", "enable", "asset_number", "simop_kd_puspel_jai", "simop_new_puspel_jai", "simop_new_asset_jai", "approval_status_id", "loa", "tahun_pembuatan", "breadth", "kontruksi", "depth", "negara_pembuat", "draft_max", "daya", "putaran", "merk", "tipe", "daya_motor", "daya_generator", "putaran_spesifikasi", "merk_spesifikasi", "tipe_spesifikasi", "klas", "notasi_permesinan", "no_registrasi", "notasi_perlengkapan", "port_of_registration", "notasi_perairan", "notasi_lambung", "gross_tonnage", "bolard_pull", "kecepatan", "ship_particular", "sertifikat_id", "is_from_simop", "kd_fas"];


	var str;
	if (assetkapal.is_from_simop) {
		delete assetkapal.is_from_simop;
		str = f.getValueUpdate(assetkapal, id, arr);
		assetkapal['cabang_id'] = assetkapal.cabang_id ? parseInt(assetkapal.cabang_id) : parseInt(cabang_id);
		// console.log("UPDATE \"asset_kapal\" SET " + str + " WHERE \"simop_kd_fas\" = '" + assetkapal.simop_kd_fas + "'");
		await f.query("UPDATE \"asset_kapal\" SET " + str + " WHERE \"simop_kd_fas\" = '" + assetkapal.simop_kd_fas + "'", 2);
	} else {

		if (assetkapal.approval_status_id == "1") {
			const rows = await f.checkDataId("asset_kapal", id, assetkapal);
			const roww = await f.query(`SELECT "kd_fas" FROM "asset_kapal" WHERE "id"='${id}'`);
			assetkapal['simop_kd_fas'] = roww.rows[0].kd_fas;
			console.log("kd_fas", roww.rows[0].kd_fas);
			var dt = await simop.cekBody(assetkapal.simop_kd_fas ? assetkapal.simop_kd_fas : assetkapal.kd_fas, rows, rows.cabang_id != 1 ? "cabang" : "prod");
			var smp = await simop.insertFasilitasKapal(dt, rows.simop_kd_fas ? 2 : 1, rows.cabang_id != 1 ? "cabang" : "prod");
		}

		// assetkapal['simop_kd_fas'] = assetkapal.kd_fas;
		objek.koneksi = id;
		objek.action = "0";
		objek.user_id = user_id;
		objek.item = "assetkapal";
		objek.remark = "Pengajuan dirubah oleh admin cabang";
		objek.keterangan = assetkapal.activity_keterangan;
		if (assetkapal.keterangan) {
			objek.keterangan = assetkapal.keterangan;
		}
		// console.log(assetkapal);

		await f.approvalStatus("asset_kapal", assetkapal, objek, id, user_id)
		str = f.getValueUpdate(assetkapal, id, arr);
		await f.query("UPDATE \"asset_kapal\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	}

	result(null, { id: id, ...assetkapal });
};

AssetKapal.remove = (id, result) => {
	f.query("DELETE FROM \"asset_kapal\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = AssetKapal;


const f = require('../controllers/function');
var objek = new Object();

// constructor
const AssetKapal = function (assetkapal) {
    this.cabang_id = assetkapal.cabang_id;
    this.simop_kd_fas = assetkapal.simop_kd_fas;
    this.kepemilikan_kapal = assetkapal.kepemilikan_kapal;
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
    this.action = assetkapal.action;
    this.user_id = assetkapal.user_id;
    this.remark = assetkapal.remark;
    this.koneksi = assetkapal.koneksi;
};

const setActivity = (objects, koneksi = 1) => {
		objek.date = f.toDate(objects.date);
		objek.item = 'assetkapal';
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

AssetKapal.create = async(newAssetKapal, result, cabang_id, user_id) => {
		const sertifikat = newAssetKapal.sertifikat;
		delete newAssetKapal.sertifikat;
		newAssetKapal = setActivity(newAssetKapal);
		var id = await f.getid("asset_kapal");
		const hv = await f.headerValue(newAssetKapal, id);
		var queryText = "INSERT INTO \"asset_kapal\" " + hv + " RETURN \"id\" INTO :id";
		const exec = f.query(queryText, 1);
		delete newAssetKapal.id;
		const res = await exec;

		await f.executeSertifikat(sertifikat, id, "asset_kapal", "asset_kapal_id");
		objek.koneksi = id;
		objek.action = "0";
		objek.user_id = user_id;
		var id_activity_log = await f.getid("activity_log");
		const hval = await f.headerValue(objek, id_activity_log);
		await f.query("INSERT INTO \"activity_log\" " + hval, 2);

		result(null, { id: id, ...newAssetKapal });
};

AssetKapal.findById = async (id, result) => {
	const resQuery = await f.query("SELECT a.*, c.\"nama\" as \"tipe_cert\", d.\"nama\" as \"jenis_cert\" FROM \"sertifikat\" a INNER JOIN \"asset_kapal\" b ON a.\"asset_kapal_id\" = b.\"id\" INNER JOIN \"tipe_cert\" c ON a.\"tipe_cert_id\" = c.\"id\" INNER JOIN \"jenis_cert\" d ON c.\"jenis_cert_id\" = d.\"id\" WHERE b.\"id\" =  '" + id + "'");
	const resActivityLog = await f.query("SELECT a.\"date\", a.\"item\", a.\"action\", a.\"user_id\", a.\"remark\", a.\"koneksi\" FROM \"activity_log\" a INNER JOIN \"asset_kapal\" b ON a.\"item\" = 'asset_kapal' AND a.\"koneksi\" = b.\"id\" WHERE b.\"id\" =  '" + id + "'");
	var queryText = "SELECT a.* , a1.\"nama\" as \"cabang\", a2.\"flag\" as \"tipe_asset\", a3.\"nama\" as \"ena\", a4.\"nama\" as \"approval_status\" FROM \"asset_kapal\" a  LEFT JOIN \"cabang\" a1 ON a.\"cabang_id\" = a1.\"id\"  LEFT JOIN \"tipe_asset\" a2 ON a.\"tipe_asset_id\" = a2.\"id\"  LEFT JOIN \"enable\" a3 ON a.\"enable\" = a3.\"id\"  LEFT JOIN \"approval_status\" a4 ON a.\"approval_status_id\" = a4.\"id\"   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	const sertifikat = { "sertifikat": resQuery.rows }
	const activityLog = { "activityLog": resActivityLog.rows }
	let merge = { ...res.rows[0], ...sertifikat, ...activityLog }	
	result(null, merge);
}

AssetKapal.getAll = async (param, result, cabang_id) => {
    var wheres = f.getParam(param, "asset_kapal");
	wheres = wheres.replace(`a."flag"`, `a2."flag"`);
    var query = "SELECT a.* , a1.\"nama\" as \"cabang\", a2.\"flag\" as \"tipe_asset\", a3.\"nama\" as \"ena\", a4.\"nama\" as \"approval_status\" FROM \"asset_kapal\" a  LEFT JOIN \"cabang\" a1 ON a.\"cabang_id\" = a1.\"id\"  LEFT JOIN \"tipe_asset\" a2 ON a.\"tipe_asset_id\" = a2.\"id\"  LEFT JOIN \"enable\" a3 ON a.\"enable\" = a3.\"id\"  LEFT JOIN \"approval_status\" a4 ON a.\"approval_status_id\" = a4.\"id\" ";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"cabang_id\" LIKE '%" + param.q + "%' OR a.\"simop_kd_fas\" LIKE '%" + param.q + "%' OR a.\"kepemilikan_kapal\" LIKE '%" + param.q + "%' OR a.\"simop_status_milik\" LIKE '%" + param.q + "%' OR a.\"simop_kd_agen\" LIKE '%" + param.q + "%' OR a.\"tipe_asset_id\" LIKE '%" + param.q + "%' OR a.\"nama_asset\" LIKE '%" + param.q + "%' OR a.\"horse_power\" LIKE '%" + param.q + "%' OR a.\"tahun_perolehan\" LIKE '%" + param.q + "%' OR a.\"nilai_perolehan\" LIKE '%" + param.q + "%' OR a.\"enable\" LIKE '%" + param.q + "%' OR a.\"asset_number\" LIKE '%" + param.q + "%' OR a.\"simop_kd_puspel_jai\" LIKE '%" + param.q + "%' OR a.\"simop_new_puspel_jai\" LIKE '%" + param.q + "%' OR a.\"simop_new_asset_jai\" LIKE '%" + param.q + "%' OR a.\"approval_status_id\" LIKE '%" + param.q + "%' OR a.\"loa\" LIKE '%" + param.q + "%' OR a.\"tahun_pembuatan\" LIKE '%" + param.q + "%' OR a.\"breadth\" LIKE '%" + param.q + "%' OR a.\"kontruksi\" LIKE '%" + param.q + "%' OR a.\"depth\" LIKE '%" + param.q + "%' OR a.\"negara_pembuat\" LIKE '%" + param.q + "%' OR a.\"draft_max\" LIKE '%" + param.q + "%' OR a.\"daya\" LIKE '%" + param.q + "%' OR a.\"putaran\" LIKE '%" + param.q + "%' OR a.\"merk\" LIKE '%" + param.q + "%' OR a.\"tipe\" LIKE '%" + param.q + "%' OR a.\"daya_motor\" LIKE '%" + param.q + "%' OR a.\"daya_generator\" LIKE '%" + param.q + "%' OR a.\"putaran_spesifikasi\" LIKE '%" + param.q + "%' OR a.\"merk_spesifikasi\" LIKE '%" + param.q + "%' OR a.\"tipe_spesifikasi\" LIKE '%" + param.q + "%' OR a.\"klas\" LIKE '%" + param.q + "%' OR a.\"notasi_permesinan\" LIKE '%" + param.q + "%' OR a.\"no_registrasi\" LIKE '%" + param.q + "%' OR a.\"notasi_perlengkapan\" LIKE '%" + param.q + "%' OR a.\"port_of_registration\" LIKE '%" + param.q + "%' OR a.\"notasi_perairan\" LIKE '%" + param.q + "%' OR a.\"notasi_lambung\" LIKE '%" + param.q + "%' OR a.\"gross_tonnage\" LIKE '%" + param.q + "%' OR a.\"bolard_pull\" LIKE '%" + param.q + "%' OR a.\"kecepatan\" LIKE '%" + param.q + "%' OR a.\"ship_particular\" LIKE '%" + param.q + "%' OR a.\"sertifikat_id\" LIKE '%" + param.q + "%'";	
		wheres += ")";
	}

	wheres += f.whereCabang(cabang_id, `a."cabang_id"`, wheres.length);
	query += wheres;
	query += "ORDER BY a.\"id\" DESC";
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

AssetKapal.updateById = async(id, assetkapal, result, user_id) => {
	const sertifikat = assetkapal.sertifikat;
	f.query("DELETE FROM \"sertifikat\" WHERE \"asset_kapal_id\"='" + id + "'");
		await f.executeSertifikat(sertifikat, id, "asset_kapal", "asset_kapal_id");
	delete assetkapal.sertifikat;

	var arr = ["cabang_id", "simop_kd_fas", "kepemilikan_kapal", "simop_status_milik", "simop_kd_agen", "tipe_asset_id", "nama_asset", "horse_power", "tahun_perolehan", "nilai_perolehan", "enable", "asset_number", "simop_kd_puspel_jai", "simop_new_puspel_jai", "simop_new_asset_jai", "approval_status_id", "loa", "tahun_pembuatan", "breadth", "kontruksi", "depth", "negara_pembuat", "draft_max", "daya", "putaran", "merk", "tipe", "daya_motor", "daya_generator", "putaran_spesifikasi", "merk_spesifikasi", "tipe_spesifikasi", "klas", "notasi_permesinan", "no_registrasi", "notasi_perlengkapan", "port_of_registration", "notasi_perairan", "notasi_lambung", "gross_tonnage", "bolard_pull", "kecepatan", "ship_particular", "sertifikat_id"];
	var str = f.getValueUpdate(assetkapal, id, arr);
	var id_activity_log = await f.getid("activity_log");
	objek.koneksi = id;
	objek.action = assetkapal.approval_status_id;
	objek.item = "assetkapal";
	objek.remark = assetkapal.activityLog ? assetkapal.activityLog.remark : '';
	objek.user_id = user_id;
	const hval = await f.headerValue(objek, id_activity_log);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);
	await f.query("UPDATE \"asset_kapal\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...assetkapal });
};

AssetKapal.remove = (id, result) => {
	f.query("DELETE FROM \"asset_kapal\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = AssetKapal;


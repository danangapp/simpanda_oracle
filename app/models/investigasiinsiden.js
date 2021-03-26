const f = require('../controllers/function');
var objek = new Object();

// constructor
const InvestigasiInsiden = function (investigasiinsiden) {
    this.approval_status_id = investigasiinsiden.approval_status_id;
    this.enable = investigasiinsiden.enable;
    this.no_report = investigasiinsiden.no_report;
    this.unit_terkait = investigasiinsiden.unit_terkait;
    this.judul_report = investigasiinsiden.judul_report;
    this.kronologi_kejadian = investigasiinsiden.kronologi_kejadian;
    this.temuan_investigasi = investigasiinsiden.temuan_investigasi;
    this.bukti_temuan = investigasiinsiden.bukti_temuan;
    this.saksi_1 = investigasiinsiden.saksi_1;
    this.saksi_2 = investigasiinsiden.saksi_2;
    this.investigator = investigasiinsiden.investigator;
    this.rincian_kegiatan = investigasiinsiden.rincian_kegiatan;
    this.luka_sakit = investigasiinsiden.luka_sakit;
    this.wujud_cedera = investigasiinsiden.wujud_cedera;
    this.bagian_tubuh_cedera = investigasiinsiden.bagian_tubuh_cedera;
    this.mekanisme_cedera = investigasiinsiden.mekanisme_cedera;
    this.kerusakan_alat = investigasiinsiden.kerusakan_alat;
    this.uraian_kejadian = investigasiinsiden.uraian_kejadian;
    this.analisa_penyebab = investigasiinsiden.analisa_penyebab;
    this.peralatan_kelengkapan = investigasiinsiden.peralatan_kelengkapan;
    this.alat_pelindung_diri = investigasiinsiden.alat_pelindung_diri;
    this.perilaku = investigasiinsiden.perilaku;
    this.kebersihan_kerapihan = investigasiinsiden.kebersihan_kerapihan;
    this.peralatan_perlengkapan = investigasiinsiden.peralatan_perlengkapan;
    this.kemampuan_kondisi_fisik = investigasiinsiden.kemampuan_kondisi_fisik;
    this.pemeliharaan_perbaikan = investigasiinsiden.pemeliharaan_perbaikan;
    this.design = investigasiinsiden.design;
    this.tingkat_kemampuan = investigasiinsiden.tingkat_kemampuan;
    this.penjagaan = investigasiinsiden.penjagaan;
    this.tindakan_terkait = investigasiinsiden.tindakan_terkait;
    this.faktor_utama_insiden = investigasiinsiden.faktor_utama_insiden;
    this.rekomendasi_tindakan = investigasiinsiden.rekomendasi_tindakan;
    this.pihak_yang_bertanggungjawab = investigasiinsiden.pihak_yang_bertanggungjawab;
    this.pelaksana = investigasiinsiden.pelaksana;
    this.tanggal_pemeriksaan = investigasiinsiden.tanggal_pemeriksaan;
    this.nama = investigasiinsiden.nama;
    this.jabatan = investigasiinsiden.jabatan;
    this.status_investigasi_insiden_id = investigasiinsiden.status_investigasi_insiden_id;
    this.prepard_by = investigasiinsiden.prepard_by;
    this.prepard_tanggal = investigasiinsiden.prepard_tanggal;
    this.reviewed_by = investigasiinsiden.reviewed_by;
    this.reviewed_tanggal = investigasiinsiden.reviewed_tanggal;
    this.approved_by = investigasiinsiden.approved_by;
    this.approved_tanggal = investigasiinsiden.approved_tanggal;
    this.cabang_id = investigasiinsiden.cabang_id;
    this.peralatan_kelengkapan_lainnya = investigasiinsiden.peralatan_kelengkapan_lainnya;
    this.alat_pelindung_diri_lainnya = investigasiinsiden.alat_pelindung_diri_lainnya;
    this.perilaku_lainnya = investigasiinsiden.perilaku_lainnya;
    this.kebersihan_kerapihan_lainnya = investigasiinsiden.kebersihan_kerapihan_lainnya;
    this.rincian_kegiatan_lainnya = investigasiinsiden.rincian_kegiatan_lainnya;
    this.peralatan_perlengkapan_lainnya = investigasiinsiden.peralatan_perlengkapan_lainnya;
    this.pemeliharaan_perbaikan_lainnya = investigasiinsiden.pemeliharaan_perbaikan_lainnya;
    this.kemampuan_kondisi_fisik_lain = investigasiinsiden.kemampuan_kondisi_fisik_lain;
    this.kebersihan_kerapihan_lain = investigasiinsiden.kebersihan_kerapihan_lain;
    this.tingkat_kemampuan_lainnya = investigasiinsiden.tingkat_kemampuan_lainnya;
    this.penjagaan_lainnya = investigasiinsiden.penjagaan_lainnya;
    this.tindakan_terkait_lainnya = investigasiinsiden.tindakan_terkait_lainnya;
};

const setActivity = (objects, koneksi = 1) => {
		objek.date = f.toDate(objects.date);
		objek.item = 'investigasiinsiden';
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

InvestigasiInsiden.create = async(newInvestigasiInsiden, result, cabang_id, user_id) => {
	const investigasi_insiden_tim = newInvestigasiInsiden.investigasi_insiden_tim;
	delete newInvestigasiInsiden.investigasi_insiden_tim;
	newInvestigasiInsiden = setActivity(newInvestigasiInsiden);
	var id = await f.getid("investigasi_insiden");
	const hv = await f.headerValue(newInvestigasiInsiden, id);
	var queryText = "INSERT INTO \"investigasi_insiden\" " + hv + " RETURN \"id\" INTO :id";
	const exec = f.query(queryText, 1);
	delete newInvestigasiInsiden.id;
	const res = await exec;

	for (var i in investigasi_insiden_tim) {
	    const x = investigasi_insiden_tim[i];
		x['investigasi_insiden_id'] = id;
	
		const id_inv = await f.getid("investigasi_insiden_tim");
		const hval = await f.headerValue(x, id_inv);
		await f.query("INSERT INTO \"investigasi_insiden_tim\" " + hval);
	}

	objek.koneksi = id;
	objek.action = "0";
	objek.user_id = user_id;
	var id_activity_log = await f.getid("activity_log");
	const hval = await f.headerValue(objek, id_activity_log);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);

	result(null, { id: id, ...newInvestigasiInsiden });
};

InvestigasiInsiden.findById = async (id, result) => {
	const resQuery =await f.query("SELECT * FROM \"investigasi_insiden_tim\" WHERE \"investigasi_insiden_id\" = '" + id + "'");
	const resActivityLog = await f.query("SELECT a.\"date\", a.\"item\", a.\"action\", a.\"user_id\", a.\"remark\", a.\"koneksi\" FROM \"activity_log\" a INNER JOIN \"investigasi_insiden\" b ON a.\"item\" = 'investigasi_insiden' AND a.\"koneksi\" = b.\"id\" WHERE b.\"id\" =  '" + id + "'");
	var queryText = "SELECT a.* , a1.\"nama\" as \"approval_status\", a2.\"nama\" as \"ena\", a3.\"nama\" as \"status_investigasi_insiden\", a4.\"nama\" as \"cabang\" FROM \"investigasi_insiden\" a  LEFT JOIN \"approval_status\" a1 ON a.\"approval_status_id\" = a1.\"id\"  LEFT JOIN \"enable\" a2 ON a.\"enable\" = a2.\"id\"  LEFT JOIN \"status_investigasi_insiden\" a3 ON a.\"status_investigasi_insiden_id\" = a3.\"id\"  LEFT JOIN \"cabang\" a4 ON a.\"cabang_id\" = a4.\"id\"   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
		const investigasi_insiden_tim = { "investigasi_insiden_tim": resQuery }
	const activityLog = { "activityLog": resActivityLog.rows }
	let merge = { ...res.rows[0], ...investigasi_insiden_tim, ...activityLog }	
	result(null, merge);
}

InvestigasiInsiden.getAll = async (param, result, cabang_id) => {
    var wheres = f.getParam(param, "investigasi_insiden");
    var query = "SELECT a.* , a1.\"nama\" as \"approval_status\", a2.\"nama\" as \"ena\", a3.\"nama\" as \"status_investigasi_insiden\", a4.\"nama\" as \"cabang\" FROM \"investigasi_insiden\" a  LEFT JOIN \"approval_status\" a1 ON a.\"approval_status_id\" = a1.\"id\"  LEFT JOIN \"enable\" a2 ON a.\"enable\" = a2.\"id\"  LEFT JOIN \"status_investigasi_insiden\" a3 ON a.\"status_investigasi_insiden_id\" = a3.\"id\"  LEFT JOIN \"cabang\" a4 ON a.\"cabang_id\" = a4.\"id\" ";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"approval_status_id\" LIKE '%" + param.q + "%' OR a.\"enable\" LIKE '%" + param.q + "%' OR a.\"no_report\" LIKE '%" + param.q + "%' OR a.\"unit_terkait\" LIKE '%" + param.q + "%' OR a.\"judul_report\" LIKE '%" + param.q + "%' OR a.\"kronologi_kejadian\" LIKE '%" + param.q + "%' OR a.\"temuan_investigasi\" LIKE '%" + param.q + "%' OR a.\"bukti_temuan\" LIKE '%" + param.q + "%' OR a.\"saksi_1\" LIKE '%" + param.q + "%' OR a.\"saksi_2\" LIKE '%" + param.q + "%' OR a.\"investigator\" LIKE '%" + param.q + "%' OR a.\"rincian_kegiatan\" LIKE '%" + param.q + "%' OR a.\"luka_sakit\" LIKE '%" + param.q + "%' OR a.\"wujud_cedera\" LIKE '%" + param.q + "%' OR a.\"bagian_tubuh_cedera\" LIKE '%" + param.q + "%' OR a.\"mekanisme_cedera\" LIKE '%" + param.q + "%' OR a.\"kerusakan_alat\" LIKE '%" + param.q + "%' OR a.\"uraian_kejadian\" LIKE '%" + param.q + "%' OR a.\"analisa_penyebab\" LIKE '%" + param.q + "%' OR a.\"peralatan_kelengkapan\" LIKE '%" + param.q + "%' OR a.\"alat_pelindung_diri\" LIKE '%" + param.q + "%' OR a.\"perilaku\" LIKE '%" + param.q + "%' OR a.\"kebersihan_kerapihan\" LIKE '%" + param.q + "%' OR a.\"peralatan_perlengkapan\" LIKE '%" + param.q + "%' OR a.\"kemampuan_kondisi_fisik\" LIKE '%" + param.q + "%' OR a.\"pemeliharaan_perbaikan\" LIKE '%" + param.q + "%' OR a.\"design\" LIKE '%" + param.q + "%' OR a.\"tingkat_kemampuan\" LIKE '%" + param.q + "%' OR a.\"penjagaan\" LIKE '%" + param.q + "%' OR a.\"tindakan_terkait\" LIKE '%" + param.q + "%' OR a.\"faktor_utama_insiden\" LIKE '%" + param.q + "%' OR a.\"rekomendasi_tindakan\" LIKE '%" + param.q + "%' OR a.\"pihak_yang_bertanggungjawab\" LIKE '%" + param.q + "%' OR a.\"pelaksana\" LIKE '%" + param.q + "%' OR a.\"tanggal_pemeriksaan\" LIKE '%" + param.q + "%' OR a.\"nama\" LIKE '%" + param.q + "%' OR a.\"jabatan\" LIKE '%" + param.q + "%' OR a.\"status_investigasi_insiden_id\" LIKE '%" + param.q + "%' OR a.\"prepard_by\" LIKE '%" + param.q + "%' OR a.\"prepard_tanggal\" LIKE '%" + param.q + "%' OR a.\"reviewed_by\" LIKE '%" + param.q + "%' OR a.\"reviewed_tanggal\" LIKE '%" + param.q + "%' OR a.\"approved_by\" LIKE '%" + param.q + "%' OR a.\"approved_tanggal\" LIKE '%" + param.q + "%' OR a.\"cabang_id\" LIKE '%" + param.q + "%' OR a.\"peralatan_kelengkapan_lainnya\" LIKE '%" + param.q + "%' OR a.\"alat_pelindung_diri_lainnya\" LIKE '%" + param.q + "%' OR a.\"perilaku_lainnya\" LIKE '%" + param.q + "%' OR a.\"kebersihan_kerapihan_lainnya\" LIKE '%" + param.q + "%' OR a.\"rincian_kegiatan_lainnya\" LIKE '%" + param.q + "%' OR a.\"peralatan_perlengkapan_lainnya\" LIKE '%" + param.q + "%' OR a.\"pemeliharaan_perbaikan_lainnya\" LIKE '%" + param.q + "%' OR a.\"kemampuan_kondisi_fisik_lain\" LIKE '%" + param.q + "%' OR a.\"kebersihan_kerapihan_lain\" LIKE '%" + param.q + "%' OR a.\"tingkat_kemampuan_lainnya\" LIKE '%" + param.q + "%' OR a.\"penjagaan_lainnya\" LIKE '%" + param.q + "%' OR a.\"tindakan_terkait_lainnya\" LIKE '%" + param.q + "%'";	
		wheres += ")";
	}

	wheres += f.whereCabang(cabang_id, `a."cabang_id"`, wheres.length);
	query += wheres;
	query += "ORDER BY a.\"id\" DESC";
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

InvestigasiInsiden.updateById = async(id, investigasiinsiden, result, user_id) => {

	var investigasi_insiden_tim = investigasiinsiden.investigasi_insiden_tim;
	await f.query("DELETE \"investigasi_insiden_tim\" WHERE \"investigasi_insiden_id\"='" + id + "'");
	for (var i in investigasi_insiden_tim) {
		var id_pj = await f.getid("investigasi_insiden_tim");
		var hv_pj = await f.headerValue(investigasiinsiden[i], id_pj);
		var queryText = "INSERT INTO \"investigasi_insiden_tim\" " + hv_pj;
		await f.query(queryText, 2);
	}
	delete investigasiinsiden.investigasi_insiden_tim;

	var arr = ["approval_status_id", "enable", "no_report", "unit_terkait", "judul_report", "kronologi_kejadian", "temuan_investigasi", "bukti_temuan", "saksi_1", "saksi_2", "investigator", "rincian_kegiatan", "luka_sakit", "wujud_cedera", "bagian_tubuh_cedera", "mekanisme_cedera", "kerusakan_alat", "uraian_kejadian", "analisa_penyebab", "peralatan_kelengkapan", "alat_pelindung_diri", "perilaku", "kebersihan_kerapihan", "peralatan_perlengkapan", "kemampuan_kondisi_fisik", "pemeliharaan_perbaikan", "design", "tingkat_kemampuan", "penjagaan", "tindakan_terkait", "faktor_utama_insiden", "rekomendasi_tindakan", "pihak_yang_bertanggungjawab", "pelaksana", "tanggal_pemeriksaan", "nama", "jabatan", "status_investigasi_insiden_id", "prepard_by", "prepard_tanggal", "reviewed_by", "reviewed_tanggal", "approved_by", "approved_tanggal", "cabang_id", "peralatan_kelengkapan_lainnya", "alat_pelindung_diri_lainnya", "perilaku_lainnya", "kebersihan_kerapihan_lainnya", "rincian_kegiatan_lainnya", "peralatan_perlengkapan_lainnya", "pemeliharaan_perbaikan_lainnya", "kemampuan_kondisi_fisik_lain", "kebersihan_kerapihan_lain", "tingkat_kemampuan_lainnya", "penjagaan_lainnya", "tindakan_terkait_lainnya"];
	var str = f.getValueUpdate(investigasiinsiden, id, arr);
	var id_activity_log = await f.getid("activity_log");
	objek.koneksi = id;
	objek.action = investigasiinsiden.approval_status_id;
	objek.item = "investigasiinsiden";
	objek.remark = investigasiinsiden.activityLog ? investigasiinsiden.activityLog.remark : '';
	objek.user_id = user_id;
	const hval = await f.headerValue(objek, id_activity_log);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);
	await f.query("UPDATE \"investigasi_insiden\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...investigasiinsiden });
};

InvestigasiInsiden.remove = (id, result) => {
	f.query("DELETE FROM \"investigasi_insiden\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = InvestigasiInsiden;


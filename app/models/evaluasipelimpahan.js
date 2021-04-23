const f = require('../controllers/function');
var objek = new Object();

// constructor
const EvaluasiPelimpahan = function (evaluasipelimpahan) {
    this.approval_status_id = evaluasipelimpahan.approval_status_id;
    this.enable = evaluasipelimpahan.enable;
    this.cabang_id = evaluasipelimpahan.cabang_id;
    this.bup = evaluasipelimpahan.bup;
    this.izin_bup = evaluasipelimpahan.izin_bup;
    this.penetapan_perairan_pandu = evaluasipelimpahan.penetapan_perairan_pandu;
    this.izin_pelimpahan = evaluasipelimpahan.izin_pelimpahan;
    this.pengawas_pemanduan = evaluasipelimpahan.pengawas_pemanduan;
    this.laporan_bulanan = evaluasipelimpahan.laporan_bulanan;
    this.bukti_pembayaran_pnpb = evaluasipelimpahan.bukti_pembayaran_pnpb;
    this.sispro = evaluasipelimpahan.sispro;
    this.tarif_jasa_pandu_tunda = evaluasipelimpahan.tarif_jasa_pandu_tunda;
    this.data_dukung = evaluasipelimpahan.data_dukung;
    this.file_pendukung = evaluasipelimpahan.file_pendukung;
    this.tanggal_sk = evaluasipelimpahan.tanggal_sk;
    this.file_sk_pelimpahan = evaluasipelimpahan.file_sk_pelimpahan;
    this.check_laporan_bulanan = evaluasipelimpahan.check_laporan_bulanan;
    this.check_bukti_pembayaran_pnpb = evaluasipelimpahan.check_bukti_pembayaran_pnpb;
    this.check_sispro = evaluasipelimpahan.check_sispro;
    this.check_tarif_jasa_pandu_tunda = evaluasipelimpahan.check_tarif_jasa_pandu_tunda;
    this.check_data_dukung = evaluasipelimpahan.check_data_dukung;
};

const setActivity = (objects, koneksi = 1) => {
		objek.date = f.toDate(objects.date);
		objek.item = 'evaluasipelimpahan';
		objek.action = objects.approval_status_id;
		objek.user_id = objects.user_id;
		objek.remark = objects.remark;
		objek.koneksi = koneksi;
		objek.keterangan = objects.keterangan;
		delete objects.date;
		delete objects.item;
		delete objects.action;
		delete objects.user_id;
		delete objects.remark;
		delete objects.koneksi;
		delete objects.keterangan;
		return objects
};

EvaluasiPelimpahan.create = async(newEvaluasiPelimpahan, result, cabang_id, user_id) => {
	newEvaluasiPelimpahan = setActivity(newEvaluasiPelimpahan);
	var id = await f.getid("evaluasi_pelimpahan");
	const hv = await f.headerValue(newEvaluasiPelimpahan, id);
	var queryText = "INSERT INTO \"evaluasi_pelimpahan\" " + hv + " RETURN \"id\" INTO :id";
	const exec = f.query(queryText, 1);
	delete newEvaluasiPelimpahan.id;
	const res = await exec;

	objek.koneksi = id;
	objek.action = "0";
	objek.user_id = user_id;
	objek.remark = "Pengajuan dibuat oleh admin cabang";
	var id_activity_log = await f.getid("activity_log");
	const hval = await f.headerValue(objek, id_activity_log);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);

	result(null, { id: id, ...newEvaluasiPelimpahan });
};

EvaluasiPelimpahan.findById = async (id, result) => {
	const resActivityLog = await f.query("SELECT a.\"date\", a.\"item\", a.\"action\", a.\"user_id\", a.\"remark\", a.\"keterangan\", a.\"koneksi\" FROM \"activity_log\" a INNER JOIN \"evaluasi_pelimpahan\" b ON a.\"item\" = 'evaluasi_pelimpahan' AND a.\"koneksi\" = b.\"id\" WHERE b.\"id\" =  '" + id + "'");
	var queryText = "SELECT a.* , a1.\"nama\" as \"approval_status\", a2.\"nama\" as \"ena\", a3.\"nama\" as \"cabang\" FROM \"evaluasi_pelimpahan\" a  LEFT JOIN \"approval_status\" a1 ON a.\"approval_status_id\" = a1.\"id\"  LEFT JOIN \"enable\" a2 ON a.\"enable\" = a2.\"id\"  LEFT JOIN \"cabang\" a3 ON a.\"cabang_id\" = a3.\"id\"   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	const activityLog = { "activityLog": resActivityLog.rows }
	let merge = { ...res.rows[0], ...activityLog }	
	result(null, merge);
}

EvaluasiPelimpahan.getAll = async (param, result, cabang_id) => {
    var wheres = f.getParam(param, "evaluasi_pelimpahan");
    
    if (param.sertifikat != undefined) {
		if (param.sertifikat == "kurang-dari-5-bulan") {
			wheres = wheres.replace(` and a."sertifikat" = 'kurang-dari-5-bulan'`, '');
		}else if (param.sertifikat == '5-sampai-dengan-11-bulan') {
			wheres = wheres.replace(` and a."sertifikat" = '5-sampai-dengan-11-bulan'`, '');
		}else if (param.sertifikat == 'lebih-dari-11-bulan') {
			wheres = wheres.replace(` and a."sertifikat" = 'lebih-dari-11-bulan'`, '');
		}
	}
	// console.log(wheres);
 	// return false

    var query = "SELECT a.* , a1.\"nama\" as \"approval_status\", a2.\"nama\" as \"ena\", a3.\"nama\" as \"cabang\" FROM \"evaluasi_pelimpahan\" a  LEFT JOIN \"approval_status\" a1 ON a.\"approval_status_id\" = a1.\"id\"  LEFT JOIN \"enable\" a2 ON a.\"enable\" = a2.\"id\"  LEFT JOIN \"cabang\" a3 ON a.\"cabang_id\" = a3.\"id\" ";

	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"approval_status_id\" LIKE '%" + param.q + "%' OR a.\"enable\" LIKE '%" + param.q + "%' OR a.\"cabang_id\" LIKE '%" + param.q + "%' OR a.\"bup\" LIKE '%" + param.q + "%' OR a.\"izin_bup\" LIKE '%" + param.q + "%' OR a.\"penetapan_perairan_pandu\" LIKE '%" + param.q + "%' OR a.\"izin_pelimpahan\" LIKE '%" + param.q + "%' OR a.\"pengawas_pemanduan\" LIKE '%" + param.q + "%' OR a.\"laporan_bulanan\" LIKE '%" + param.q + "%' OR a.\"bukti_pembayaran_pnpb\" LIKE '%" + param.q + "%' OR a.\"sispro\" LIKE '%" + param.q + "%' OR a.\"tarif_jasa_pandu_tunda\" LIKE '%" + param.q + "%' OR a.\"data_dukung\" LIKE '%" + param.q + "%' OR a.\"file_pendukung\" LIKE '%" + param.q + "%' OR a.\"tanggal_sk\" LIKE '%" + param.q + "%' OR a.\"file_sk_pelimpahan\" LIKE '%" + param.q + "%' OR a.\"check_laporan_bulanan\" LIKE '%" + param.q + "%' OR a.\"check_bukti_pembayaran_pnpb\" LIKE '%" + param.q + "%' OR a.\"check_sispro\" LIKE '%" + param.q + "%' OR a.\"check_tarif_jasa_pandu_tunda\" LIKE '%" + param.q + "%' OR a.\"check_data_dukung\" LIKE '%" + param.q + "%'";	
		wheres += ")";
	}

	wheres += f.whereCabang(cabang_id, `a."cabang_id"`, wheres.length);
	
	if (param.sertifikat != undefined) {
		wheres += ' AND ADD_MONTHS(\"tanggal_sk\", 24) > SYSDATE '
		if (param.sertifikat == "kurang-dari-5-bulan") {
			wheres += ' AND ADD_MONTHS(\"tanggal_sk\", 24) < ADD_MONTHS(SYSDATE, 5)'
		}else if (param.sertifikat == '5-sampai-dengan-11-bulan') {
			wheres += ' AND ADD_MONTHS(\"tanggal_sk\", 24) > ADD_MONTHS(SYSDATE, 5) AND ADD_MONTHS(\"tanggal_sk\", 24) < ADD_MONTHS(SYSDATE, 11)'
		}else if (param.sertifikat == 'lebih-dari-11-bulan') {
			wheres += ' AND ADD_MONTHS(\"tanggal_sk\", 24) > ADD_MONTHS(SYSDATE, 11)'
		}
	}

	query += wheres;
	query += "ORDER BY a.\"id\" DESC";
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

EvaluasiPelimpahan.updateById = async(id, evaluasipelimpahan, result, user_id) => {

	var arr = ["approval_status_id", "enable", "cabang_id", "bup", "izin_bup", "penetapan_perairan_pandu", "izin_pelimpahan", "pengawas_pemanduan", "laporan_bulanan", "bukti_pembayaran_pnpb", "sispro", "tarif_jasa_pandu_tunda", "data_dukung", "file_pendukung", "tanggal_sk", "file_sk_pelimpahan", "check_laporan_bulanan", "check_bukti_pembayaran_pnpb", "check_sispro", "check_tarif_jasa_pandu_tunda", "check_data_dukung"];
	var str = f.getValueUpdate(evaluasipelimpahan, id, arr);
	var id_activity_log = await f.getid("activity_log");
	objek.koneksi = id;
	objek.action = evaluasipelimpahan.approval_status_id;
	objek.keterangan = evaluasipelimpahan.keterangan;
	objek.item = "evaluasipelimpahan";
	objek.user_id = user_id;
	if(evaluasipelimpahan.approval_status_id == 1){
		objek.remark = "Pengajuan disetujui oleh pusat";
	}else if(evaluasipelimpahan.approval_status_id == 2){
		objek.remark = "Pengajuan ditolak oleh pusat";
	}else if(evaluasipelimpahan.approval_status_id == 0){
		objek.remark = "Pengajuan dirubah oleh admin cabang";
	}
	const hval = await f.headerValue(objek, id_activity_log);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);
	await f.query("UPDATE \"evaluasi_pelimpahan\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...evaluasipelimpahan });
};

EvaluasiPelimpahan.remove = (id, result) => {
	f.query("DELETE FROM \"evaluasi_pelimpahan\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = EvaluasiPelimpahan;


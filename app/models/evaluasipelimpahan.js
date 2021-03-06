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

EvaluasiPelimpahan.create = async (newEvaluasiPelimpahan, result, cabang_id, user_id) => {
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

	if (param.sertifikat) {
		wheres = wheres.replace(`and LOWER(a."sertifikat") = LOWER('${param.sertifikat}')`, '');
	}
	// console.log(wheres);
	// return false

	var query = "SELECT a.* , a1.\"nama\" as \"approval_status\", a2.\"nama\" as \"ena\", a3.\"nama\" as \"cabang\" FROM \"evaluasi_pelimpahan\" a  LEFT JOIN \"approval_status\" a1 ON a.\"approval_status_id\" = a1.\"id\"  LEFT JOIN \"enable\" a2 ON a.\"enable\" = a2.\"id\"  LEFT JOIN \"cabang\" a3 ON a.\"cabang_id\" = a3.\"id\" ";

	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += `LOWER(a."approval_status_id") LIKE LOWER('%${param.q}%') OR LOWER(a."enable") LIKE LOWER('%${param.q}%') OR LOWER(a."cabang_id") LIKE LOWER('%${param.q}%') OR LOWER(a."bup") LIKE LOWER('%${param.q}%') OR LOWER(a."izin_bup") LIKE LOWER('%${param.q}%') OR LOWER(a."penetapan_perairan_pandu") LIKE LOWER('%${param.q}%') OR LOWER(a."izin_pelimpahan") LIKE LOWER('%${param.q}%') OR LOWER(a."pengawas_pemanduan") LIKE LOWER('%${param.q}%') OR LOWER(a."laporan_bulanan") LIKE LOWER('%${param.q}%') OR LOWER(a."bukti_pembayaran_pnpb") LIKE LOWER('%${param.q}%') OR LOWER(a."sispro") LIKE LOWER('%${param.q}%') OR LOWER(a."tarif_jasa_pandu_tunda") LIKE LOWER('%${param.q}%') OR LOWER(a."data_dukung") LIKE LOWER('%${param.q}%') OR LOWER(a."file_pendukung") LIKE LOWER('%${param.q}%') OR LOWER(a."tanggal_sk") LIKE LOWER('%${param.q}%') OR LOWER(a."file_sk_pelimpahan") LIKE LOWER('%${param.q}%') OR LOWER(a."check_laporan_bulanan") LIKE LOWER('%${param.q}%') OR LOWER(a."check_bukti_pembayaran_pnpb") LIKE LOWER('%${param.q}%') OR LOWER(a."check_sispro") LIKE LOWER('%${param.q}%') OR LOWER(a."check_tarif_jasa_pandu_tunda") LIKE LOWER('%${param.q}%') OR LOWER(a."check_data_dukung") LIKE LOWER('%${param.q}%')`;
		wheres += ")";
	}

	wheres += f.whereCabang(cabang_id, `a."cabang_id"`, wheres.length);

	if (param.sertifikat != undefined) {
		wheres += ' AND ADD_MONTHS(\"tanggal_sk\", 24) > SYSDATE '
		if (param.sertifikat == "filter-1") {
			wheres += ' AND ADD_MONTHS(\"tanggal_sk\", 24) <= ADD_MONTHS(SYSDATE, 3)'
		} else if (param.sertifikat == 'filter-2') {
			wheres += ' AND ADD_MONTHS(\"tanggal_sk\", 24) > ADD_MONTHS(SYSDATE, 3) AND ADD_MONTHS(\"tanggal_sk\", 24) <= ADD_MONTHS(SYSDATE, 7)'
		} else if (param.sertifikat == 'filter-3') {
			wheres += ' AND ADD_MONTHS(\"tanggal_sk\", 24) > ADD_MONTHS(SYSDATE, 7) AND ADD_MONTHS(\"tanggal_sk\", 24) <= ADD_MONTHS(SYSDATE, 12)'
		}
		wheres += ' ADD_MONTHS(\"tanggal_sk\", 24) > SYSDATE'
	}

	query += wheres;
	query += `ORDER BY a."upd_date" DESC`;
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

EvaluasiPelimpahan.updateById = async (id, evaluasipelimpahan, result, user_id) => {

	var arr = ["approval_status_id", "enable", "cabang_id", "bup", "izin_bup", "penetapan_perairan_pandu", "izin_pelimpahan", "pengawas_pemanduan", "laporan_bulanan", "bukti_pembayaran_pnpb", "sispro", "tarif_jasa_pandu_tunda", "data_dukung", "file_pendukung", "tanggal_sk", "file_sk_pelimpahan", "check_laporan_bulanan", "check_bukti_pembayaran_pnpb", "check_sispro", "check_tarif_jasa_pandu_tunda", "check_data_dukung"];
	var str = f.getValueUpdate(evaluasipelimpahan, id, arr);
	var id_activity_log = await f.getid("activity_log");
	objek.koneksi = id;
	objek.action = evaluasipelimpahan.approval_status_id;
	objek.keterangan = evaluasipelimpahan.keterangan;
	objek.item = "evaluasipelimpahan";
	objek.user_id = user_id;
	if (evaluasipelimpahan.approval_status_id == 1) {
		objek.remark = "Pengajuan disetujui oleh pusat";
	} else if (evaluasipelimpahan.approval_status_id == 2) {
		objek.remark = "Pengajuan ditolak oleh pusat";
	} else if (evaluasipelimpahan.approval_status_id == 0) {
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


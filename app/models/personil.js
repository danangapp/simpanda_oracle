const f = require('../controllers/function');
var objek = new Object();

// constructor
const Personil = function (personil) {
    this.tipe_personil_id = personil.tipe_personil_id;
    this.approval_status_id = personil.approval_status_id;
    this.simop_kd_pers_pandu = personil.simop_kd_pers_pandu;
    this.simop_kd_pers_pandu_cbg = personil.simop_kd_pers_pandu_cbg;
    this.enable = personil.enable;
    this.asset_kapal_id = personil.asset_kapal_id;
    this.nama = personil.nama;
    this.kelas = personil.kelas;
    this.tempat_lahir = personil.tempat_lahir;
    this.tanggal_lahir = personil.tanggal_lahir;
    this.nipp = personil.nipp;
    this.jabatan = personil.jabatan;
    this.status_kepegawaian_id = personil.status_kepegawaian_id;
    this.cv = personil.cv;
    this.cabang_id = personil.cabang_id;
    this.nomor_sk = personil.nomor_sk;
    this.tanggal_mulai = personil.tanggal_mulai;
    this.tanggal_selesai = personil.tanggal_selesai;
    this.sk = personil.sk;
    this.skpp = personil.skpp;
    this.surat_kesehatan = personil.surat_kesehatan;
    this.sertifikat = personil.sertifikat;
    this.date = personil.date;
    this.item = personil.item;
    this.action = personil.action;
    this.user_id = personil.user_id;
    this.remark = personil.remark;
    this.koneksi = personil.koneksi;
};

const setActivity = (objects, koneksi = 1) => {
		objek.date = f.toDate(objects.date);
		objek.item = 'personil';
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

Personil.create = async(newPersonil, result, cabang_id, user_id) => {
		const sertifikat = newPersonil.sertifikat;
		delete newPersonil.sertifikat;
		newPersonil = setActivity(newPersonil);
		var id = await f.getid("personil");
		const hv = await f.headerValue(newPersonil, id);
		var queryText = "INSERT INTO \"personil\" " + hv + " RETURN \"id\" INTO :id";
		const exec = f.query(queryText, 1);
		delete newPersonil.id;
		const res = await exec;

		await f.executeSertifikat(sertifikat, id, "personil", "personil_id");
		objek.koneksi = id;
		objek.action = "1";
		objek.user_id = user_id;
		var id = await f.getid("activity_log");
		const hval = await f.headerValue(objek, id);
		await f.query("INSERT INTO \"activity_log\" " + hval, 2);

		result(null, { id: id, ...newPersonil });
};

Personil.findById = async (id, result) => {
	const resQuery = await f.query("SELECT a.*, c.\"nama\" as \"tipe_cert\", d.\"nama\" as \"jenis_cert\" FROM \"sertifikat\" a INNER JOIN \"personil\" b ON a.\"personil_id\" = b.\"id\" INNER JOIN \"tipe_cert\" c ON a.\"tipe_cert_id\" = c.\"id\" INNER JOIN \"jenis_cert\" d ON c.\"jenis_cert_id\" = d.\"id\" WHERE b.\"id\" =  '" + id + "'");
	const resActivityLog = await f.query("SELECT a.\"date\", a.\"item\", a.\"action\", a.\"user_id\", a.\"remark\", a.\"koneksi\" FROM \"activity_log\" a INNER JOIN \"personil\" b ON a.\"item\" = 'personil' AND a.\"koneksi\" = b.\"id\" WHERE b.\"id\" =  '" + id + "'");
	var queryText = "SELECT a.* , a1.\"flag\" as \"flag\", a2.\"nama\" as \"approval_status\", a3.\"nama\" as \"ena\", a4.\"nama_asset\" as \"asset_kapal\", a5.\"nama\" as \"status_kepegawaian\", a6.\"nama\" as \"cabang\" FROM \"personil\" a  LEFT JOIN \"tipe_personil\" a1 ON a.\"tipe_personil_id\" = a1.\"id\"  LEFT JOIN \"approval_status\" a2 ON a.\"approval_status_id\" = a2.\"id\"  LEFT JOIN \"enable\" a3 ON a.\"enable\" = a3.\"id\"  LEFT JOIN \"asset_kapal\" a4 ON a.\"asset_kapal_id\" = a4.\"id\"  LEFT JOIN \"status_kepegawaian\" a5 ON a.\"status_kepegawaian_id\" = a5.\"id\"  LEFT JOIN \"cabang\" a6 ON a.\"cabang_id\" = a6.\"id\"   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	const sertifikat = { "sertifikat": resQuery.rows }
	const activityLog = { "activityLog": resActivityLog.rows[0] }
	let merge = { ...res.rows[0], ...sertifikat, ...activityLog }	
	result(null, merge);
}

Personil.getAll = async (param, result, cabang_id) => {
    var wheres = f.getParam(param, "personil");
	wheres = wheres.replace(`a."flag"`, `a1."flag"`);
    var query = "SELECT a.* , a1.\"flag\" as \"flag\", a2.\"nama\" as \"approval_status\", a3.\"nama\" as \"ena\", a4.\"nama_asset\" as \"asset_kapal\", a5.\"nama\" as \"status_kepegawaian\", a6.\"nama\" as \"cabang\" FROM \"personil\" a  LEFT JOIN \"tipe_personil\" a1 ON a.\"tipe_personil_id\" = a1.\"id\"  LEFT JOIN \"approval_status\" a2 ON a.\"approval_status_id\" = a2.\"id\"  LEFT JOIN \"enable\" a3 ON a.\"enable\" = a3.\"id\"  LEFT JOIN \"asset_kapal\" a4 ON a.\"asset_kapal_id\" = a4.\"id\"  LEFT JOIN \"status_kepegawaian\" a5 ON a.\"status_kepegawaian_id\" = a5.\"id\"  LEFT JOIN \"cabang\" a6 ON a.\"cabang_id\" = a6.\"id\" ";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"tipe_personil_id\" LIKE '%" + param.q + "%' OR a.\"approval_status_id\" LIKE '%" + param.q + "%' OR a.\"simop_kd_pers_pandu\" LIKE '%" + param.q + "%' OR a.\"simop_kd_pers_pandu_cbg\" LIKE '%" + param.q + "%' OR a.\"enable\" LIKE '%" + param.q + "%' OR a.\"asset_kapal_id\" LIKE '%" + param.q + "%' OR a.\"nama\" LIKE '%" + param.q + "%' OR a.\"kelas\" LIKE '%" + param.q + "%' OR a.\"tempat_lahir\" LIKE '%" + param.q + "%' OR a.\"tanggal_lahir\" LIKE '%" + param.q + "%' OR a.\"nipp\" LIKE '%" + param.q + "%' OR a.\"jabatan\" LIKE '%" + param.q + "%' OR a.\"status_kepegawaian_id\" LIKE '%" + param.q + "%' OR a.\"cv\" LIKE '%" + param.q + "%' OR a.\"cabang_id\" LIKE '%" + param.q + "%' OR a.\"nomor_sk\" LIKE '%" + param.q + "%' OR a.\"tanggal_mulai\" LIKE '%" + param.q + "%' OR a.\"tanggal_selesai\" LIKE '%" + param.q + "%' OR a.\"sk\" LIKE '%" + param.q + "%' OR a.\"skpp\" LIKE '%" + param.q + "%' OR a.\"surat_kesehatan\" LIKE '%" + param.q + "%' OR a.\"sertifikat_id\" LIKE '%" + param.q + "%'";	
		wheres += ")";
	}

	wheres += f.whereCabang(cabang_id, `a."cabang_id"`, wheres.length);
	query += wheres;
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

Personil.updateById = async(id, personil, result, user_id) => {
	const sertifikat = personil.sertifikat;
	f.query("DELETE FROM \"sertifikat\" WHERE \"personil_id\"='" + id + "'");
	await f.executeSertifikat(sertifikat, id, "personil", "personil_id");
	delete personil.sertifikat;
		personil = await setActivity(personil, id);

	var arr = ["tipe_personil_id", "approval_status_id", "simop_kd_pers_pandu", "simop_kd_pers_pandu_cbg", "enable", "asset_kapal_id", "nama", "kelas", "tempat_lahir", "tanggal_lahir", "nipp", "jabatan", "status_kepegawaian_id", "cv", "cabang_id", "nomor_sk", "tanggal_mulai", "tanggal_selesai", "sk", "skpp", "surat_kesehatan", "sertifikat_id"];
	var str = f.getValueUpdate(personil, id, arr);
	var id = await f.getid("activity_log");
	objek.koneksi = id;
	objek.action = "2";
	objek.user_id = user_id;
	const hval = await f.headerValue(objek, id);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);
	f.query("UPDATE \"personil\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...personil });
};

Personil.remove = (id, result) => {
	f.query("DELETE FROM \"personil\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = Personil;


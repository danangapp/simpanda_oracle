const f = require('../controllers/function');
const simop = require('../controllers/simop');
var objek = new Object();
const axios = require('axios').default;



const cekBody = (rows, cabang = "cabang") => {
	var dt;
	var esbBody = {
		"nmPersPandu": rows.nama,
		"nipp": rows.nipp,
		"kelas": rows.kelas,
		"kdCabang": rows.cabang_id < 10 ? "0" + rows.cabang_id : rows.cabang_id,
		"enable": "1",
		"kdPersPanduCbg": rows.cabang_id < 10 ? "0" + rows.cabang_id : rows.cabang_id
	}
	if (rows.simop_kd_pers_pandu != undefined) {
		esbBody['kdPersPanduCbg'] = "";
		esbBody['kdPersPandu'] = rows.simop_kd_pers_pandu;

		if (cabang == "cabang") {
			dt = {
				"opUpdateMstPersPanduLautCabangRequest": {
					"esbBody": esbBody
				}
			}
		} else {
			dt = {
				"opUpdateMstPersPanduLautProdRequest": {
					"esbBody": esbBody
				}
			}
		}
	} else {
		// console.log('lewat kemari aja');
		if (cabang == "cabang") {
			dt = {
				"opInsertMstPanduLautCabangRequest": {
					"esbBody": esbBody
				}
			}
		} else {
			dt = {
				"opInsertMstPanduLautProdRequest": {
					"esbBody": esbBody
				}
			}
		}
	}

	return dt;
}


const cekBodyBandar = (rows, cabang = "cabang") => {
	// console.log(rows)
	var dt;
	var esbBody = {
		"nmPersPandu": rows.nama,
		"nipp": rows.nipp || "0",
		"kelas": rows.kelas || "0",
		"kdCabang": rows.cabang_id < 10 ? `0${rows.cabang_id}` : `${rows.cabang_id}`,
		"enable": "1",
		"kdPersPanduCbg": ""
	}

	if (rows.simop_kd_pers_pandu != undefined) {
		if (cabang == "cabang") {
			esbBody['kdPersPandu'] = rows.simop_kd_pers_pandu;
			dt = {
				"opUpdateMstPersPanduCabangRequest": {
					"esbBody": esbBody
				}
			}
		} else {
			esbBody['kdPersPandu'] = rows.simop_kd_pers_pandu;
			dt = {
				"opUpdateMstPersPanduProdRequest": {
					"esbBody": esbBody
				}
			}
		}
	} else {
		if (cabang == "cabang") {
			// console.log("lewat 1")
			dt = {
				"opInsertMstPersPanduCabangRequest": {
					"esbBody": esbBody
				}
			}
		} else {
			// console.log("lewat 2")
			dt = {
				"opInsertMstPersPanduProdRequest": {
					"esbBody": esbBody
				}
			}
		}
	}

	return dt;
}


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
	this.skpp_tanggal_mulai = personil.skpp_tanggal_mulai;
	this.skpp_tanggal_selesai = personil.skpp_tanggal_selesai;
	this.pandu_bandar_laut_id = personil.pandu_bandar_laut_id;
	this.manning = personil.manning;
	this.date = personil.date;
	this.item = personil.item;
	this.action = personil.action;
	this.user_id = personil.user_id;
	this.remark = personil.remark;
	this.koneksi = personil.koneksi;
	this.keterangan = personil.keterangan;
};

const setActivity = (objects, koneksi = 1) => {
	objek.date = f.toDate(objects.date);
	objek.item = 'personil';
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

Personil.create = async (newPersonil, result, cabang_id, user_id) => {
	const sertifikat = newPersonil.sertifikat;
	delete newPersonil.sertifikat;
	newPersonil = setActivity(newPersonil);
	var id = await f.getid("personil");

	delete newPersonil.activity_keterangan;
	let valid = newPersonil

	newPersonil['cabang_id'] = parseInt(newPersonil.cabang_id);
	const hv = await f.headerValue(valid, id);
	var queryText = "INSERT INTO \"personil\" " + hv + " RETURN \"id\" INTO :id";
	const exec = f.query(queryText, 1);
	delete newPersonil.id;
	const res = await exec;

	await f.executeSertifikat(sertifikat, id, "personil", "personil_id");
	objek.koneksi = id;
	objek.action = "0";
	objek.user_id = user_id;
	objek.remark = "Pengajuan dibuat oleh admin cabang";
	var id_activity_log = await f.getid("activity_log");
	const hval = await f.headerValue(objek, id_activity_log);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);

	result(null, { id: id, ...newPersonil });
};


Personil.findById = async (id, result) => {
	const resQuery = await f.query("SELECT a.*, c.\"nama\" as \"tipe_cert\", d.\"nama\" as \"jenis_cert\" FROM \"sertifikat\" a INNER JOIN \"personil\" b ON a.\"personil_id\" = b.\"id\" INNER JOIN \"tipe_cert\" c ON a.\"tipe_cert_id\" = c.\"id\" INNER JOIN \"jenis_cert\" d ON c.\"jenis_cert_id\" = d.\"id\" WHERE b.\"id\" =  '" + id + "'");
	const resActivityLog = await f.query("SELECT a.\"date\", a.\"item\", a.\"action\", a.\"user_id\", a.\"remark\", a.\"keterangan\", a.\"koneksi\" FROM \"activity_log\" a INNER JOIN \"personil\" b ON a.\"item\" = 'personil' AND a.\"koneksi\" = b.\"id\" WHERE b.\"id\" =  '" + id + "' AND a.\"keterangan\" IS NOT NULL ORDER BY b.\"id\" DESC");
	var queryText = "SELECT a.* , a1.\"flag\" as \"flag\", a2.\"nama\" as \"approval_status\", a3.\"nama\" as \"ena\", a4.\"nama_asset\" as \"asset_kapal\", a5.\"nama\" as \"status_kepegawaian\", a6.\"nama\" as \"cabang\", a7.\"nama\" as \"pandu_bandar_laut\" , a1.\"nama\" as \"tipe_personil\" FROM \"personil\" a  LEFT JOIN \"tipe_personil\" a1 ON a.\"tipe_personil_id\" = a1.\"id\"  LEFT JOIN \"approval_status\" a2 ON a.\"approval_status_id\" = a2.\"id\"  LEFT JOIN \"enable\" a3 ON a.\"enable\" = a3.\"id\"  LEFT JOIN \"asset_kapal\" a4 ON a.\"asset_kapal_id\" = a4.\"id\"  LEFT JOIN \"status_kepegawaian\" a5 ON a.\"status_kepegawaian_id\" = a5.\"id\"  LEFT JOIN \"cabang\" a6 ON a.\"cabang_id\" = a6.\"id\"  LEFT JOIN \"pandu_bandar_laut\" a7 ON a.\"pandu_bandar_laut_id\" = a7.\"id\"   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	const tipe_personil_id = res.rows[0].tipe_personil_id;
	const tipePersonilQuery = await f.query(`SELECT * FROM "tipe_personil" WHERE "id" = '${tipe_personil_id}'`);
	const tipe_personil_data = { "tipe_personil": tipePersonilQuery.rows }
	const sertifikat = { "sertifikat": resQuery.rows }
	const activityLog = { "activityLog": resActivityLog.rows }
	let merge = { ...res.rows[0], ...sertifikat, ...tipe_personil_data, ...activityLog }
	result(null, merge);
}

Personil.getAll = async (param, result, cabang_id) => {
	var wheres = f.getParam(param, "personil");
	// console.log(param.sertifikat)
	// console.log(wheres)
	if (param.sertifikat != undefined) {
		if (param.sertifikat == "min5Bulan") {
			wheres = wheres.replace(` and a."sertifikat" = 'min5Bulan'`, '');
		} else if (param.sertifikat == '511Bulan') {
			wheres = wheres.replace(` and a."sertifikat" = '511Bulan'`, '');
		} else if (param.sertifikat == 'max11Bulan') {
			wheres = wheres.replace(` and a."sertifikat" = 'max11Bulan'`, '');
		}
	}

	wheres = wheres.replace(`a."flag"`, `a1."flag"`);
	var query = "SELECT a.* , a1.\"flag\" as \"flag\", a2.\"nama\" as \"approval_status\", a3.\"nama\" as \"ena\", a4.\"nama_asset\" as \"asset_kapal\", a5.\"nama\" as \"status_kepegawaian\", a6.\"nama\" as \"cabang\", a7.\"nama\" as \"pandu_bandar_laut\" , a1.\"nama\" as \"tipe_personil\" FROM \"personil\" a  LEFT JOIN \"tipe_personil\" a1 ON a.\"tipe_personil_id\" = a1.\"id\"  LEFT JOIN \"approval_status\" a2 ON a.\"approval_status_id\" = a2.\"id\"  LEFT JOIN \"enable\" a3 ON a.\"enable\" = a3.\"id\"  LEFT JOIN \"asset_kapal\" a4 ON a.\"asset_kapal_id\" = a4.\"id\"  LEFT JOIN \"status_kepegawaian\" a5 ON a.\"status_kepegawaian_id\" = a5.\"id\"  LEFT JOIN \"cabang\" a6 ON a.\"cabang_id\" = a6.\"id\"  LEFT JOIN \"pandu_bandar_laut\" a7 ON a.\"pandu_bandar_laut_id\" = a7.\"id\" ";

	if (param.sertifikat != undefined) {
		query += 'LEFT JOIN \"sertifikat\" a8 ON a8.\"personil_id\" = a.\"id\"'
		// wheres += ' AND a8.\"tanggal_expire\" < ADD_MONTHS(SYSDATE, 5)';
		if (param.sertifikat == "min5Bulan") {
			wheres += ' AND a8.\"tanggal_expire\" < ADD_MONTHS(SYSDATE, 5)'
		} else if (param.sertifikat == '511Bulan') {
			wheres += ' AND a8.\"tanggal_expire\" > ADD_MONTHS(SYSDATE, 5) AND a8.\"tanggal_expire\" < ADD_MONTHS(SYSDATE, 11)'
		} else if (param.sertifikat == 'max11Bulan') {
			wheres += ' AND a8.\"tanggal_expire\" > ADD_MONTHS(SYSDATE, 11)'
		}
		wheres += ' AND a8.\"tanggal_expire\" > SYSDATE ';
	}

	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"tipe_personil_id\" LIKE '%" + param.q + "%' OR a.\"approval_status_id\" LIKE '%" + param.q + "%' OR a.\"simop_kd_pers_pandu\" LIKE '%" + param.q + "%' OR a.\"simop_kd_pers_pandu_cbg\" LIKE '%" + param.q + "%' OR a.\"enable\" LIKE '%" + param.q + "%' OR a.\"asset_kapal_id\" LIKE '%" + param.q + "%' OR a.\"nama\" LIKE '%" + param.q + "%' OR a.\"kelas\" LIKE '%" + param.q + "%' OR a.\"tempat_lahir\" LIKE '%" + param.q + "%' OR a.\"tanggal_lahir\" LIKE '%" + param.q + "%' OR a.\"nipp\" LIKE '%" + param.q + "%' OR a.\"jabatan\" LIKE '%" + param.q + "%' OR a.\"status_kepegawaian_id\" LIKE '%" + param.q + "%' OR a.\"cv\" LIKE '%" + param.q + "%' OR a.\"cabang_id\" LIKE '%" + param.q + "%' OR a.\"nomor_sk\" LIKE '%" + param.q + "%' OR a.\"tanggal_mulai\" LIKE '%" + param.q + "%' OR a.\"tanggal_selesai\" LIKE '%" + param.q + "%' OR a.\"sk\" LIKE '%" + param.q + "%' OR a.\"skpp\" LIKE '%" + param.q + "%' OR a.\"surat_kesehatan\" LIKE '%" + param.q + "%' OR a.\"sertifikat_id\" LIKE '%" + param.q + "%' OR a.\"skpp_tanggal_mulai\" LIKE '%" + param.q + "%' OR a.\"skpp_tanggal_selesai\" LIKE '%" + param.q + "%' OR a.\"pandu_bandar_laut_id\" LIKE '%" + param.q + "%'";
		wheres += ")";
	}

	wheres += f.whereCabang(cabang_id, `a.\"cabang_id\"`, wheres.length);
	query += wheres;
	query += "ORDER BY a.\"id\" DESC";
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

Personil.updateById = async (id, personil, result, user_id) => {
	const sertifikat = personil.sertifikat;
	if (personil.sertifikat) {
		await f.query("DELETE FROM \"sertifikat\" WHERE \"personil_id\"='" + id + "'");
		await f.executeSertifikat(sertifikat, id, "personil", "personil_id");
	}
	const remarkPersonil = personil.remark;
	// console.log(personil);
	delete personil.remark;
	delete personil.sertifikat;
	var arr = ["tipe_personil_id", "approval_status_id", "simop_kd_pers_pandu", "simop_kd_pers_pandu_cbg", "enable", "asset_kapal_id", "nama", "kelas", "tempat_lahir", "tanggal_lahir", "nipp", "jabatan", "status_kepegawaian_id", "cv", "cabang_id", "nomor_sk", "tanggal_mulai", "tanggal_selesai", "sk", "skpp", "surat_kesehatan", "sertifikat_id", "skpp_tanggal_mulai", "skpp_tanggal_selesai", "pandu_bandar_laut_id", "manning", "remark"];
	// console.log("yoi");
	if (personil.approval_status_id == "1") {
		const rows = await f.checkDataId("personil", id, personil);
		var dt, smp;

		if (rows.pandu_bandar_laut_id == 2) {
			dt = cekBody(rows, rows.cabang_id != 1 ? "cabang" : "prod");
			smp = await simop.insertPanduLaut(dt, rows.simop_kd_pers_pandu ? 2 : 1, rows.cabang_id > 1 ? "cabang" : "prod")
			if (rows.simop_kd_pers_pandu == undefined) {
				if (rows.cabang_id > 1) {
					personil['simop_kd_pers_pandu'] = smp.data.opInsertMstPanduLautCabangResponse.esbBody.kdPersPandu;
				} else {
					personil['simop_kd_pers_pandu'] = smp.data.opInsertMstPanduLautProdResponse.esbBody.kdPersPandu;
				}
			}
		} else {
			dt = cekBodyBandar(rows, rows.cabang_id != 1 ? "cabang" : "prod");
			var smp = await simop.insertPandu(dt, rows.simop_kd_pers_pandu ? 2 : 1, rows.cabang_id != 1 ? "cabang" : "prod");
			if (rows.simop_kd_pers_pandu == undefined) {
				if (rows.cabang_id > 1) {
					personil['simop_kd_pers_pandu'] = smp.data.opInsertMstPersPanduCabangResponse.esbBody.kdPersPandu;
				} else {
					// console.log(4);
					personil['simop_kd_pers_pandu'] = smp.data.opInsertMstPersPanduProdResponse.esbBody.kdPersPandu;
				}
			}
		}
	}

	var str = f.getValueUpdate(personil, id, arr);
	var objek = new Object();
	objek.keterangan = remarkPersonil;
	await f.approvalStatus("personil", personil, objek, id, user_id)
	if (personil.is_from_simop) {
		personil['cabang_id'] = parseInt(personil.cabang_id);
		await f.query("UPDATE \"personil\" SET " + str + " WHERE \"simop_kd_pers_pandu\" = '" + personil.simop_kd_pers_pandu + "'", 2);
	} else {
		await f.query("UPDATE \"personil\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	}

	objek.koneksi = id;
	objek.action = "0";
	objek.user_id = user_id;
	objek.item = "personil";
	objek.remark = "Pengajuan dirubah oleh admin cabang";
	objek.keterangan = personil.keterangan
	if (!personil.keterangan) {
		objek.keterangan = personil.activity_keterangan;
	}
	// console.log('objek',objek)
	// return false
	var id_activity_log = await f.getid("activity_log");
	const hval = await f.headerValue(objek, id_activity_log);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);

	result(null, { id: id, ...personil });
};

Personil.remove = (id, result) => {
	f.query("DELETE FROM \"personil\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = Personil;


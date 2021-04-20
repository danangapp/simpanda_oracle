const f = require('../controllers/function');
const simop = require('../controllers/simop');
var objek = new Object();
const axios = require('axios').default;



const cekBody = (rows, cabang = "cabang") => {
	var dt;
	var esbBody = {
		"nmPersPandu": rows.nama,
		"nipp": rows.nip,
		"kelas": rows.kelas,
		"kdCabang": rows.cabang_id < 10 ? "0" + rows.cabang_id : rows.cabang_id,
		"enable": "1",
		"kdPersPanduCbg": rows.cabang_id < 10 ? "0" + rows.cabang_id : rows.cabang_id
	}
	if (rows.simop_kd_pers_pandu) {
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
	var dt;
	var esbBody = {
		"nmPersPandu": rows.nama,
		"nipp": rows.nip || "0",
		"kelas": rows.kelas || "0",
		"kdCabang": rows.cabang_id < 10 ? "0" + rows.cabang_id : rows.cabang_id,
		"enable": "1",
		"kdPersPanduCbg": ""
	}

	if (rows.simop_kd_pers_pandu) {
		if (cabang == "cabang") {
			esbBody['kdPersPandu'] = rows.simop_kd_pers_pandu;
			dt = {
				"opUpdateMstPersPanduCabangResponse": {
					"esbBody": esbBody
				}
			}
		} else {
			esbBody['kdPersPandu'] = rows.simop_kd_pers_pandu;
			dt = {
				"opUpdateMstPersPanduProdResponse": {
					"esbBody": esbBody
				}
			}
		}
	} else {
		if (cabang == "cabang") {
			dt = {
				"opInsertMstPersPanduCabangRequest": {
					"esbBody": esbBody
				}
			}
		} else {
			dt = {
				"opUpdateMstPersPanduProdResponse": {
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
	newPersonil['cabang_id'] = parseInt(newPersonil.cabang_id);
	const hv = await f.headerValue(newPersonil, id);
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
	const resActivityLog = await f.query("SELECT a.\"date\", a.\"item\", a.\"action\", a.\"user_id\", a.\"remark\", a.\"keterangan\", a.\"koneksi\" FROM \"activity_log\" a INNER JOIN \"personil\" b ON a.\"item\" = 'personil' AND a.\"koneksi\" = b.\"id\" WHERE b.\"id\" =  '" + id + "'");
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
	wheres = wheres.replace(`a."flag"`, `a1."flag"`);
	var query = "SELECT a.* , a1.\"flag\" as \"flag\", a2.\"nama\" as \"approval_status\", a3.\"nama\" as \"ena\", a4.\"nama_asset\" as \"asset_kapal\", a5.\"nama\" as \"status_kepegawaian\", a6.\"nama\" as \"cabang\", a7.\"nama\" as \"pandu_bandar_laut\" , a1.\"nama\" as \"tipe_personil\" FROM \"personil\" a  LEFT JOIN \"tipe_personil\" a1 ON a.\"tipe_personil_id\" = a1.\"id\"  LEFT JOIN \"approval_status\" a2 ON a.\"approval_status_id\" = a2.\"id\"  LEFT JOIN \"enable\" a3 ON a.\"enable\" = a3.\"id\"  LEFT JOIN \"asset_kapal\" a4 ON a.\"asset_kapal_id\" = a4.\"id\"  LEFT JOIN \"status_kepegawaian\" a5 ON a.\"status_kepegawaian_id\" = a5.\"id\"  LEFT JOIN \"cabang\" a6 ON a.\"cabang_id\" = a6.\"id\"  LEFT JOIN \"pandu_bandar_laut\" a7 ON a.\"pandu_bandar_laut_id\" = a7.\"id\" ";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"tipe_personil_id\" LIKE '%" + param.q + "%' OR a.\"approval_status_id\" LIKE '%" + param.q + "%' OR a.\"simop_kd_pers_pandu\" LIKE '%" + param.q + "%' OR a.\"simop_kd_pers_pandu_cbg\" LIKE '%" + param.q + "%' OR a.\"enable\" LIKE '%" + param.q + "%' OR a.\"asset_kapal_id\" LIKE '%" + param.q + "%' OR a.\"nama\" LIKE '%" + param.q + "%' OR a.\"kelas\" LIKE '%" + param.q + "%' OR a.\"tempat_lahir\" LIKE '%" + param.q + "%' OR a.\"tanggal_lahir\" LIKE '%" + param.q + "%' OR a.\"nipp\" LIKE '%" + param.q + "%' OR a.\"jabatan\" LIKE '%" + param.q + "%' OR a.\"status_kepegawaian_id\" LIKE '%" + param.q + "%' OR a.\"cv\" LIKE '%" + param.q + "%' OR a.\"cabang_id\" LIKE '%" + param.q + "%' OR a.\"nomor_sk\" LIKE '%" + param.q + "%' OR a.\"tanggal_mulai\" LIKE '%" + param.q + "%' OR a.\"tanggal_selesai\" LIKE '%" + param.q + "%' OR a.\"sk\" LIKE '%" + param.q + "%' OR a.\"skpp\" LIKE '%" + param.q + "%' OR a.\"surat_kesehatan\" LIKE '%" + param.q + "%' OR a.\"sertifikat_id\" LIKE '%" + param.q + "%' OR a.\"skpp_tanggal_mulai\" LIKE '%" + param.q + "%' OR a.\"skpp_tanggal_selesai\" LIKE '%" + param.q + "%' OR a.\"pandu_bandar_laut_id\" LIKE '%" + param.q + "%'";
		wheres += ")";
	}

	wheres += f.whereCabang(cabang_id, `a."cabang_id"`, wheres.length);
	query += wheres;
	query += "ORDER BY a.\"id\" DESC";
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

Personil.updateById = async (id, personil, result, user_id) => {
	personil['cabang_id'] = parseInt(personil.cabang_id);
	const sertifikat = personil.sertifikat;
	if (personil.sertifikat) {
		await f.query("DELETE FROM \"sertifikat\" WHERE \"personil_id\"='" + id + "'");
		await f.executeSertifikat(sertifikat, id, "personil", "personil_id");
	}
	delete personil.sertifikat;
	var arr = ["tipe_personil_id", "approval_status_id", "simop_kd_pers_pandu", "simop_kd_pers_pandu_cbg", "enable", "asset_kapal_id", "nama", "kelas", "tempat_lahir", "tanggal_lahir", "nipp", "jabatan", "status_kepegawaian_id", "cv", "cabang_id", "nomor_sk", "tanggal_mulai", "tanggal_selesai", "sk", "skpp", "surat_kesehatan", "sertifikat_id", "skpp_tanggal_mulai", "skpp_tanggal_selesai", "pandu_bandar_laut_id", "manning"];
	// console.log("yoi");
	if (personil.approval_status_id == "1") {
		const rows = await f.checkDataId("personil", id, personil);
		var dt, smp;

		// console.log(rows.pandu_bandar_laut_id);
		if (rows.pandu_bandar_laut_id == 2) {
			dt = cekBody(rows);
			smp = await simop.insertPanduLaut(dt, rows.simop_kd_pers_pandu ? 2 : 1, "cabang")
			if (rows.simop_kd_pers_pandu_cbg == undefined) {
				personil['simop_kd_pers_pandu_cbg'] = smp.data.opInsertMstPanduLautCabangResponse.esbBody.kdPersPandu;
			}

			// dt = cekBody(rows, "prod");
			// smp = await simop.insertPanduLaut(dt, rows.simop_kd_pers_pandu ? 2 : 1, "prod")
			// if (rows.simop_kd_pers_pandu == undefined) {
			// 	personil['simop_kd_pers_pandu'] = smp.data.opInsertMstPanduLautProdResponse.esbBody.kdPersPandu;
			// }
			// console.log(dt);
		} else {
			dt = cekBodyBandar(rows);
			var smp = await simop.insertPandu(dt, rows.simop_kd_pers_pandu ? 2 : 1, "cabang");
			if (rows.simop_kd_pers_pandu_cbg == undefined) {
				personil['simop_kd_pers_pandu_cbg'] = smp.data.opInsertMstPersPanduCabangResponse.esbBody.kdPersPandu;
			}

			// smp = await simop.insertPandu(dt, rows.simop_kd_pers_pandu ? 2 : 1, "prod");
			// dt = cekBodyBandar(rows, "prod");
			// if (rows.simop_kd_pers_pandu == undefined) {
			// 	personil['simop_kd_pers_pandu'] = smp.data.opInsertMstPersPanduProdResponse.esbBody.kdPersPandu;
			// }			
		}
	}

	var str = f.getValueUpdate(personil, id, arr);
	await f.approvalStatus("personil", personil, objek, id, user_id)
	if (personil.is_from_simop) {
		console.log("UPDATE \"personil\" SET " + str + " WHERE \"simop_kd_pers_pandu\" = '" + personil.simop_kd_pers_pandu + "'");
		await f.query("UPDATE \"personil\" SET " + str + " WHERE \"simop_kd_pers_pandu\" = '" + personil.simop_kd_pers_pandu + "'", 2);
	} else {
		console.log("UPDATE \"personil\" SET " + str + " WHERE \"id\" = '" + id + "'");
		await f.query("UPDATE \"personil\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	}

	result(null, { id: id, ...personil });
};

Personil.remove = (id, result) => {
	f.query("DELETE FROM \"personil\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = Personil;


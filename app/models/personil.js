const f = require('../controllers/function');
const simop = require('../controllers/simop');
var objek = new Object();
const axios = require('axios').default;



const cekBody = (rows, cabang = "cabang") => {
	var dt;
	var esbBody = {
		"nmPersPandu": rows.nama,
		"nipp": rows.nipp,
		"kelas": rows.kelas ? rows.kelas.toString() : "",
		"kdCabang": rows.cabang_id < 10 ? `0${rows.cabang_id.toString()}` : `${rows.cabang_id.toString()}`,
		"enable": rows.enable ? rows.enable.toString() : "0",
		"kdPersPanduCbg": rows.cabang_id < 10 ? `0${rows.cabang_id.toString()}` : `${rows.cabang_id.toString()}`
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
		"nipp": rows.nipp || "0",
		"kelas": rows.kelas || "0",
		"kdCabang": rows.cabang_id < 10 ? `0${rows.cabang_id}` : `${rows.cabang_id}`,
		"enable": rows.enable ? rows.enable.toString() : "0",
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

			dt = {
				"opInsertMstPersPanduCabangRequest": {
					"esbBody": esbBody
				}
			}
		} else {

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
	this.pendidikan = personil.pendidikan;
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
	this.skes_tanggal_mulai = personil.skes_tanggal_mulai;
	this.skes_tanggal_selesai = personil.skes_tanggal_selesai;
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
	
	console.log('data create personil', newPersonil)
	if(newPersonil.nipp !== '0' || newPersonil.status_kepegawaian_id && newPersonil.status_kepegawaian_id !== '2'){
		const rowNippNama = await f.getOneRow("personil", "nipp", newPersonil.nipp);
		if (rowNippNama) {	
			result(null, { 'status': false, 'message': 'Maaf, NIPP telah terdaftar!' })
			return false;
		}
	}

	if(newPersonil.skpp_tanggal_mulai>newPersonil.skpp_tanggal_selesai) {
		result(null, { 'status': false, 'message': 'Maaf, tanggal mulai SKKP harus lebih lama dari pada tanggal selesai!' })
		return false;
	}


	const sertifikat = newPersonil.sertifikat;
	delete newPersonil.sertifikat;
	newPersonil = setActivity(newPersonil);
	var id = await f.getid("personil");

	delete newPersonil.activity_keterangan;
	let valid = newPersonil

	if (newPersonil.cabang_id) {
		newPersonil['cabang_id'] = newPersonil.cabang_id;
	}
	if (newPersonil.is_from_simop) {
		delete newPersonil.is_from_simop;
	}
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

	if (param.sertifikat) {
		wheres = wheres.replace(`and LOWER(a."sertifikat") = LOWER('${param.sertifikat}')`, '');
	}

	wheres = wheres.replace(`a."flag"`, `tp."flag"`);
	var query = `SELECT a.*, 
						ass."nama" AS "approval_status",
						ak."nama_asset" AS "asset_kapal",
						c."nama" AS "cabang",
						e."nama" AS "ena",
						pbl."nama" AS "pandu_bandar_laut",
						sk."nama" AS "status_kepegawaian",
						tp."nama" AS "tipe_personil",
						tp."flag" AS "flag"
				FROM "personil" a
				LEFT JOIN "approval_status" ass ON ass."id" = a."approval_status_id"
				LEFT JOIN "asset_kapal" ak ON ak."id" = a."asset_kapal_id"
				LEFT JOIN "cabang" c ON c."id" = a."cabang_id"
				LEFT JOIN "enable" e ON e."id" = a."enable"
				LEFT JOIN "pandu_bandar_laut" pbl ON pbl."id" = a."pandu_bandar_laut_id"
				LEFT JOIN "status_kepegawaian" sk ON sk."id" = a."status_kepegawaian_id"
				LEFT JOIN "tipe_personil" tp ON tp."id"= a."tipe_personil_id"`

	if (param.sertifikat != undefined) {
		query += 'LEFT JOIN \"sertifikat\" s ON s.\"personil_id\" = a.\"id\"'
		if (param.sertifikat == "filter-1") {
			wheres += ' AND s.\"tanggal_expire\" <= ADD_MONTHS(SYSDATE, 3)'
		} else if (param.sertifikat == 'filter-2') {
			wheres += ' AND s.\"tanggal_expire\" > ADD_MONTHS(SYSDATE, 3) AND s.\"tanggal_expire\" <= ADD_MONTHS(SYSDATE, 7)'
		} else if (param.sertifikat == 'filter-3') {
			wheres += ' AND s.\"tanggal_expire\" > ADD_MONTHS(SYSDATE, 7) AND s.\"tanggal_expire\" <= ADD_MONTHS(SYSDATE, 12)'
		}
		wheres += ' AND s.\"tanggal_expire\" > SYSDATE ';
	}

	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += `LOWER(a."tipe_personil_id") LIKE LOWER('%${param.q}%') 
				OR LOWER(a."approval_status_id") LIKE LOWER('%${param.q}%') 
				OR LOWER(a."simop_kd_pers_pandu") LIKE LOWER('%${param.q}%') 
				OR LOWER(a."simop_kd_pers_pandu_cbg") LIKE LOWER('%${param.q}%') 
				OR LOWER(a."enable") LIKE LOWER('%${param.q}%') 
				OR LOWER(a."asset_kapal_id") LIKE LOWER('%${param.q}%') 
				OR LOWER(a."nama") LIKE LOWER('%${param.q}%') 
				OR LOWER(a."kelas") LIKE LOWER('%${param.q}%') 
				OR LOWER(a."tempat_lahir") LIKE LOWER('%${param.q}%') 
				OR LOWER(a."tanggal_lahir") LIKE LOWER('%${param.q}%') 
				OR LOWER(a."nipp") LIKE LOWER('%${param.q}%') 
				OR LOWER(a."jabatan") LIKE LOWER('%${param.q}%') 
				OR LOWER(a."status_kepegawaian_id") LIKE LOWER('%${param.q}%') 
				OR LOWER(a."cv") LIKE LOWER('%${param.q}%') OR LOWER(a."cabang_id") LIKE LOWER('%${param.q}%') 
				OR LOWER(a."nomor_sk") LIKE LOWER('%${param.q}%') 
				OR LOWER(a."tanggal_mulai") LIKE LOWER('%${param.q}%') 
				OR LOWER(a."tanggal_selesai") LIKE LOWER('%${param.q}%') 
				OR LOWER(a."sk") LIKE LOWER('%${param.q}%') 
				OR LOWER(a."skpp") LIKE LOWER('%${param.q}%') 
				OR LOWER(a."surat_kesehatan") LIKE LOWER('%${param.q}%') 
				OR LOWER(a."sertifikat_id") LIKE LOWER('%${param.q}%') 
				OR LOWER(a."skpp_tanggal_mulai") LIKE LOWER('%${param.q}%') 
				OR LOWER(a."skpp_tanggal_selesai") LIKE LOWER('%${param.q}%') 
				OR LOWER(a."pandu_bandar_laut_id") LIKE LOWER('%${param.q}%')`;
		wheres += ")";
	}
	

	wheres += f.whereCabang(cabang_id, `a.\"cabang_id\"`, wheres.length);
	query += wheres;
	query += `ORDER BY a."cabang_id", a."nama"`;
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

Personil.updateById = async (id, personil, result, user_id) => {

	console.log('data update personil', personil)
	const sertifikat = personil.sertifikat;
	if (personil.sertifikat) {
		await f.query("DELETE FROM \"sertifikat\" WHERE \"personil_id\"='" + id + "'");
		await f.executeSertifikat(sertifikat, id, "personil", "personil_id");
	}
	
	if((personil.nipp && personil.nipp != '0' ) || (personil.status_kepegawaian_id && personil.status_kepegawaian_id != '2')){		
		const rowNippNama = await f.getOneRow("personil", "nipp", personil.nipp);
		if (rowNippNama && rowNippNama.id != personil.id && rowNippNama.nipp == personil.nipp) {
			result(null, { 'status': false, 'message': 'Maaf, NIPP telah terdaftar!' })
			return false;
		}
	}
	
	const remarkPersonil = personil.remark;
	
	var str;
	var arr = ["tipe_personil_id", "approval_status_id", "simop_kd_pers_pandu", "simop_kd_pers_pandu_cbg", "enable", "asset_kapal_id", "nama", "kelas", "tempat_lahir", "tanggal_lahir", "nipp", "jabatan", "status_kepegawaian_id", "cv", "cabang_id", "nomor_sk", "tanggal_mulai", "tanggal_selesai", "sk", "skpp", "surat_kesehatan", "sertifikat_id", "skpp_tanggal_mulai", "skpp_tanggal_selesai", "pandu_bandar_laut_id", "manning", "remark", "skes_tanggal_mulai", "skes_tanggal_selesai","pendidikan"];
	if (personil.is_from_simop) {
		personil['cabang_id'] = parseInt(personil.cabang_id);
		str = f.getValueUpdate(personil, id, arr);

		await f.query("UPDATE \"personil\" SET " + str + " WHERE \"simop_kd_pers_pandu\" = '" + personil.simop_kd_pers_pandu + "'", 2);
	} else {
		delete personil.remark;
		delete personil.sertifikat;

		if (personil.approval_status_id == "1") {
			const rows = await f.checkDataId("personil", id, personil);
			console.log('data preparation', rows)
			if (rows.tipe_personil_id === 1) {
				console.log('data send to simop')
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
							personil['simop_kd_pers_pandu'] = smp.data.opInsertMstPersPanduProdResponse.esbBody.kdPersPandu;
						}
					}
				}
			}
		}

		var objek = new Object();
		objek.keterangan = remarkPersonil;
		objek.koneksi = id;
		objek.action = "0";
		objek.user_id = user_id;
		objek.item = "personil";
		objek.remark = "Pengajuan dirubah oleh admin cabang";
		objek.keterangan = personil.activity_keterangan;
		if (personil.keterangan) {
			objek.keterangan = personil.keterangan;
		}
		await f.approvalStatus("personil", personil, objek, id, user_id)

		const pendukung = await f.query(`SELECT * FROM "personil" WHERE "id" = '${id}'`);

		if (pendukung.rows[0].jabatan === 'Master' || pendukung.rows[0].jabatan === 'Chief Engineer') {
			await f.query(`UPDATE "personil" SET "enable" = '0', "approval_status_id" = '1' 
				WHERE "id" != '${id}' 
				AND "tipe_personil_id" = '${pendukung.rows[0].tipe_personil_id}'
				AND "jabatan" = '${pendukung.rows[0].jabatan}' 
				AND "enable" = '1' 
				AND "asset_kapal_id" = '${pendukung.rows[0].asset_kapal_id}' 
				AND "cabang_id" ='${pendukung.rows[0].cabang_id}' 
				AND "approval_status_id" = 1`);
		}

		str = f.getValueUpdate(personil, id, arr);
		await f.query("UPDATE \"personil\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	}

	result(null, { id: id, ...personil });
};

Personil.remove = (id, result) => {
	f.query("DELETE FROM \"personil\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = Personil;


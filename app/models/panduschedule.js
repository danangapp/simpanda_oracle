const f = require('../controllers/function');
var objek = new Object();

// constructor
const PanduSchedule = function (panduschedule) {
	this.date = panduschedule.date;
	this.cabang_id = panduschedule.cabang_id;
	this.status_absen_id = panduschedule.status_absen_id;
	this.keterangan = panduschedule.keterangan;
	this.approval_status_id = panduschedule.approval_status_id;
	this.enable = panduschedule.enable;
	this.pandu_jaga_id = panduschedule.pandu_jaga_id;
	this.pandu_bandar_laut_id = panduschedule.pandu_bandar_laut_id;
};

const setActivity = (objects, koneksi = 1) => {
	objek.date = f.toDate(objects.date);
	objek.item = 'panduschedule';
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

PanduSchedule.create = async (newPanduSchedule, result, cabang_id, user_id) => {
	var personil = newPanduSchedule.personil
	delete newPanduSchedule.personil
	var newPanduScheduleDate = newPanduSchedule.date
	newPanduSchedule = setActivity(newPanduSchedule)
	newPanduSchedule.date = newPanduScheduleDate

	var check = `SELECT "date" FROM "pandu_schedule" 
				WHERE trunc("date") = TO_DATE('${newPanduSchedule.date}', 'YY/MM/DD') 
				AND "cabang_id" = ${cabang_id}`
	var dataCheck = await f.query(check)

	if (dataCheck.rows.length > 0) {
		result(null, { 'status': false, 'message': 'Maaf, Tanggal yang anda pilih sudah tersedia !' })
		return false
	}

	// console.log('dataCheck',dataCheck.rows.length)	
	// return false

	var id = await f.getid("pandu_schedule")
	const hv = await f.headerValue(newPanduSchedule, id)
	var queryText = `INSERT INTO "pandu_schedule" ${hv} RETURN "id" INTO :id`
	const res = await f.query(queryText, 1)

	// console.log('res errorNum',res.errorNum)
	// return false

	for (var a in personil) {
		personil[a].pandu_schedule_id = id
		delete personil[a].nama

		if (personil[a].from == "") personil[a].from = "00:00";
		if (personil[a].to == "") personil[a].to = "00:00";
		personil[a].from = f.toDate(newPanduScheduleDate, "YYYY-MM-DD") + " " + personil[a].from + ":00";
		personil[a].to = f.toDate(newPanduScheduleDate, "YYYY-MM-DD") + " " + personil[a].to + ":00";

		var id_pj = await f.getid("pandu_jaga")
		var hv_pj = await f.headerValue(personil[a], id_pj)
		var queryText = `INSERT INTO "pandu_jaga" ${hv_pj}`
		await f.query(queryText, 2)
	}

	objek.koneksi = id
	objek.action = "0"
	objek.user_id = user_id
	objek.remark = "Pengajuan dibuat oleh admin cabang"
	var id_activity_log = await f.getid("activity_log")
	const hval = await f.headerValue(objek, id_activity_log)
	await f.query("INSERT INTO \"activity_log\" " + hval, 2)

	result(null, { id: id, ...newPanduSchedule })
};

PanduSchedule.findById = async (id, result) => {
	const resPersonil = await f.query(`SELECT a."id", a."personil_id", TO_CHAR(a."from", 'HH24:MI') AS "from", TO_CHAR(a."to", 'HH24:MI') AS "to", a."kehadiran", a."keterangan", b."nama" AS "nama" FROM "pandu_jaga" a INNER JOIN "personil" b ON a."personil_id" = b."id" WHERE a."pandu_schedule_id" = '${id}'`);
	const resActivityLog = await f.query("SELECT a.\"date\", a.\"item\", a.\"action\", a.\"user_id\", a.\"remark\", a.\"keterangan\", a.\"koneksi\" FROM \"activity_log\" a INNER JOIN \"pandu_schedule\" b ON a.\"item\" = 'pandu_schedule' AND a.\"koneksi\" = b.\"id\" WHERE b.\"id\" =  '" + id + "'");
	var queryText = "SELECT a.* , a1.\"nama\" as \"cabang\", a2.\"nama\" as \"status_absen\", a3.\"nama\" as \"approval_status\", a4.\"nama\" as \"ena\", a5.\"nama\" as \"pandu_bandar_laut\" FROM \"pandu_schedule\" a  LEFT JOIN \"cabang\" a1 ON a.\"cabang_id\" = a1.\"id\"  LEFT JOIN \"status_absen\" a2 ON a.\"status_absen_id\" = a2.\"id\"  LEFT JOIN \"approval_status\" a3 ON a.\"approval_status_id\" = a3.\"id\"  LEFT JOIN \"enable\" a4 ON a.\"enable\" = a4.\"id\"  LEFT JOIN \"pandu_bandar_laut\" a5 ON a.\"pandu_bandar_laut_id\" = a5.\"id\"   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	const personil = { "personil": resPersonil.rows }
	const activityLog = { "activityLog": resActivityLog.rows }
	let merge = { ...res.rows[0], ...personil, ...activityLog }
	result(null, merge);
}

PanduSchedule.getAll = async (param, result, cabang_id) => {
	var wheres = f.getParam(param, "pandu_schedule");
	// var query = `SELECT a."id", c."nama" AS "cabang", (CASE b."kehadiran" WHEN 1 THEN 'Hadir' ELSE 'Tidak Hadir' END) as "status_absen", d."nama" as "pandu_jaga_nama", a."date", b."to", b."from", b."keterangan"FROM "pandu_schedule" a INNER JOIN "pandu_jaga" b ON a."id" = b."pandu_schedule_id"INNER JOIN "cabang" c ON a."cabang_id" = c."id"INNER JOIN "personil" d ON b."personil_id" = d."id"`;
	// if (param.q) {
	// 	wheres += wheres.length == 7 ? "(" : "AND (";
	// 	wheres += "a.\"date\" LIKE '%" + param.q + "%' OR a.\"cabang_id\" LIKE '%" + param.q + "%' OR a.\"status_absen_id\" LIKE '%" + param.q + "%' OR a.\"keterangan\" LIKE '%" + param.q + "%' OR a.\"approval_status_id\" LIKE '%" + param.q + "%' OR a.\"enable\" LIKE '%" + param.q + "%' OR a.\"pandu_jaga_id\" LIKE '%" + param.q + "%' OR a.\"pandu_bandar_laut_id\" LIKE '%" + param.q + "%'";
	// 	wheres += ")";
	// }

	// wheres += f.whereCabang(cabang_id, `a."cabang_id"`, wheres.length);
	// query += wheres;
	// query += "ORDER BY a.\"id\" DESC";

	// var query = `SELECT "date", "cabang"."nama" AS "cabang" FROM "pandu_schedule"
	// 			INNER JOIN "cabang" ON "pandu_schedule"."cabang_id" = "cabang"."id"
	// 			WHERE "pandu_schedule"."enable"=1 `
	// if (cabang_id > 0) {
	// 	query += ` "cabang_id" = ${cabang_id}`
	// }

	var query = `SELECT a."id", a."date", b."nama" AS "cabang" FROM "pandu_schedule" a INNER JOIN "cabang" b ON a."cabang_id" = b."id" `;
	if (cabang_id > 0) {
		query += ` WHERE a."cabang_id" = '${cabang_id}' `;
	}

	// console.log(query);
	const exec = f.query(query)
	const res = await exec
	result(null, res.rows)
}

PanduSchedule.updateById = async (id, panduschedule, result, user_id) => {
	var personil = panduschedule.personil
	var panduscheduleDate = panduschedule.date
	console.log("panduschedulenya", panduschedule);
	await f.query(`DELETE FROM "pandu_jaga" WHERE "pandu_schedule_id" = '${id}'`, 2)

	for (var a in personil) {
		personil[a].pandu_schedule_id = id
		delete personil[a].nama

		if (personil[a].from == "") personil[a].from = "00:00";
		if (personil[a].to == "") personil[a].to = "00:00";
		personil[a].from = f.toDate(panduscheduleDate, "YYYY-MM-DD") + " " + personil[a].from + ":00";
		personil[a].to = f.toDate(panduscheduleDate, "YYYY-MM-DD") + " " + personil[a].to + ":00";

		var id_pj = await f.getid("pandu_jaga")
		var hv_pj = await f.headerValue(personil[a], id_pj)
		var queryText = `INSERT INTO "pandu_jaga" ${hv_pj}`
		await f.query(queryText, 2)
	}
	delete panduschedule.personil


	var arr = ["date", "cabang_id", "status_absen_id", "keterangan", "approval_status_id", "enable", "pandu_jaga_id", "pandu_bandar_laut_id"];
	var str = f.getValueUpdate(panduschedule, id, arr);
	var id_activity_log = await f.getid("activity_log");
	objek.koneksi = id;
	objek.action = panduschedule.approval_status_id;
	objek.keterangan = panduschedule.keterangan;
	objek.item = "panduschedule";
	objek.user_id = user_id;
	if (panduschedule.approval_status_id == 1) {
		objek.remark = "Pengajuan disetujui oleh pusat";
	} else if (panduschedule.approval_status_id == 2) {
		objek.remark = "Pengajuan ditolak oleh pusat";
	} else if (panduschedule.approval_status_id == 0) {
		objek.remark = "Pengajuan dirubah oleh admin cabang";
	}
	const hval = await f.headerValue(objek, id_activity_log);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);
	await f.query("UPDATE \"pandu_schedule\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...panduschedule });
};

PanduSchedule.remove = (id, result) => {
	f.query("DELETE FROM \"pandu_schedule\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = PanduSchedule;


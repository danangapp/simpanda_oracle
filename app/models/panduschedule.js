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
		delete objects.date;
		delete objects.item;
		delete objects.action;
		delete objects.user_id;
		delete objects.remark;
		delete objects.koneksi;
		return objects
};

PanduSchedule.create = async(newPanduSchedule, result, cabang_id, user_id) => {
	var pandu_jaga = newPanduSchedule.pandu_jaga;
	delete newPanduSchedule.pandu_jaga;
		newPanduSchedule = setActivity(newPanduSchedule);
	var id = await f.getid("pandu_schedule");
	const hv = await f.headerValue(newPanduSchedule, id);
	var queryText = "INSERT INTO \"pandu_schedule\" " + hv + " RETURN \"id\" INTO :id";
	const exec = f.query(queryText, 1);
	delete newPanduSchedule.id;
	const res = await exec;

	for (var a in pandu_jaga) {
		pandu_jaga[a].pandu_schedule_id = id;
		pandu_jaga[a].personil_id = pandu_jaga[a].id;
		delete pandu_jaga[a].id;
		var id_pj = await f.getid("pandu_jaga");
		var hv_pj = await f.headerValue(pandu_jaga[a], id_pj);
		var queryText = "INSERT INTO \"pandu_jaga\" " + hv_pj;
		await f.query(queryText, 2);
	}
	objek.koneksi = id;
	objek.action = "0";
	objek.user_id = user_id;
	var id_activity_log = await f.getid("activity_log");
	const hval = await f.headerValue(objek, id_activity_log);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);

	result(null, { id: id, ...newPanduSchedule });
};

PanduSchedule.findById = async (id, result) => {
	const resQuery = await f.query("SELECT a.\"id\", b.\"nama\" FROM \"pandu_jaga\" a INNER JOIN \"personil\" b ON a.\"personil_id\" = b.\"id\" WHERE a.\"pandu_schedule_id\" = '" + id + "'");
	const resActivityLog = await f.query("SELECT a.\"date\", a.\"item\", a.\"action\", a.\"user_id\", a.\"remark\", a.\"koneksi\" FROM \"activity_log\" a INNER JOIN \"pandu_schedule\" b ON a.\"item\" = 'pandu_schedule' AND a.\"koneksi\" = b.\"id\" WHERE b.\"id\" =  '" + id + "'");
	var queryText = "SELECT a.* , a1.\"nama\" as \"cabang\", a2.\"nama\" as \"status_absen\", a3.\"nama\" as \"approval_status\", a4.\"nama\" as \"ena\", a5.\"nama\" as \"pandu_bandar_laut\" FROM \"pandu_schedule\" a  LEFT JOIN \"cabang\" a1 ON a.\"cabang_id\" = a1.\"id\"  LEFT JOIN \"status_absen\" a2 ON a.\"status_absen_id\" = a2.\"id\"  LEFT JOIN \"approval_status\" a3 ON a.\"approval_status_id\" = a3.\"id\"  LEFT JOIN \"enable\" a4 ON a.\"enable\" = a4.\"id\"  LEFT JOIN \"pandu_bandar_laut\" a5 ON a.\"pandu_bandar_laut_id\" = a5.\"id\"   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	const pandu_jaga = { "pandu_jaga": resQuery.rows }
	const activityLog = { "activityLog": resActivityLog.rows }
	let merge = { ...res.rows[0], ...pandu_jaga, ...activityLog }	
	result(null, merge);
}

PanduSchedule.getAll = async (param, result, cabang_id) => {
    var wheres = f.getParam(param, "pandu_schedule");
    var query = "SELECT a.* , a1.\"nama\" as \"cabang\", a2.\"nama\" as \"status_absen\", a3.\"nama\" as \"approval_status\", a4.\"nama\" as \"ena\", a5.\"nama\" as \"pandu_bandar_laut\" FROM \"pandu_schedule\" a  LEFT JOIN \"cabang\" a1 ON a.\"cabang_id\" = a1.\"id\"  LEFT JOIN \"status_absen\" a2 ON a.\"status_absen_id\" = a2.\"id\"  LEFT JOIN \"approval_status\" a3 ON a.\"approval_status_id\" = a3.\"id\"  LEFT JOIN \"enable\" a4 ON a.\"enable\" = a4.\"id\"  LEFT JOIN \"pandu_bandar_laut\" a5 ON a.\"pandu_bandar_laut_id\" = a5.\"id\" ";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"date\" LIKE '%" + param.q + "%' OR a.\"cabang_id\" LIKE '%" + param.q + "%' OR a.\"status_absen_id\" LIKE '%" + param.q + "%' OR a.\"keterangan\" LIKE '%" + param.q + "%' OR a.\"approval_status_id\" LIKE '%" + param.q + "%' OR a.\"enable\" LIKE '%" + param.q + "%' OR a.\"pandu_jaga_id\" LIKE '%" + param.q + "%' OR a.\"pandu_bandar_laut_id\" LIKE '%" + param.q + "%'";	
		wheres += ")";
	}

	wheres += f.whereCabang(cabang_id, `a."cabang_id"`, wheres.length);
	query += wheres;
	query += "ORDER BY a.\"id\" DESC";
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

PanduSchedule.updateById = async(id, panduschedule, result, user_id) => {
	var pandu_jaga = panduschedule.pandu_jaga;
	delete panduschedule.pandu_jaga;

	await f.query(`DELETE FROM "pandu_jaga" WHERE "pandu_schedule_id" = '${id}'`, 2);
	for (var a in pandu_jaga) {
		pandu_jaga[a].pandu_schedule_id = id;
		pandu_jaga[a].personil_id = pandu_jaga[a].id;
		delete pandu_jaga[a].id;
		delete pandu_jaga[a].nama;
		var id_pj = await f.getid("pandu_jaga");
		var hv_pj = await f.headerValue(pandu_jaga[a], id_pj);
		var queryText = "INSERT INTO \"pandu_jaga\" " + hv_pj;
		await f.query(queryText, 2);
	}

	var arr = ["date", "cabang_id", "status_absen_id", "keterangan", "approval_status_id", "enable", "pandu_jaga_id", "pandu_bandar_laut_id"];
	var str = f.getValueUpdate(panduschedule, id, arr);
	var id_activity_log = await f.getid("activity_log");
	objek.koneksi = id;
	objek.action = panduschedule.approval_status_id;
	objek.item = "panduschedule";
	objek.remark = panduschedule.activityLog ? panduschedule.activityLog.remark : '';
	objek.user_id = user_id;
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


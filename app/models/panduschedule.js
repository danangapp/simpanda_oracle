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

PanduSchedule.create = async (newPanduSchedule, result) => {
	for (var a in newPanduSchedule) {
		var c = newPanduSchedule[a];

		const hv = await f.headerValue(newPanduSchedule, "pandu_schedule");
		var res = await f.query("INSERT INTO \"pandu_schedule\" " + hv + " RETURN \"id\" INTO :id", 1);

		for (var b in c) {
			if (b === "pandu_jaga") {
				var e = c[b];
				for (var d in e) {
					var g = e[d];
					g['pandu_schedule_id'] = res.outBinds.id[0];
					const hv2 = await f.headerValue(g, "pandu_jaga");
					await f.query("INSERT INTO \"pandu_jaga\"" + hv2, 1);
				}
			}
		}
	}

	objek.koneksi = res.outBinds.id[0];
	if (objek.action != null) {
		const hv = await f.headerValue(objek, "activity_log");
		f.query("INSERT INTO \"activity_log\" " + hv, 2);
	}

	result(null, { id: res.outBinds.id[0], ...newPanduSchedule });
};

PanduSchedule.findById = async (id, result) => {
	const resActivityLog = f.query("SELECT a.\"date\", a.\"item\", a.\"action\", a.\"user_id\", a.\"remark\", a.\"koneksi\" FROM \"activity_log\" a INNER JOIN \"pandu_schedule\" b ON a.\"item\" = 'pandu_schedule' AND a.\"koneksi\" = b.\"id\" WHERE b.\"id\" =  '" + id + "'");
	var queryText = "SELECT a.* , a1.\"nama\" as \"cabang\", a2.\"nama\" as \"status_absen\", a3.\"nama\" as \"approval_status\", a4.\"nama\" as \"ena\", a5.\"nama\" as \"pandu_bandar_laut\" FROM \"pandu_schedule\" a  LEFT JOIN \"cabang\" a1 ON a.\"cabang_id\" = a1.\"id\"  LEFT JOIN \"status_absen\" a2 ON a.\"status_absen_id\" = a2.\"id\"  LEFT JOIN \"approval_status\" a3 ON a.\"approval_status_id\" = a3.\"id\"  LEFT JOIN \"enable\" a4 ON a.\"enable\" = a4.\"id\"  LEFT JOIN \"pandu_bandar_laut\" a5 ON a.\"pandu_bandar_laut_id\" = a5.\"id\"   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	const activityLog = { "activityLog": resActivityLog }
	const pandu_jaga = { "pandu_jaga": resQuery }
	let merge = { ...res.rows[0], ...activityLog, ...pandu_jaga }
	result(null, merge);
}

PanduSchedule.getAll = async (param, result) => {
	var wheres = f.getParam(param);
	var query = "SELECT a.* , a1.\"nama\" as \"cabang\", a2.\"nama\" as \"status_absen\", a3.\"nama\" as \"approval_status\", a4.\"nama\" as \"ena\", a5.\"nama\" as \"pandu_bandar_laut\" FROM \"pandu_schedule\" a  LEFT JOIN \"cabang\" a1 ON a.\"cabang_id\" = a1.\"id\"  LEFT JOIN \"status_absen\" a2 ON a.\"status_absen_id\" = a2.\"id\"  LEFT JOIN \"approval_status\" a3 ON a.\"approval_status_id\" = a3.\"id\"  LEFT JOIN \"enable\" a4 ON a.\"enable\" = a4.\"id\"  LEFT JOIN \"pandu_bandar_laut\" a5 ON a.\"pandu_bandar_laut_id\" = a5.\"id\" ";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"date\" LIKE '%" + param.q + "%' OR a.\"cabang_id\" LIKE '%" + param.q + "%' OR a.\"status_absen_id\" LIKE '%" + param.q + "%' OR a.\"keterangan\" LIKE '%" + param.q + "%' OR a.\"approval_status_id\" LIKE '%" + param.q + "%' OR a.\"enable\" LIKE '%" + param.q + "%' OR a.\"pandu_jaga_id\" LIKE '%" + param.q + "%' OR a.\"pandu_bandar_laut_id\" LIKE '%" + param.q + "%'";
		wheres += ")";
	}

	query += wheres;
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

PanduSchedule.updateById = async (id, panduschedule, result) => {
	for (var a in panduschedule) {
		var c = panduschedule[a];
		var str = "";
		for (var b in c) {
			if (b != "pandu_jaga" && b != "pandu_schedule_id") {
				str += "\"" + b + "\"='" + c[b] + "', ";
			}
		}

		str = str.substring(0, str.length - 2);
		await f.query("UPDATE \"pandu_schedule\" SET " + str + " WHERE \"id\" = '" + c['pandu_schedule_id'] + "'", 2);
		await f.query("DELETE FROM \"pandu_jaga\" WHERE \"pandu_schedule_id\" = '" + c['pandu_schedule_id'] + "'", 2);

		for (var b in c) {
			if (b === "pandu_jaga") {
				var e = c[b];
				for (var d in e) {
					var g = e[d];
					g['pandu_schedule_id'] = c['pandu_schedule_id'];
					const hv = await f.headerValue(g, "pandu_jaga");
					await f.query("INSERT INTO \"pandu_jaga\" " + hv, 2);
				}
			}
		}
	}

	result(null, { ...panduschedule });
};

PanduSchedule.remove = (id, result) => {
	f.query("DELETE FROM \"pandu_schedule\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = PanduSchedule;

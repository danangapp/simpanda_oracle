const f = require('../controllers/function');
var objek = new Object();

// constructor
const PemeriksaanKapal = function (pemeriksaankapal) {
    this.approval_status_id = pemeriksaankapal.approval_status_id;
    this.enable = pemeriksaankapal.enable;
    this.asset_kapal_id = pemeriksaankapal.asset_kapal_id;
    this.cabang_id = pemeriksaankapal.cabang_id;
};

const setActivity = (objects, koneksi = 1) => {
		objek.date = f.toDate(objects.date);
		objek.item = 'pemeriksaankapal';
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

PemeriksaanKapal.create = async(newPemeriksaanKapal, result, cabang_id, user_id) => {
	newPemeriksaanKapal = setActivity(newPemeriksaanKapal);
	var check = newPemeriksaanKapal.check;
	delete newPemeriksaanKapal.check;
	var id = await f.getid("pemeriksaan_kapal");
	const hvs = await f.headerValue(newPemeriksaanKapal, id);
	const res = f.query(`INSERT INTO "pemeriksaan_kapal"` + hvs, newPemeriksaanKapal);
	for (var i in check) {
	    const pemeriksaan_kapal_check_id = check[i].id;
	    const kondisi_id = check[i].kondisi_id;
	    const tanggal_awal = f.toDate(check[i].tanggal_awal);
	    const tanggal_akhir = f.toDate(check[i].tanggal_akhir);
	    const keterangan = check[i].keterangan;
	    var id_pkcd = await f.getid("pemeriksaan_kapal_check_data");
	    await f.query(`INSERT INTO "pemeriksaan_kapal_check_data" ("id", "pemeriksaan_kapal_check_id", "kondisi_id", "tanggal_awal", "tanggal_akhir", "keterangan", "pemeriksaan_kapal_id") VALUES ('${id_pkcd}', '${pemeriksaan_kapal_check_id}', '${kondisi_id}', TO_DATE('${tanggal_awal}', 'yyyy/mm/dd'), TO_DATE('${tanggal_akhir}', 'yyyy/mm/dd'), '${keterangan}', '${id}')`);
	}

	objek.koneksi = id;
	objek.action = "0";
	objek.user_id = user_id;
	var id_activity_log = await f.getid("activity_log");
	const hval = await f.headerValue(objek, id_activity_log);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);

	result(null, { id: id, ...newPemeriksaanKapal });
};

PemeriksaanKapal.findById = async (id, result) => {
	const resQuery = await f.query("SELECT \"kondisi_id\", \"pemeriksaan_kapal_check_id\", \"tanggal_awal\", \"tanggal_akhir\", \"status\", \"keterangan\" FROM \"pemeriksaan_kapal_check_data\" WHERE \"pemeriksaan_kapal_id\" = '" + id + "'");
	const resActivityLog = await f.query("SELECT a.\"date\", a.\"item\", a.\"action\", a.\"user_id\", a.\"remark\", a.\"koneksi\" FROM \"activity_log\" a INNER JOIN \"pemeriksaan_kapal\" b ON a.\"item\" = 'pemeriksaan_kapal' AND a.\"koneksi\" = b.\"id\" WHERE b.\"id\" =  '" + id + "'");
	var queryText = "SELECT a.* , a2.\"jumlah_temuan\", a3.\"nama_asset\" as \"asset_kapal\", a4.\"nama\" as \"cabang\" FROM \"pemeriksaan_kapal\" a   LEFT JOIN ( SELECT \"pemeriksaan_kapal_id\", \"kondisi_id\", COUNT( \"kondisi_id\" ) AS \"jumlah_temuan\" FROM \"pemeriksaan_kapal_check_data\" WHERE \"kondisi_id\" = '1' GROUP BY \"pemeriksaan_kapal_id\", \"kondisi_id\" ) a2 ON a2.\"pemeriksaan_kapal_id\" = a.\"id\" LEFT JOIN \"asset_kapal\" a3 ON a.\"asset_kapal_id\" = a3.\"id\" LEFT JOIN \"cabang\" a4 ON a4.\"id\" = a.\"cabang_id\"  WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
		const check = { "check": resQuery.rows }
	const activityLog = { "activityLog": resActivityLog.rows }
	let merge = { ...res.rows[0], ...check, ...activityLog }	
	result(null, merge);
}

PemeriksaanKapal.getAll = async (param, result, cabang_id) => {
    var wheres = f.getParam(param, "pemeriksaan_kapal");
    var query = "SELECT a.* , a2.\"jumlah_temuan\", a3.\"nama_asset\" as \"asset_kapal\", a4.\"nama\" as \"cabang\" FROM \"pemeriksaan_kapal\" a   LEFT JOIN ( SELECT \"pemeriksaan_kapal_id\", \"kondisi_id\", COUNT( \"kondisi_id\" ) AS \"jumlah_temuan\" FROM \"pemeriksaan_kapal_check_data\" WHERE \"kondisi_id\" = '1' GROUP BY \"pemeriksaan_kapal_id\", \"kondisi_id\" ) a2 ON a2.\"pemeriksaan_kapal_id\" = a.\"id\" LEFT JOIN \"asset_kapal\" a3 ON a.\"asset_kapal_id\" = a3.\"id\" LEFT JOIN \"cabang\" a4 ON a4.\"id\" = a.\"cabang_id\"";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"approval_status_id\" LIKE '%" + param.q + "%' OR a.\"enable\" LIKE '%" + param.q + "%' OR a.\"asset_kapal_id\" LIKE '%" + param.q + "%' OR a.\"cabang_id\" LIKE '%" + param.q + "%'";	
		wheres += ")";
	}

	wheres += f.whereCabang(cabang_id, `a."cabang_id"`, wheres.length);
	query += wheres;
	query += "ORDER BY a.\"id\" DESC";
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

PemeriksaanKapal.updateById = async(id, pemeriksaankapal, result, user_id) => {

	var check = pemeriksaankapal.check;
	await f.query("DELETE \"pemeriksaan_kapal_check_data\" WHERE \"pemeriksaan_kapal_id\"='" + id + "'");
	for (var i in check) {
		check[i].pemeriksaan_kapal_id = id;
		check[i].tanggal_awal = f.toDate(check[i].tanggal_awal);
		check[i].tanggal_akhir = f.toDate(check[i].tanggal_akhir);
		var id_pj = await f.getid("pemeriksaan_kapal_check_data");
		var hv_pj = await f.headerValue(check[i], id_pj);
		var queryText = "INSERT INTO \"pemeriksaan_kapal_check_data\" " + hv_pj;
		await f.query(queryText, 2);
	}
	delete pemeriksaankapal.check;

	var arr = ["approval_status_id", "enable", "asset_kapal_id", "cabang_id"];
	var str = f.getValueUpdate(pemeriksaankapal, id, arr);
	var id_activity_log = await f.getid("activity_log");
	objek.koneksi = id;
	objek.action = pemeriksaankapal.approval_status_id;
	objek.item = "pemeriksaankapal";
	objek.remark = pemeriksaankapal.activityLog ? pemeriksaankapal.activityLog.remark : '';
	objek.user_id = user_id;
	const hval = await f.headerValue(objek, id_activity_log);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);
	await f.query("UPDATE \"pemeriksaan_kapal\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...pemeriksaankapal });
};

PemeriksaanKapal.remove = (id, result) => {
	f.query("DELETE FROM \"pemeriksaan_kapal\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = PemeriksaanKapal;


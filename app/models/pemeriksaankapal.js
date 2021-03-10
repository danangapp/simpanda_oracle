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

PemeriksaanKapal.create = async(newPemeriksaanKapal, result) => {
		newPemeriksaanKapal = setActivity(newPemeriksaanKapal);
		var check = newPemeriksaanKapal.check;
		delete newPemeriksaanKapal.check;
		const res = f.query("INSERT INTO pemeriksaan_kapal SET ?", newPemeriksaanKapal);
		for (var i in check) {
		    const pemeriksaan_kapal_check_id = check[i].pemeriksaan_kapal_check_id;
		    const kondisi_id = check[i].kondisi_id;
		    const tanggal_awal = f.toDate(check[i].tanggal_awal);
		    const tanggal_akhir = f.toDate(check[i].tanggal_akhir);
		    const keterangan = check[i].keterangan;
		    f.query("INSERT INTO pemeriksaan_kapal_check_data (pemeriksaan_kapal_check_id, kondisi_id, tanggal_awal, tanggal_akhir, keterangan, pemeriksaan_kapal_id) VALUES (" + pemeriksaan_kapal_check_id + ", " + kondisi_id + ", '" + tanggal_awal + "', '" + tanggal_akhir + "', '" + keterangan + "', '" + res.insertId + "')");
		}

		objek.koneksi = res.outBinds.id[0];
		if (objek.action != null) {
			const hv = await f.headerValue(objek, "activity_log");
			f.query("INSERT INTO \"activity_log\" " + hv, 2);
		}
		result(null, { id: res.outBinds.id[0], ...newPemeriksaanKapal });
};

PemeriksaanKapal.findById = async (id, result) => {
	const resQuery = f.query("SELECT \"kondisi_id\", \"pemeriksaan_kapal_check_id\", \"tanggal_awal\", \"tanggal_akhir\", \"keterangan\" FROM \"pemeriksaan_kapal_check_data\" WHERE \"pemeriksaan_kapal_id\" = '" + id + "'");
	const resActivityLog = f.query("SELECT a.\"date\", a.\"item\", a.\"action\", a.\"user_id\", a.\"remark\", a.\"koneksi\" FROM \"activity_log\" a INNER JOIN \"pemeriksaan_kapal\" b ON a.\"item\" = 'pemeriksaan_kapal' AND a.\"koneksi\" = b.\"id\" WHERE b.\"id\" =  '" + id + "'");
	var queryText = "SELECT a.* , a1.\"nama\" as \"approval_status\", a2.\"nama\" as \"ena\", a3.\"nama_asset\" as \"asset_kapal\", a4.\"nama\" as \"cabang\" , a6.\"question\", a5.\"tanggal_awal\", a5.\"tanggal_akhir\", a5.\"keterangan\"  FROM \"pemeriksaan_kapal\" a  LEFT JOIN \"approval_status\" a1 ON a.\"approval_status_id\" = a1.\"id\"  LEFT JOIN \"enable\" a2 ON a.\"enable\" = a2.\"id\"  LEFT JOIN \"asset_kapal\" a3 ON a.\"asset_kapal_id\" = a3.\"id\"  LEFT JOIN \"cabang\" a4 ON a.\"cabang_id\" = a4.\"id\"  LEFT JOIN \"pemeriksaan_kapal_check_data\" a5 ON a.\"id\" = a5.\"pemeriksaan_kapal_id\" LEFT JOIN \"pemeriksaan_kapal_check\" a6 ON a5.\"pemeriksaan_kapal_check_id\" = a6.\"id\" LEFT JOIN \"kondisi\" a7 ON a5.\"kondisi_id\" = a7.\"id\"   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
		const check = { "check": resQuery }
	const activityLog = { "activityLog": resActivityLog }
	let merge = { ...res.rows[0], ...check, ...activityLog }	
	result(null, merge);
}

PemeriksaanKapal.getAll = async (param, result) => {
    var wheres = f.getParam(param, "pemeriksaan_kapal");
    var query = "SELECT a.* , a1.\"nama\" as \"approval_status\", a2.\"nama\" as \"ena\", a3.\"nama_asset\" as \"asset_kapal\", a4.\"nama\" as \"cabang\" , a6.\"question\", a5.\"tanggal_awal\", a5.\"tanggal_akhir\", a5.\"keterangan\"  FROM \"pemeriksaan_kapal\" a  LEFT JOIN \"approval_status\" a1 ON a.\"approval_status_id\" = a1.\"id\"  LEFT JOIN \"enable\" a2 ON a.\"enable\" = a2.\"id\"  LEFT JOIN \"asset_kapal\" a3 ON a.\"asset_kapal_id\" = a3.\"id\"  LEFT JOIN \"cabang\" a4 ON a.\"cabang_id\" = a4.\"id\"  LEFT JOIN \"pemeriksaan_kapal_check_data\" a5 ON a.\"id\" = a5.\"pemeriksaan_kapal_id\" LEFT JOIN \"pemeriksaan_kapal_check\" a6 ON a5.\"pemeriksaan_kapal_check_id\" = a6.\"id\" LEFT JOIN \"kondisi\" a7 ON a5.\"kondisi_id\" = a7.\"id\" ";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"approval_status_id\" LIKE '%" + param.q + "%' OR a.\"enable\" LIKE '%" + param.q + "%' OR a.\"asset_kapal_id\" LIKE '%" + param.q + "%' OR a.\"cabang_id\" LIKE '%" + param.q + "%'";	
		wheres += ")";
	}

	query += wheres;
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

PemeriksaanKapal.updateById = async(id, pemeriksaankapal, result) => {
		pemeriksaankapal = await setActivity(pemeriksaankapal, id);

		var check = pemeriksaankapal.check;
		for (var i in check) {
		    const pemeriksaan_kapal_check_id = check[i].pemeriksaan_kapal_check_id;
		    const kondisi_id = check[i].kondisi_id;
		    const tanggal_awal = f.toDate(check[i].tanggal_awal);
		    const tanggal_akhir = f.toDate(check[i].tanggal_akhir);
		    const keterangan = check[i].keterangan;
		    f.query("UPDATE pemeriksaan_kapal_check_data SET pemeriksaan_kapal_check_id='" + pemeriksaan_kapal_check_id + "', kondisi_id='" + kondisi_id + "', tanggal_awal='" + tanggal_awal + "', tanggal_akhir='" + tanggal_akhir + "', keterangan='" + keterangan + "' WHERE kondisi_id='" + kondisi_id + "' AND pemeriksaan_kapal_id='" + id + "'");
		}
		delete pemeriksaankapal.check;

	var arr = ["approval_status_id", "enable", "asset_kapal_id", "cabang_id"];
	var str = f.getValueUpdate(pemeriksaankapal, id, arr);
	if (objek.action != null) {
		const hv = await f.headerValue(objek, "activity_log");
		await f.query("INSERT INTO \"activity_log\" " + hv, 2);
	}
	f.query("UPDATE \"pemeriksaan_kapal\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...pemeriksaankapal });
};

PemeriksaanKapal.remove = (id, result) => {
	f.query("DELETE FROM \"pemeriksaan_kapal\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = PemeriksaanKapal;


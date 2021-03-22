const f = require('../controllers/function');
var objek = new Object();

// constructor
const SaranaBantuPemandu = function (saranabantupemandu) {
    this.approval_status_id = saranabantupemandu.approval_status_id;
    this.cabang_id = saranabantupemandu.cabang_id;
    this.tanggal_pemeriksaan = saranabantupemandu.tanggal_pemeriksaan;
    this.pelaksana = saranabantupemandu.pelaksana;
    this.nama = saranabantupemandu.nama;
    this.tipe_asset_id = saranabantupemandu.tipe_asset_id;
    this.jabatan = saranabantupemandu.jabatan;
    this.asset_kapal_id = saranabantupemandu.asset_kapal_id;
    this.status_ijazah_id = saranabantupemandu.status_ijazah_id;
    this.sarana_bantu_pemandu_personil = saranabantupemandu.sarana_bantu_pemandu_personil;
};

const setActivity = (objects, koneksi = 1) => {
		objek.date = f.toDate(objects.date);
		objek.item = 'saranabantupemandu';
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

SaranaBantuPemandu.create = async(newSaranaBantuPemandu, result, cabang_id, user_id) => {
	const sarana_bantu_pemandu_personil = newSaranaBantuPemandu.sarana_bantu_pemandu_personil;
	delete newSaranaBantuPemandu.sarana_bantu_pemandu_personil;
	newSaranaBantuPemandu = setActivity(newSaranaBantuPemandu);
	var id = await f.getid("sarana_bantu_pemandu");
	const hv = await f.headerValue(newSaranaBantuPemandu, id);
	var queryText = "INSERT INTO \"sarana_bantu_pemandu\" " + hv + " RETURN \"id\" INTO :id";
	const exec = f.query(queryText, 1);
	delete newSaranaBantuPemandu.id;
	const res = await exec;

	for (var i in sarana_bantu_pemandu_personil) {
	    const x = sarana_bantu_pemandu_personil[i];
		x['sarana_bantu_pemandu_id'] = res.insertId;
	
	    var header = "", value = "";
	    for (var a in x) {
	        const val = x[a];
	        header += a + ", ";
			value += "'" + val + "', ";
	    }
	    value = value.substring(0, value.length - 2);
	    header = header.substring(0, header.length - 2);
		f.query("INSERT INTO sarana_bantu_pemandu_personil (" + header + ") values (" + value + ")");
	}

	objek.koneksi = id;
	objek.action = "0";
	objek.user_id = user_id;
	var id_activity_log = await f.getid("activity_log");
	const hval = await f.headerValue(objek, id_activity_log);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);

	result(null, { id: id, ...newSaranaBantuPemandu });
};

SaranaBantuPemandu.findById = async (id, result) => {
	const resQuery = f.query("SELECT * FROM \"sarana_bantu_pemandu_personil\" WHERE \"sarana_bantu_pemandu_id\" = '" + id + "'");
	const resActivityLog = await f.query("SELECT a.\"date\", a.\"item\", a.\"action\", a.\"user_id\", a.\"remark\", a.\"koneksi\" FROM \"activity_log\" a INNER JOIN \"sarana_bantu_pemandu\" b ON a.\"item\" = 'sarana_bantu_pemandu' AND a.\"koneksi\" = b.\"id\" WHERE b.\"id\" =  '" + id + "'");
	var queryText = "SELECT a.* , a1.\"nama\" as \"approval_status\", a2.\"nama\" as \"cabang\", a3.\"nama\" as \"tipe_asset\", a4.\"nama_asset\" as \"asset_kapal\", a5.\"nama\" as \"status_ijazah\" FROM \"sarana_bantu_pemandu\" a  LEFT JOIN \"approval_status\" a1 ON a.\"approval_status_id\" = a1.\"id\"  LEFT JOIN \"cabang\" a2 ON a.\"cabang_id\" = a2.\"id\"  LEFT JOIN \"tipe_asset\" a3 ON a.\"tipe_asset_id\" = a3.\"id\"  LEFT JOIN \"asset_kapal\" a4 ON a.\"asset_kapal_id\" = a4.\"id\"  LEFT JOIN \"status_ijazah\" a5 ON a.\"status_ijazah_id\" = a5.\"id\"   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
		const sarana_bantu_pemandu_personil = { "sarana_bantu_pemandu_personil": resQuery }
	const activityLog = { "activityLog": resActivityLog.rows }
	let merge = { ...res.rows[0], ...sarana_bantu_pemandu_personil, ...activityLog }	
	result(null, merge);
}

SaranaBantuPemandu.getAll = async (param, result, cabang_id) => {
    var wheres = f.getParam(param, "sarana_bantu_pemandu");
    var query = "SELECT a.* , a1.\"nama\" as \"approval_status\", a2.\"nama\" as \"cabang\", a3.\"nama\" as \"tipe_asset\", a4.\"nama_asset\" as \"asset_kapal\", a5.\"nama\" as \"status_ijazah\" FROM \"sarana_bantu_pemandu\" a  LEFT JOIN \"approval_status\" a1 ON a.\"approval_status_id\" = a1.\"id\"  LEFT JOIN \"cabang\" a2 ON a.\"cabang_id\" = a2.\"id\"  LEFT JOIN \"tipe_asset\" a3 ON a.\"tipe_asset_id\" = a3.\"id\"  LEFT JOIN \"asset_kapal\" a4 ON a.\"asset_kapal_id\" = a4.\"id\"  LEFT JOIN \"status_ijazah\" a5 ON a.\"status_ijazah_id\" = a5.\"id\" ";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"approval_status_id\" LIKE '%" + param.q + "%' OR a.\"cabang_id\" LIKE '%" + param.q + "%' OR a.\"tanggal_pemeriksaan\" LIKE '%" + param.q + "%' OR a.\"pelaksana\" LIKE '%" + param.q + "%' OR a.\"nama\" LIKE '%" + param.q + "%' OR a.\"tipe_asset_id\" LIKE '%" + param.q + "%' OR a.\"jabatan\" LIKE '%" + param.q + "%' OR a.\"asset_kapal_id\" LIKE '%" + param.q + "%' OR a.\"status_ijazah_id\" LIKE '%" + param.q + "%' OR a.\"sarana_bantu_pemandu_personil\" LIKE '%" + param.q + "%'";	
		wheres += ")";
	}

	wheres += f.whereCabang(cabang_id, `a."cabang_id"`, wheres.length);
	query += wheres;
	query += "ORDER BY a.\"id\" DESC";
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

SaranaBantuPemandu.updateById = async(id, saranabantupemandu, result, user_id) => {

	var arr = ["approval_status_id", "cabang_id", "tanggal_pemeriksaan", "pelaksana", "nama", "tipe_asset_id", "jabatan", "asset_kapal_id", "status_ijazah_id", "sarana_bantu_pemandu_personil"];
	var str = f.getValueUpdate(saranabantupemandu, id, arr);
	var id_activity_log = await f.getid("activity_log");
	objek.koneksi = id;
	objek.action = saranabantupemandu.approval_status_id;
	objek.item = "saranabantupemandu";
	objek.remark = saranabantupemandu.activityLog ? saranabantupemandu.activityLog.remark : '';
	objek.user_id = user_id;
	const hval = await f.headerValue(objek, id_activity_log);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);
	await f.query("UPDATE \"sarana_bantu_pemandu\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...saranabantupemandu });
};

SaranaBantuPemandu.remove = (id, result) => {
	f.query("DELETE FROM \"sarana_bantu_pemandu\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = SaranaBantuPemandu;


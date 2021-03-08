const f = require('../controllers/function');
var objek = new Object();

// constructor
const SaranaBantuPemandu = function (saranabantupemandu) {
    this.approval_status_id = saranabantupemandu.approval_status_id;
    this.cabang_id = saranabantupemandu.cabang_id;
    this.tanggal_pemeriksaan = saranabantupemandu.tanggal_pemeriksaan;
    this.pelaksana = saranabantupemandu.pelaksana;
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

SaranaBantuPemandu.create = async(newSaranaBantuPemandu, result) => {
		const sarana_bantu_pemandu_personil = newSaranaBantuPemandu.sarana_bantu_pemandu_personil;
		delete newSaranaBantuPemandu.sarana_bantu_pemandu_personil;
		newSaranaBantuPemandu = setActivity(newSaranaBantuPemandu);
		newSaranaBantuPemandu.id = "sarana_bantu_pemandu_seq.nextval"
		const hv = f.headerValue(newSaranaBantuPemandu);
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

		objek.koneksi = res.outBinds.id[0];
		if (objek.action != null) {
			const hv = f.headerValue(objek);
			f.query("INSERT INTO \"activity_log\" " + hv, 2);
		}
		result(null, { id: res.outBinds.id[0], ...newSaranaBantuPemandu });
};

SaranaBantuPemandu.findById = async (id, result) => {
	const resQuery = f.query("SELECT * FROM \"sarana_bantu_pemandu_personil\" WHERE \"sarana_bantu_pemandu_id\" = '" + id + "'");
	const resActivityLog = f.query("SELECT a.\"date\", a.\"item\", a.\"action\", a.\"user_id\", a.\"remark\", a.\"koneksi\" FROM \"activity_log\" a INNER JOIN \"sarana_bantu_pemandu\" b ON a.\"item\" = 'sarana_bantu_pemandu' AND a.\"koneksi\" = b.\"id\" WHERE b.\"id\" =  '" + id + "'");
	var queryText = "SELECT a.* , a1.\"nama\" as \"approval_status\", a2.\"nama\" as \"cabang\" FROM \"sarana_bantu_pemandu\" a  LEFT JOIN \"approval_status\" a1 ON a.\"approval_status_id\" = a1.\"id\"  LEFT JOIN \"cabang\" a2 ON a.\"cabang_id\" = a2.\"id\"   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
		const sarana_bantu_pemandu_personil = { "sarana_bantu_pemandu_personil": resQuery }
	const activityLog = { "activityLog": resActivityLog }
	let merge = { ...res.rows[0], ...sarana_bantu_pemandu_personil, ...activityLog }	
	result(null, merge);
}

SaranaBantuPemandu.getAll = async (param, result) => {
    var wheres = f.getParam(param);
    var query = "SELECT a.* , a1.\"nama\" as \"approval_status\", a2.\"nama\" as \"cabang\" FROM \"sarana_bantu_pemandu\" a  LEFT JOIN \"approval_status\" a1 ON a.\"approval_status_id\" = a1.\"id\"  LEFT JOIN \"cabang\" a2 ON a.\"cabang_id\" = a2.\"id\" ";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"approval_status_id\" LIKE '%" + param.q + "%' OR a.\"cabang_id\" LIKE '%" + param.q + "%' OR a.\"tanggal_pemeriksaan\" LIKE '%" + param.q + "%' OR a.\"pelaksana\" LIKE '%" + param.q + "%'";	
		wheres += ")";
	}

	query += wheres;
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

SaranaBantuPemandu.updateById = async(id, saranabantupemandu, result) => {
		saranabantupemandu = await setActivity(saranabantupemandu, id);

	var arr = ["approval_status_id", "cabang_id", "tanggal_pemeriksaan", "pelaksana"];
	var str = f.getValueUpdate(saranabantupemandu, id, arr);
	if (objek.action != null) {
		const hv = f.headerValue(objek);
		f.query("INSERT INTO \"activity_log\" " + hv, 2);
	}
	f.query("UPDATE \"sarana_bantu_pemandu\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...saranabantupemandu });
};

SaranaBantuPemandu.remove = (id, result) => {
	f.query("DELETE FROM \"sarana_bantu_pemandu\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = SaranaBantuPemandu;


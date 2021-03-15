const f = require('../controllers/function');
var objek = new Object();

// constructor
const Sertifikat = function (sertifikat) {
    this.jenis_cert_id = sertifikat.jenis_cert_id;
    this.tipe_cert_id = sertifikat.tipe_cert_id;
    this.personil_id = sertifikat.personil_id;
    this.asset_kapal_id = sertifikat.asset_kapal_id;
    this.no_sertifikat = sertifikat.no_sertifikat;
    this.issuer = sertifikat.issuer;
    this.tempat_keluar_sertifikat = sertifikat.tempat_keluar_sertifikat;
    this.tanggal_keluar_sertifikat = sertifikat.tanggal_keluar_sertifikat;
    this.tanggal_expire = sertifikat.tanggal_expire;
    this.reminder_date1 = sertifikat.reminder_date1;
    this.reminder_date3 = sertifikat.reminder_date3;
    this.reminder_date6 = sertifikat.reminder_date6;
    this.sertifikat = sertifikat.sertifikat;
    this.sertifikat = sertifikat.sertifikat;
    this.date = sertifikat.date;
    this.item = sertifikat.item;
    this.action = sertifikat.action;
    this.user_id = sertifikat.user_id;
    this.remark = sertifikat.remark;
    this.koneksi = sertifikat.koneksi;
};

Sertifikat.create = async(newSertifikat, result, cabang_id) => {
		const sertifikat = newSertifikat.sertifikat;
		delete newSertifikat.sertifikat;
		const hv = await f.headerValue(newSertifikat, "sertifikat");
		var queryText = "INSERT INTO \"sertifikat\" " + hv + " RETURN \"id\" INTO :id";
		const exec = f.query(queryText, 1);
		delete newSertifikat.id;
		const res = await exec;

		f.executeSertifikat(sertifikat, res.outBinds.id[0], "personil", "personil_id");
		result(null, { id: res.outBinds.id[0], ...newSertifikat });
};

Sertifikat.findById = async (id, result) => {
	const resQuery = f.query("SELECT a.*, c.\"nama\" as \"tipe_cert\", d.\"nama\" as \"jenis_cert\" FROM \"sertifikat\" a INNER JOIN \"sertifikat\" b ON a.\"sertifikat_id\" = b.\"id\" INNER JOIN \"tipe_cert\" c ON a.\"tipe_cert_id\" = c.\"id\" INNER JOIN \"jenis_cert\" d ON c.\"jenis_cert_id\" = d.\"id\" WHERE b.\"id\" =  '" + id + "'");
	var queryText = "SELECT a.* , a1.\"nama\" as \"jenis_cert\", a2.\"nama\" as \"tipe_cert\", a3.\"*\", a4.\"nama_asset\" as \"asset_kapal\" FROM \"sertifikat\" a  LEFT JOIN \"jenis_cert\" a1 ON a.\"jenis_cert_id\" = a1.\"id\"  LEFT JOIN \"tipe_cert\" a2 ON a.\"tipe_cert_id\" = a2.\"id\"  LEFT JOIN \"personil\" a3 ON a.\"personil_id\" = a3.\"id\"  LEFT JOIN \"asset_kapal\" a4 ON a.\"asset_kapal_id\" = a4.\"id\"   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	const sertifikat = { "sertifikat": resQuery }
	let merge = { ...res.rows[0], ...sertifikat }	
	result(null, merge);
}

Sertifikat.getAll = async (param, result, cabang_id) => {
    var wheres = f.getParam(param, "sertifikat");
    var query = "SELECT a.* , a1.\"nama\" as \"jenis_cert\", a2.\"nama\" as \"tipe_cert\", a3.\"*\", a4.\"nama_asset\" as \"asset_kapal\" FROM \"sertifikat\" a  LEFT JOIN \"jenis_cert\" a1 ON a.\"jenis_cert_id\" = a1.\"id\"  LEFT JOIN \"tipe_cert\" a2 ON a.\"tipe_cert_id\" = a2.\"id\"  LEFT JOIN \"personil\" a3 ON a.\"personil_id\" = a3.\"id\"  LEFT JOIN \"asset_kapal\" a4 ON a.\"asset_kapal_id\" = a4.\"id\" ";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"jenis_cert_id\" LIKE '%" + param.q + "%' OR a.\"tipe_cert_id\" LIKE '%" + param.q + "%' OR a.\"personil_id\" LIKE '%" + param.q + "%' OR a.\"asset_kapal_id\" LIKE '%" + param.q + "%' OR a.\"no_sertifikat\" LIKE '%" + param.q + "%' OR a.\"issuer\" LIKE '%" + param.q + "%' OR a.\"tempat_keluar_sertifikat\" LIKE '%" + param.q + "%' OR a.\"tanggal_keluar_sertifikat\" LIKE '%" + param.q + "%' OR a.\"tanggal_expire\" LIKE '%" + param.q + "%' OR a.\"reminder_date1\" LIKE '%" + param.q + "%' OR a.\"reminder_date3\" LIKE '%" + param.q + "%' OR a.\"reminder_date6\" LIKE '%" + param.q + "%' OR a.\"sertifikat\" LIKE '%" + param.q + "%' OR a.\"sertifikat_id\" LIKE '%" + param.q + "%'";	
		wheres += ")";
	}

	query += wheres;
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

Sertifikat.updateById = async(id, sertifikat, result) => {

	var arr = ["jenis_cert_id", "tipe_cert_id", "personil_id", "asset_kapal_id", "no_sertifikat", "issuer", "tempat_keluar_sertifikat", "tanggal_keluar_sertifikat", "tanggal_expire", "reminder_date1", "reminder_date3", "reminder_date6", "sertifikat", "sertifikat_id"];
	var str = f.getValueUpdate(sertifikat, id, arr);
	if (objek.action != null) {
		const hv = await f.headerValue(objek, "activity_log");
		await f.query("INSERT INTO \"activity_log\" " + hv, 2);
	}
	f.query("UPDATE \"sertifikat\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...sertifikat });
};

Sertifikat.remove = (id, result) => {
	f.query("DELETE FROM \"sertifikat\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = Sertifikat;


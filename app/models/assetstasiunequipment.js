const f = require('../controllers/function');
var objek = new Object();

// constructor
const AssetStasiunEquipment = function (assetstasiunequipment) {
    this.nomor_asset = assetstasiunequipment.nomor_asset;
    this.tipe_asset_id = assetstasiunequipment.tipe_asset_id;
    this.nama = assetstasiunequipment.nama;
    this.tahun_perolehan = assetstasiunequipment.tahun_perolehan;
    this.nilai_perolehan = assetstasiunequipment.nilai_perolehan;
    this.kondisi = assetstasiunequipment.kondisi;
    this.approval_status_id = assetstasiunequipment.approval_status_id;
    this.enable = assetstasiunequipment.enable;
};

const setActivity = (objects, koneksi = 1) => {
		objek.date = f.toDate(objects.date);
		objek.item = 'assetstasiunequipment';
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

AssetStasiunEquipment.create = async(newAssetStasiunEquipment, result, cabang_id, user_id) => {
		newAssetStasiunEquipment = setActivity(newAssetStasiunEquipment);
	var id = await f.getid("asset_stasiun_equipment");
	const hv = await f.headerValue(newAssetStasiunEquipment, id);
	var queryText = "INSERT INTO \"asset_stasiun_equipment\" " + hv + " RETURN \"id\" INTO :id";
	const exec = f.query(queryText, 1);
	delete newAssetStasiunEquipment.id;
	const res = await exec;

	objek.koneksi = id;
	objek.action = "0";
	objek.user_id = user_id;
	var id_activity_log = await f.getid("activity_log");
	const hval = await f.headerValue(objek, id_activity_log);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);

	result(null, { id: id, ...newAssetStasiunEquipment });
};

AssetStasiunEquipment.findById = async (id, result) => {
	const resActivityLog = await f.query("SELECT a.\"date\", a.\"item\", a.\"action\", a.\"user_id\", a.\"remark\", a.\"koneksi\" FROM \"activity_log\" a INNER JOIN \"asset_stasiun_equipment\" b ON a.\"item\" = 'asset_stasiun_equipment' AND a.\"koneksi\" = b.\"id\" WHERE b.\"id\" =  '" + id + "'");
	var queryText = "SELECT a.* , a1.\"flag\" as \"tipe_asset\", a2.\"nama\" as \"approval_status\", a3.\"nama\" as \"ena\" FROM \"asset_stasiun_equipment\" a  LEFT JOIN \"tipe_asset\" a1 ON a.\"tipe_asset_id\" = a1.\"id\"  LEFT JOIN \"approval_status\" a2 ON a.\"approval_status_id\" = a2.\"id\"  LEFT JOIN \"enable\" a3 ON a.\"enable\" = a3.\"id\"   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	const activityLog = { "activityLog": resActivityLog.rows }
	let merge = { ...res.rows[0], ...activityLog }	
	result(null, merge);
}

AssetStasiunEquipment.getAll = async (param, result, cabang_id) => {
    var wheres = f.getParam(param, "asset_stasiun_equipment");
	wheres = wheres.replace(`a."flag"`, `a1."flag"`);
    var query = "SELECT a.* , a1.\"flag\" as \"tipe_asset\", a2.\"nama\" as \"approval_status\", a3.\"nama\" as \"ena\" FROM \"asset_stasiun_equipment\" a  LEFT JOIN \"tipe_asset\" a1 ON a.\"tipe_asset_id\" = a1.\"id\"  LEFT JOIN \"approval_status\" a2 ON a.\"approval_status_id\" = a2.\"id\"  LEFT JOIN \"enable\" a3 ON a.\"enable\" = a3.\"id\" ";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"nomor_asset\" LIKE '%" + param.q + "%' OR a.\"tipe_asset_id\" LIKE '%" + param.q + "%' OR a.\"nama\" LIKE '%" + param.q + "%' OR a.\"tahun_perolehan\" LIKE '%" + param.q + "%' OR a.\"nilai_perolehan\" LIKE '%" + param.q + "%' OR a.\"kondisi\" LIKE '%" + param.q + "%' OR a.\"approval_status_id\" LIKE '%" + param.q + "%' OR a.\"enable\" LIKE '%" + param.q + "%'";	
		wheres += ")";
	}

	query += wheres;
	query += "ORDER BY a.\"id\" DESC";
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

AssetStasiunEquipment.updateById = async(id, assetstasiunequipment, result, user_id) => {

	var arr = ["nomor_asset", "tipe_asset_id", "nama", "tahun_perolehan", "nilai_perolehan", "kondisi", "approval_status_id", "enable"];
	var str = f.getValueUpdate(assetstasiunequipment, id, arr);
	var id_activity_log = await f.getid("activity_log");
	objek.koneksi = id;
	objek.action = assetstasiunequipment.approval_status_id;
	objek.item = "assetstasiunequipment";
	objek.remark = assetstasiunequipment.activityLog ? assetstasiunequipment.activityLog.remark : '';
	objek.user_id = user_id;
	const hval = await f.headerValue(objek, id_activity_log);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);
	await f.query("UPDATE \"asset_stasiun_equipment\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...assetstasiunequipment });
};

AssetStasiunEquipment.remove = (id, result) => {
	f.query("DELETE FROM \"asset_stasiun_equipment\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = AssetStasiunEquipment;


const f = require('../controllers/function');
var objek = new Object();

// constructor
const Menu = function (menu) {
    this.nama = menu.nama;
    this.url = menu.url;
    this.icon = menu.icon;
};

Menu.create = async(newMenu, result, cabang_id, user_id) => {
	var id = await f.getid("menu");
	const hv = await f.headerValue(newMenu, id);
	var queryText = "INSERT INTO \"menu\" " + hv + " RETURN \"id\" INTO :id";
	const exec = f.query(queryText, 1);
	delete newMenu.id;
	const res = await exec;

	result(null, { id: id, ...newMenu });
};

Menu.findById = async (id, result) => {
	var queryText = "SELECT a.*  FROM \"menu\" a   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

Menu.getAll = async (param, result, cabang_id) => {
    var wheres = f.getParam(param, "menu");
    var query = "SELECT a.*  FROM \"menu\" a ";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"nama\" LIKE '%" + param.q + "%' OR a.\"url\" LIKE '%" + param.q + "%' OR a.\"icon\" LIKE '%" + param.q + "%'";	
		wheres += ")";
	}

	query += wheres;
	query += "ORDER BY a.\"id\" DESC";
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

Menu.updateById = async(id, menu, result, user_id) => {

	var arr = ["nama", "url", "icon"];
	var str = f.getValueUpdate(menu, id, arr);
	var id_activity_log = await f.getid("activity_log");
	objek.koneksi = id;
	objek.action = menu.approval_status_id;
	objek.keterangan = menu.keterangan;
	objek.item = "menu";
	objek.user_id = user_id;
	if(menu.approval_status_id == 1){
		objek.remark = "Pengajuan disetujui oleh pusat";
	}else if(menu.approval_status_id == 2){
		objek.remark = "Pengajuan ditolak oleh pusat";
	}else if(menu.approval_status_id == 0){
		objek.remark = "Pengajuan dirubah oleh admin cabang";
	}
	const hval = await f.headerValue(objek, id_activity_log);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);
	await f.query("UPDATE \"menu\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...menu });
};

Menu.remove = (id, result) => {
	f.query("DELETE FROM \"menu\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = Menu;


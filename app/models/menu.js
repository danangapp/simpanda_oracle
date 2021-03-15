const f = require('../controllers/function');
var objek = new Object();

// constructor
const Menu = function (menu) {
    this.nama = menu.nama;
    this.url = menu.url;
    this.icon = menu.icon;
};

Menu.create = async(newMenu, result, cabang_id) => {
		const hv = await f.headerValue(newMenu, "menu");
		var queryText = "INSERT INTO \"menu\" " + hv + " RETURN \"id\" INTO :id";
		const exec = f.query(queryText, 1);
		delete newMenu.id;
		const res = await exec;

		result(null, { id: res.outBinds.id[0], ...newMenu });
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
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

Menu.updateById = async(id, menu, result) => {

	var arr = ["nama", "url", "icon"];
	var str = f.getValueUpdate(menu, id, arr);
	if (objek.action != null) {
		const hv = await f.headerValue(objek, "activity_log");
		await f.query("INSERT INTO \"activity_log\" " + hv, 2);
	}
	f.query("UPDATE \"menu\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...menu });
};

Menu.remove = (id, result) => {
	f.query("DELETE FROM \"menu\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = Menu;


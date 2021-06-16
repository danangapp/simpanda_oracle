const f = require('../controllers/function');
var objek = new Object();

// constructor
const Action = function (action) {
    this.nama = action.nama;
};

Action.create = async(newAction, result, cabang_id, user_id) => {
	var id = await f.getid("action");
	const hv = await f.headerValue(newAction, id);
	var queryText = "INSERT INTO \"action\" " + hv + " RETURN \"id\" INTO :id";
	const exec = f.query(queryText, 1);
	delete newAction.id;
	const res = await exec;

	result(null, { id: id, ...newAction });
};

Action.findById = async (id, result) => {
	var queryText = "SELECT a.*  FROM \"action\" a   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

Action.getAll = async (param, result, cabang_id) => {
    var wheres = f.getParam(param, "action");
    var query = "SELECT a.*  FROM \"action\" a ";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"nama\" LIKE '%" + param.q + "%'";	
		wheres += ")";
	}

	query += wheres;
	query += "ORDER BY a.\"id\" DESC";
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

Action.updateById = async(id, action, result, user_id) => {

	var arr = ["nama"];
	var str = f.getValueUpdate(action, id, arr);
	var id_activity_log = await f.getid("activity_log");
	objek.koneksi = id;
	objek.action = action.approval_status_id;
	objek.keterangan = action.keterangan;
	objek.item = "action";
	objek.user_id = user_id;
	if(action.approval_status_id == 1){
		objek.remark = "Pengajuan disetujui oleh pusat";
	}else if(action.approval_status_id == 2){
		objek.remark = "Pengajuan ditolak oleh pusat";
	}else if(action.approval_status_id == 0){
		objek.remark = "Pengajuan dirubah oleh admin cabang";
	}
	const hval = await f.headerValue(objek, id_activity_log);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);
	await f.query("UPDATE \"action\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...action });
};

Action.remove = (id, result) => {
	f.query("DELETE FROM \"action\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = Action;


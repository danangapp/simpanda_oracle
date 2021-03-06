const f = require('../controllers/function');
var objek = new Object();

// constructor
const ActionSeq = function (actionseq) {
    this.next_not_cached_value = actionseq.next_not_cached_value;
    this.minimum_value = actionseq.minimum_value;
    this.maximum_value = actionseq.maximum_value;
    this.start_value = actionseq.start_value;
    this.increment = actionseq.increment;
    this.cache_size = actionseq.cache_size;
    this.cycle_option = actionseq.cycle_option;
    this.cycle_count = actionseq.cycle_count;
};

ActionSeq.create = async(newActionSeq, result, cabang_id, user_id) => {
	var id = await f.getid("action_seq");
	const hv = await f.headerValue(newActionSeq, id);
	var queryText = "INSERT INTO \"action_seq\" " + hv + " RETURN \"id\" INTO :id";
	const exec = f.query(queryText, 1);
	delete newActionSeq.id;
	const res = await exec;

	result(null, { id: id, ...newActionSeq });
};

ActionSeq.findById = async (id, result) => {
	var queryText = "SELECT a.*  FROM \"action_seq\" a   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

ActionSeq.getAll = async (param, result, cabang_id) => {
    var wheres = f.getParam(param, "action_seq");
    var query = "SELECT a.*  FROM \"action_seq\" a ";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"next_not_cached_value\" LIKE '%" + param.q + "%' OR a.\"minimum_value\" LIKE '%" + param.q + "%' OR a.\"maximum_value\" LIKE '%" + param.q + "%' OR a.\"start_value\" LIKE '%" + param.q + "%' OR a.\"increment\" LIKE '%" + param.q + "%' OR a.\"cache_size\" LIKE '%" + param.q + "%' OR a.\"cycle_option\" LIKE '%" + param.q + "%' OR a.\"cycle_count\" LIKE '%" + param.q + "%'";	
		wheres += ")";
	}

	query += wheres;
	query += "ORDER BY a.\"id\" DESC";
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

ActionSeq.updateById = async(id, actionseq, result, user_id) => {

	var arr = ["next_not_cached_value", "minimum_value", "maximum_value", "start_value", "increment", "cache_size", "cycle_option", "cycle_count"];
	var str = f.getValueUpdate(actionseq, id, arr);
	var id_activity_log = await f.getid("activity_log");
	objek.koneksi = id;
	objek.action = actionseq.approval_status_id;
	objek.keterangan = actionseq.keterangan;
	objek.item = "actionseq";
	objek.user_id = user_id;
	if(actionseq.approval_status_id == 1){
		objek.remark = "Pengajuan disetujui oleh pusat";
	}else if(actionseq.approval_status_id == 2){
		objek.remark = "Pengajuan ditolak oleh pusat";
	}else if(actionseq.approval_status_id == 0){
		objek.remark = "Pengajuan dirubah oleh admin cabang";
	}
	const hval = await f.headerValue(objek, id_activity_log);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);
	await f.query("UPDATE \"action_seq\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...actionseq });
};

ActionSeq.remove = (id, result) => {
	f.query("DELETE FROM \"action_seq\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = ActionSeq;


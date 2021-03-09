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

ActionSeq.create = async(newActionSeq, result) => {
		const hv = await f.headerValue(newActionSeq, "action_seq");
		var queryText = "INSERT INTO \"action_seq\" " + hv + " RETURN \"id\" INTO :id";
		const exec = f.query(queryText, 1);
		delete newActionSeq.id;
		const res = await exec;

		result(null, { id: res.outBinds.id[0], ...newActionSeq });
};

ActionSeq.findById = async (id, result) => {
	var queryText = "SELECT a.*  FROM \"action_seq\" a   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

ActionSeq.getAll = async (param, result) => {
    var wheres = f.getParam(param);
    var query = "SELECT a.*  FROM \"action_seq\" a ";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"next_not_cached_value\" LIKE '%" + param.q + "%' OR a.\"minimum_value\" LIKE '%" + param.q + "%' OR a.\"maximum_value\" LIKE '%" + param.q + "%' OR a.\"start_value\" LIKE '%" + param.q + "%' OR a.\"increment\" LIKE '%" + param.q + "%' OR a.\"cache_size\" LIKE '%" + param.q + "%' OR a.\"cycle_option\" LIKE '%" + param.q + "%' OR a.\"cycle_count\" LIKE '%" + param.q + "%'";	
		wheres += ")";
	}

	query += wheres;
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

ActionSeq.updateById = async(id, actionseq, result) => {

	var arr = ["next_not_cached_value", "minimum_value", "maximum_value", "start_value", "increment", "cache_size", "cycle_option", "cycle_count"];
	var str = f.getValueUpdate(actionseq, id, arr);
	if (objek.action != null) {
		const hv = await f.headerValue(objek, "activity_log");
		f.query("INSERT INTO \"activity_log\" " + hv, 2);
	}
	f.query("UPDATE \"action_seq\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...actionseq });
};

ActionSeq.remove = (id, result) => {
	f.query("DELETE FROM \"action_seq\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = ActionSeq;


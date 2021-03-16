const f = require('../controllers/function');
var objek = new Object();

// constructor
const ArmadaJaga = function (armadajaga) {
    this.from = armadajaga.from;
    this.to = armadajaga.to;
    this.armada_schedule_id = armadajaga.armada_schedule_id;
};

ArmadaJaga.create = async(newArmadaJaga, result, cabang_id, user_id) => {
		var id = await f.getid("armada_jaga");
		const hv = await f.headerValue(newArmadaJaga, id);
		var queryText = "INSERT INTO \"armada_jaga\" " + hv + " RETURN \"id\" INTO :id";
		const exec = f.query(queryText, 1);
		delete newArmadaJaga.id;
		const res = await exec;

		result(null, { id: id, ...newArmadaJaga });
};

ArmadaJaga.findById = async (id, result) => {
	var queryText = "SELECT a.* , a1.\"keterangan\" as \"armada_schedule\" FROM \"armada_jaga\" a  LEFT JOIN \"armada_schedule\" a1 ON a.\"armada_schedule_id\" = a1.\"id\"   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

ArmadaJaga.getAll = async (param, result, cabang_id) => {
    var wheres = f.getParam(param, "armada_jaga");
    var query = "SELECT a.* , a1.\"keterangan\" as \"armada_schedule\" FROM \"armada_jaga\" a  LEFT JOIN \"armada_schedule\" a1 ON a.\"armada_schedule_id\" = a1.\"id\" ";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"from\" LIKE '%" + param.q + "%' OR a.\"to\" LIKE '%" + param.q + "%' OR a.\"armada_schedule_id\" LIKE '%" + param.q + "%'";	
		wheres += ")";
	}

	query += wheres;
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

ArmadaJaga.updateById = async(id, armadajaga, result, user_id) => {

	var arr = ["from", "to", "armada_schedule_id"];
	var str = f.getValueUpdate(armadajaga, id, arr);
	var id_activity_log = await f.getid("activity_log");
	objek.koneksi = id;
	objek.action = armadajaga.approval_status_id;
	objek.item = "armadajaga";
	objek.remark = armadajaga.activityLog ? armadajaga.activityLog.remark : '';
	objek.user_id = user_id;
	const hval = await f.headerValue(objek, id_activity_log);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);
	await f.query("UPDATE \"armada_jaga\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...armadajaga });
};

ArmadaJaga.remove = (id, result) => {
	f.query("DELETE FROM \"armada_jaga\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = ArmadaJaga;


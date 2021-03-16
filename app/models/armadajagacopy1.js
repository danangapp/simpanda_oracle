const f = require('../controllers/function');
var objek = new Object();

// constructor
const ArmadaJagaCopy1 = function (armadajagacopy1) {
    this.tipe_asset_id = armadajagacopy1.tipe_asset_id;
    this.asset_kapal_id = armadajagacopy1.asset_kapal_id;
    this.armada_schedule_id = armadajagacopy1.armada_schedule_id;
};

ArmadaJagaCopy1.create = async(newArmadaJagaCopy1, result, cabang_id, user_id) => {
		var id = await f.getid("armada_jaga_copy1");
		const hv = await f.headerValue(newArmadaJagaCopy1, id);
		var queryText = "INSERT INTO \"armada_jaga_copy1\" " + hv + " RETURN \"id\" INTO :id";
		const exec = f.query(queryText, 1);
		delete newArmadaJagaCopy1.id;
		const res = await exec;

		result(null, { id: id, ...newArmadaJagaCopy1 });
};

ArmadaJagaCopy1.findById = async (id, result) => {
	var queryText = "SELECT a.* , a1.\"nama\" as \"tipe_asset\", a2.\"nama_asset\" as \"asset_kapal\", a3.\"keterangan\" as \"armada_schedule\" FROM \"armada_jaga_copy1\" a  LEFT JOIN \"tipe_asset\" a1 ON a.\"tipe_asset_id\" = a1.\"id\"  LEFT JOIN \"asset_kapal\" a2 ON a.\"asset_kapal_id\" = a2.\"id\"  LEFT JOIN \"armada_schedule\" a3 ON a.\"armada_schedule_id\" = a3.\"id\"   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

ArmadaJagaCopy1.getAll = async (param, result, cabang_id) => {
    var wheres = f.getParam(param, "armada_jaga_copy1");
    var query = "SELECT a.* , a1.\"nama\" as \"tipe_asset\", a2.\"nama_asset\" as \"asset_kapal\", a3.\"keterangan\" as \"armada_schedule\" FROM \"armada_jaga_copy1\" a  LEFT JOIN \"tipe_asset\" a1 ON a.\"tipe_asset_id\" = a1.\"id\"  LEFT JOIN \"asset_kapal\" a2 ON a.\"asset_kapal_id\" = a2.\"id\"  LEFT JOIN \"armada_schedule\" a3 ON a.\"armada_schedule_id\" = a3.\"id\" ";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"tipe_asset_id\" LIKE '%" + param.q + "%' OR a.\"asset_kapal_id\" LIKE '%" + param.q + "%' OR a.\"armada_schedule_id\" LIKE '%" + param.q + "%'";	
		wheres += ")";
	}

	query += wheres;
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

ArmadaJagaCopy1.updateById = async(id, armadajagacopy1, result, user_id) => {

	var arr = ["tipe_asset_id", "asset_kapal_id", "armada_schedule_id"];
	var str = f.getValueUpdate(armadajagacopy1, id, arr);
	var id_activity_log = await f.getid("activity_log");
	objek.koneksi = id;
	objek.action = armadajagacopy1.approval_status_id;
	objek.user_id = user_id;
	const hval = await f.headerValue(objek, id_activity_log);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);
	await f.query("UPDATE \"armada_jaga_copy1\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...armadajagacopy1 });
};

ArmadaJagaCopy1.remove = (id, result) => {
	f.query("DELETE FROM \"armada_jaga_copy1\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = ArmadaJagaCopy1;


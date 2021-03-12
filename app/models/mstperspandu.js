const f = require('../controllers/function');
var objek = new Object();

// constructor
const MstPersPandu = function (mstperspandu) {
    this.KD_PERS_PANDU = mstperspandu.KD_PERS_PANDU;
    this.NM_PERS_PANDU = mstperspandu.NM_PERS_PANDU;
    this.NIPP = mstperspandu.NIPP;
    this.KELAS = mstperspandu.KELAS;
    this.KD_CABANG = mstperspandu.KD_CABANG;
    this.enable = mstperspandu.enable;
    this.KD_PERS_PANDU_1 = mstperspandu.KD_PERS_PANDU_1;
};

MstPersPandu.create = async(newMstPersPandu, result) => {
		const hv = await f.headerValue(newMstPersPandu, "mst_pers_pandu");
		var queryText = "INSERT INTO \"mst_pers_pandu\" " + hv + " RETURN \"id\" INTO :id";
		const exec = f.query(queryText, 1);
		delete newMstPersPandu.id;
		const res = await exec;

		result(null, { id: res.outBinds.id[0], ...newMstPersPandu });
};

MstPersPandu.findById = async (id, result) => {
	var queryText = "SELECT a.* , a1.\"nama\" as \"ena\" FROM \"mst_pers_pandu\" a  LEFT JOIN \"enable\" a1 ON a.\"enable\" = a1.\"id\"   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

MstPersPandu.getAll = async (param, result, cabang_id) => {
    var wheres = f.getParam(param, "mst_pers_pandu");
    var query = "SELECT a.* , a1.\"nama\" as \"ena\" FROM \"mst_pers_pandu\" a  LEFT JOIN \"enable\" a1 ON a.\"enable\" = a1.\"id\" ";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"KD_PERS_PANDU\" LIKE '%" + param.q + "%' OR a.\"NM_PERS_PANDU\" LIKE '%" + param.q + "%' OR a.\"NIPP\" LIKE '%" + param.q + "%' OR a.\"KELAS\" LIKE '%" + param.q + "%' OR a.\"KD_CABANG\" LIKE '%" + param.q + "%' OR a.\"enable\" LIKE '%" + param.q + "%' OR a.\"KD_PERS_PANDU_1\" LIKE '%" + param.q + "%'";	
		wheres += ")";
	}

	query += wheres;
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

MstPersPandu.updateById = async(id, mstperspandu, result) => {

	var arr = ["KD_PERS_PANDU", "NM_PERS_PANDU", "NIPP", "KELAS", "KD_CABANG", "enable", "KD_PERS_PANDU_1"];
	var str = f.getValueUpdate(mstperspandu, id, arr);
	if (objek.action != null) {
		const hv = await f.headerValue(objek, "activity_log");
		await f.query("INSERT INTO \"activity_log\" " + hv, 2);
	}
	f.query("UPDATE \"mst_pers_pandu\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...mstperspandu });
};

MstPersPandu.remove = (id, result) => {
	f.query("DELETE FROM \"mst_pers_pandu\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = MstPersPandu;


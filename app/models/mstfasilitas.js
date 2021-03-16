const f = require('../controllers/function');
var objek = new Object();

// constructor
const MstFasilitas = function (mstfasilitas) {
    this.KD_FAS = mstfasilitas.KD_FAS;
    this.NM_FAS = mstfasilitas.NM_FAS;
    this.DAYA = mstfasilitas.DAYA;
    this.KD_CABANG = mstfasilitas.KD_CABANG;
    this.enable = mstfasilitas.enable;
    this.DAYA2 = mstfasilitas.DAYA2;
    this.STATUS_MILIK = mstfasilitas.STATUS_MILIK;
    this.ASSET_NUMBER = mstfasilitas.ASSET_NUMBER;
    this.KD_PUSPEL_JAI = mstfasilitas.KD_PUSPEL_JAI;
    this.NEW_PUSPEL_JAI = mstfasilitas.NEW_PUSPEL_JAI;
    this.NEW_ASSET_JAI = mstfasilitas.NEW_ASSET_JAI;
};

MstFasilitas.create = async(newMstFasilitas, result, cabang_id, user_id) => {
		var id = await f.getid("mst_fasilitas");
		const hv = await f.headerValue(newMstFasilitas, id);
		var queryText = "INSERT INTO \"mst_fasilitas\" " + hv + " RETURN \"id\" INTO :id";
		const exec = f.query(queryText, 1);
		delete newMstFasilitas.id;
		const res = await exec;

		result(null, { id: id, ...newMstFasilitas });
};

MstFasilitas.findById = async (id, result) => {
	var queryText = "SELECT a.* , a1.\"nama\" as \"ena\" FROM \"mst_fasilitas\" a  LEFT JOIN \"enable\" a1 ON a.\"enable\" = a1.\"id\"   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

MstFasilitas.getAll = async (param, result, cabang_id) => {
    var wheres = f.getParam(param, "mst_fasilitas");
    var query = "SELECT a.* , a1.\"nama\" as \"ena\" FROM \"mst_fasilitas\" a  LEFT JOIN \"enable\" a1 ON a.\"enable\" = a1.\"id\" ";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"KD_FAS\" LIKE '%" + param.q + "%' OR a.\"NM_FAS\" LIKE '%" + param.q + "%' OR a.\"DAYA\" LIKE '%" + param.q + "%' OR a.\"KD_CABANG\" LIKE '%" + param.q + "%' OR a.\"enable\" LIKE '%" + param.q + "%' OR a.\"DAYA2\" LIKE '%" + param.q + "%' OR a.\"STATUS_MILIK\" LIKE '%" + param.q + "%' OR a.\"ASSET_NUMBER\" LIKE '%" + param.q + "%' OR a.\"KD_PUSPEL_JAI\" LIKE '%" + param.q + "%' OR a.\"NEW_PUSPEL_JAI\" LIKE '%" + param.q + "%' OR a.\"NEW_ASSET_JAI\" LIKE '%" + param.q + "%'";	
		wheres += ")";
	}

	query += wheres;
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

MstFasilitas.updateById = async(id, mstfasilitas, result, user_id) => {

	var arr = ["KD_FAS", "NM_FAS", "DAYA", "KD_CABANG", "enable", "DAYA2", "STATUS_MILIK", "ASSET_NUMBER", "KD_PUSPEL_JAI", "NEW_PUSPEL_JAI", "NEW_ASSET_JAI"];
	var str = f.getValueUpdate(mstfasilitas, id, arr);
	var id_activity_log = await f.getid("activity_log");
	objek.koneksi = id;
	objek.action = mstfasilitas.approval_status_id;
	objek.item = "mstfasilitas";
	objek.remark = mstfasilitas.activityLog ? mstfasilitas.activityLog.remark : '';
	objek.user_id = user_id;
	const hval = await f.headerValue(objek, id_activity_log);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);
	await f.query("UPDATE \"mst_fasilitas\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...mstfasilitas });
};

MstFasilitas.remove = (id, result) => {
	f.query("DELETE FROM \"mst_fasilitas\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = MstFasilitas;


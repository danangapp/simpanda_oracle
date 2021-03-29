const f = require('../controllers/function');
var objek = new Object();

// constructor
const InvestigasiInsidenTim = function (investigasiinsidentim) {
    this.nama = investigasiinsidentim.nama;
    this.jabatan = investigasiinsidentim.jabatan;
    this.tgl = investigasiinsidentim.tgl;
    this.status = investigasiinsidentim.status;
    this.investigasi_insiden_id = investigasiinsidentim.investigasi_insiden_id;
};

InvestigasiInsidenTim.create = async(newInvestigasiInsidenTim, result, cabang_id, user_id) => {
	var id = await f.getid("investigasi_insiden_tim");
	const hv = await f.headerValue(newInvestigasiInsidenTim, id);
	var queryText = "INSERT INTO \"investigasi_insiden_tim\" " + hv + " RETURN \"id\" INTO :id";
	const exec = f.query(queryText, 1);
	delete newInvestigasiInsidenTim.id;
	const res = await exec;

	result(null, { id: id, ...newInvestigasiInsidenTim });
};

InvestigasiInsidenTim.findById = async (id, result) => {
	var queryText = "SELECT a.* , a1.\"nama\" as \"investigasi_insiden\" FROM \"investigasi_insiden_tim\" a  LEFT JOIN \"investigasi_insiden\" a1 ON a.\"investigasi_insiden_id\" = a1.\"id\"   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
	result(null, res.rows[0]);
}

InvestigasiInsidenTim.getAll = async (param, result, cabang_id) => {
    var wheres = f.getParam(param, "investigasi_insiden_tim");
    var query = "SELECT a.* , a1.\"nama\" as \"investigasi_insiden\" FROM \"investigasi_insiden_tim\" a  LEFT JOIN \"investigasi_insiden\" a1 ON a.\"investigasi_insiden_id\" = a1.\"id\" ";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"nama\" LIKE '%" + param.q + "%' OR a.\"jabatan\" LIKE '%" + param.q + "%' OR a.\"tgl\" LIKE '%" + param.q + "%' OR a.\"status\" LIKE '%" + param.q + "%' OR a.\"investigasi_insiden_id\" LIKE '%" + param.q + "%'";	
		wheres += ")";
	}

	query += wheres;
	query += "ORDER BY a.\"id\" DESC";
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

InvestigasiInsidenTim.updateById = async(id, investigasiinsidentim, result, user_id) => {

	var arr = ["nama", "jabatan", "tgl", "status", "investigasi_insiden_id"];
	var str = f.getValueUpdate(investigasiinsidentim, id, arr);
	var id_activity_log = await f.getid("activity_log");
	objek.koneksi = id;
	objek.action = investigasiinsidentim.approval_status_id;
	objek.item = "investigasiinsidentim";
	objek.user_id = user_id;
	if(investigasiinsidentim.approval_status_id == 1){
		objek.remark = "Pengajuan disetujui oleh pusat";
	}else if(investigasiinsidentim.approval_status_id == 2){
		objek.remark = "Pengajuan ditolak oleh pusat";
	}else if(investigasiinsidentim.approval_status_id == 0){
		objek.remark = "Pengajuan dibuat oleh admin cabang";
	}
	const hval = await f.headerValue(objek, id_activity_log);
	await f.query("INSERT INTO \"activity_log\" " + hval, 2);
	await f.query("UPDATE \"investigasi_insiden_tim\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...investigasiinsidentim });
};

InvestigasiInsidenTim.remove = (id, result) => {
	f.query("DELETE FROM \"investigasi_insiden_tim\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = InvestigasiInsidenTim;


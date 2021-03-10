const f = require('../controllers/function');
var objek = new Object();

// constructor
const UserGroup = function (usergroup) {
    this.nama = usergroup.nama;
    this.keterangan = usergroup.keterangan;
    this.cabang_id = usergroup.cabang_id;
};

UserGroup.create = async(newUserGroup, result) => {
		const user_access = newUserGroup.user_access;
		delete newUserGroup.user_access;
		const hv = await f.headerValue(newUserGroup, "user_group");
		var queryText = "INSERT INTO \"user_group\" " + hv + " RETURN \"id\" INTO :id";
		const exec = f.query(queryText, 1);
		delete newUserGroup.id;
		const res = await exec;

		for (var i in user_access) {
		    const x = user_access[i];
			x['user_group_id'] = res.insertId;
		
		    var header = "", value = "";
		    for (var a in x) {
		        const val = x[a];
		        header += a + ", ";
				if (a != "user_access") {
				    value += "'" + val + "', ";
				} else {
				    var fileName = f.uploadFile64('user_group', val);
				    value += "'" + fileName + "', ";
				}
		    }
		    value = value.substring(0, value.length - 2);
		    header = header.substring(0, header.length - 2);
			f.query("INSERT INTO user_access (" + header + ") values (" + value + ")");
		}

		result(null, { id: res.outBinds.id[0], ...newUserGroup });
};

UserGroup.findById = async (id, result) => {
	const resQuery = f.query("SELECT * FROM \"user_access\" WHERE \"user_group_id\" = '" + id + "'");
	var queryText = "SELECT a.* , a1.\"nama\" as \"cabang\" FROM \"user_group\" a  LEFT JOIN \"cabang\" a1 ON a.\"cabang_id\" = a1.\"id\"   WHERE a.\"id\" = '" + id + "'";
	const exec = f.query(queryText);
	const res = await exec;
		const user_access = { "user_access": resQuery }
	let merge = { ...res.rows[0], ...user_access }	
	result(null, merge);
}

UserGroup.getAll = async (param, result) => {
    var wheres = f.getParam(param, "user_group");
    var query = "SELECT a.* , a1.\"nama\" as \"cabang\" FROM \"user_group\" a  LEFT JOIN \"cabang\" a1 ON a.\"cabang_id\" = a1.\"id\" ";
	if (param.q) {
		wheres += wheres.length == 7 ? "(" : "AND (";
		wheres += "a.\"nama\" LIKE '%" + param.q + "%' OR a.\"keterangan\" LIKE '%" + param.q + "%' OR a.\"cabang_id\" LIKE '%" + param.q + "%'";	
		wheres += ")";
	}

	query += wheres;
	const exec = f.query(query);
	const res = await exec;
	result(null, res.rows);
}

UserGroup.updateById = async(id, usergroup, result) => {
		const user_access = usergroup.user_access;
		var arr = ["user_group_id", "menu_id"]
		f.query("DELETE FROM \"user_access\" WHERE \"user_group_id\"='" + id + "'");
		for (var i in user_access) {
		    const x = user_access[i];
		
		    var header = "", value = "";
			x['user_group_id'] = id;
		    for (var a in x) {
		        var val = x[a];
				var adadiTable = 0
				for (var b in arr) {
					if (a == arr[b]) {
						adadiTable = 1;
						break;
					}
				}

				if (adadiTable == 1) {
					header += a + ", ";
					value += "'" + val + "', ";
				}
		    }
		    value = value.substring(0, value.length - 2);
		    header = header.substring(0, header.length - 2);
		
			f.query("INSERT INTO user_access (" + header + ") values (" + value + ")");
		}
		delete usergroup.user_access;

	var arr = ["nama", "keterangan", "cabang_id"];
	var str = f.getValueUpdate(usergroup, id, arr);
	if (objek.action != null) {
		const hv = await f.headerValue(objek, "activity_log");
		f.query("INSERT INTO \"activity_log\" " + hv, 2);
	}
	f.query("UPDATE \"user_group\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id, ...usergroup });
};

UserGroup.remove = (id, result) => {
	f.query("DELETE FROM \"user_group\" WHERE \"id\" = '" + id + "'", 2);
	result(null, { id: id });
};

module.exports = UserGroup;


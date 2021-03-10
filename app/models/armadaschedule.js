const f = require('../controllers/function');
var objek = new Object();

// constructor
const ArmadaSchedule = function (armadaschedule) {
    this.date = armadaschedule.date;
    this.cabang = armadaschedule.cabang;
    this.tipe_asset_id = armadaschedule.tipe_asset_id;
    this.asset_kapal_id = armadaschedule.asset_kapal_id;
    this.status = armadaschedule.status;
    this.jam_pengoperasian = armadaschedule.jam_pengoperasian;
    this.reliability = armadaschedule.reliability;
    this.keterangan = armadaschedule.keterangan;
    this.armada_jaga_id = armadaschedule.armada_jaga_id;
};

ArmadaSchedule.create = async (newArmadaSchedule, result) => {
    for (var a in newArmadaSchedule) {
        const hv = await f.headerValue(newArmadaSchedule);
        var res = await f.query("INSERT INTO \"armada_schedule\" " + hv + " RETURN \"id\" INTO :id", 1);

        for (var b in c) {
            if (b === "armada_jaga") {
                var e = c[b];
                for (var d in e) {
                    var g = e[d];
                    g['armada_schedule_id'] = res.outBinds.id[0];
                    const hv2 = f.headerValue(g);
                    await f.query("INSERT INTO \"armada_jaga\"" + hv2, 1);
                }
            }
        }
    }

    result(null, newArmadaSchedule);
};

ArmadaSchedule.findById = async (id, result) => {
    const resQuery = await f.query("SELECT * FROM \"armada_jaga\" WHERE \"armada_schedule_id\" = '" + id + "'");
    var queryText = "SELECT a.* , a1.\"nama\" as \"tipe_asset\", a2.\"nama_asset\" as \"asset_kapal\", a3.\"nama\" as \"armada_jaga\" FROM \"armada_schedule\" a  LEFT JOIN \"tipe_asset\" a1 ON a.\"tipe_asset_id\" = a1.\"id\"  LEFT JOIN \"asset_kapal\" a2 ON a.\"asset_kapal_id\" = a2.\"id\"  LEFT JOIN \"armada_jaga\" a3 ON a.\"armada_jaga_id\" = a3.\"id\"   WHERE a.\"id\" = '" + id + "'";
    const exec = f.query(queryText);
    const res = await exec;
    const armada_jaga = { "pandu_jaga": resQuery }
    let merge = { ...res.rows[0], ...armada_jaga }

    result(null, merge);
}

ArmadaSchedule.getAll = async (param, result) => {
    var wheres = f.getParam(param, "armada_schedule");
    var query = `SELECT a.*, a1."nama" as "cabang", a2."nama" as "tipe_asset", a3."nama_asset" FROM "armada_schedule" a LEFT JOIN "cabang" a1 ON a."cabang_id" = a1."id" LEFT JOIN "tipe_asset" a2 ON a."tipe_asset_id" = a2."id" LEFT JOIN "asset_kapal" a3 ON a."asset_kapal_id" = a3."id"`;
    if (param.q) {
        wheres += wheres.length == 7 ? "(" : "AND (";
        wheres += "a.\"date\" LIKE '%" + param.q + "%' OR a.\"cabang\" LIKE '%" + param.q + "%' OR a.\"tipe_asset_id\" LIKE '%" + param.q + "%' OR a.\"asset_kapal_id\" LIKE '%" + param.q + "%' OR a.\"status\" LIKE '%" + param.q + "%' OR a.\"jam_pengoperasian\" LIKE '%" + param.q + "%' OR a.\"reliability\" LIKE '%" + param.q + "%' OR a.\"keterangan\" LIKE '%" + param.q + "%' OR a.\"armada_jaga_id\" LIKE '%" + param.q + "%'";
        wheres += ")";
    }

    query += wheres;
    const exec = f.query(query);
    const res = await exec;
    result(null, res.rows);
}

ArmadaSchedule.updateById = async (id, armadaschedule, result) => {

    var arr = ["date", "cabang", "tipe_asset_id", "asset_kapal_id", "status", "jam_pengoperasian", "reliability", "keterangan", "armada_jaga_id"];
    var str = f.getValueUpdate(armadaschedule, id, arr);
    if (objek.action != null) {
        const hv = await f.headerValue(objek, "activity_log");
        f.query("INSERT INTO \"activity_log\" " + hv, 2);
    }
    f.query("UPDATE \"armada_schedule\" SET " + str + " WHERE \"id\" = '" + id + "'", 2);
    result(null, { id: id, ...armadaschedule });



    for (var a in armadaschedule) {
        var c = armadaschedule[a];
        var str = "";
        for (var b in c) {
            if (b != "armada_jaga" && b != "armada_schedule_id") {
                str += b + "='" + c[b] + "', ";
            }
        }

        str = str.substring(0, str.length - 2);
        await query("UPDATE armada_schedule SET " + str + " WHERE id = '" + c['armada_schedule_id'] + "'");
        await query("DELETE FROM armada_jaga WHERE armada_schedule_id = '" + c['armada_schedule_id'] + "'");

        for (var b in c) {
            if (b === "armada_jaga") {
                var e = c[b];
                for (var d in e) {
                    var g = e[d];
                    g['armada_schedule_id'] = c['armada_schedule_id'];
                    const hv = await f.headerValue(g, "armada_jaga");
                    await query("INSERT INTO armada_jaga " + hv);
                }
            }
        }
    }
};

ArmadaSchedule.remove = (id, result) => {
    f.query("DELETE FROM \"armada_schedule\" WHERE \"id\" = '" + id + "'", 2);
    result(null, { id: id });
};

module.exports = ArmadaSchedule;
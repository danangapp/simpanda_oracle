var moment = require('moment');
var mv = require('mv');
const fs = require('fs');
var XlsxTemplate = require('xlsx-template');
var sjcl = require('sjcl');
require('dotenv').config();

var oracledb = require('oracledb');
const dbConfig = require('../config/dbconfig');
var objOracle = {};
objOracle[process.env.OC_DIR] = process.env.OC;
oracledb.initOracleClient(objOracle);
oracledb.autoCommit = true

moment.updateLocale(moment.locale(), { invalidDate: null })
const arrDate = ["tanggal", "tanggal_sk", "prepard_tanggal", "reviewed_tanggal", "approved_tanggal", "date", "tanggal_awal", "tanggal_akhir", "tanggal_lahir", "tanggal_mulai", "tanggal_selesai", "tanggal_pemeriksaan", "tempat_keluar_sertifikat", "tanggal_keluar_sertifikat", "tanggal_expire", "reminder_date1", "reminder_date3", "reminder_date6"];
const arrDateTime = ["expired"];
module.exports = {
    toDate: function (str, formatdate = 'YYYY-MM-DD') {
        var dateString = str;
        var dateObj = new Date(dateString);
        var momentObj = moment(dateObj);
        var momentString = momentObj.format(formatdate); // 2016-07-15
        return momentString;
    },
    uploadFile: function (folders, files, updateTo) {
        var str = files.path;
        var d = new Date();
        var n = d.getTime();

        var str = files.type;
        var resl = str.split("/");
        const ext = '.' + resl[1];

        const path = './files/';
        updateTo = folders + '/' + n + ext;
        mv(files.path, path + updateTo, function (err) {
            if (err) {
                console.log(err);
                throw err;
            }
        });
        return updateTo;
    },
    uploadFile64: function (folders, files) {
        var str = files.path;
        var d = new Date();
        var n = d.getTime();

        const ext = "." + files.split(';')[0].split('/')[1].toLowerCase();

        const path = './files/';
        var updateTo = folders + '/' + n + ext;

        var base64Data = files.replace(/^data:image\/jpg;base64,/, "");
        base64Data = base64Data.replace(/^data:image\/JPG;base64,/, "");
        base64Data = base64Data.replace(/^data:image\/png;base64,/, "");
        base64Data = base64Data.replace(/^data:image\/PNG;base64,/, "");
        base64Data = base64Data.replace(/^data:image\/jpeg;base64,/, "");
        base64Data = base64Data.replace(/^data:image\/JPEG;base64,/, "");
        base64Data = base64Data.replace(/^data:application\/pdf;base64,/, "");
        base64Data = base64Data.replace(/^data:application\/PDF;base64,/, "");

        require("fs").writeFile(path + updateTo, base64Data, 'base64', function (err) {
            console.log(err);
        });
        return updateTo;
    },
    downloadExcel: function (pathFile, toFolder, objects) {
        fs.readFile(pathFile, function (err, data) {
            var template = new XlsxTemplate(data);
            for (var a in objects) {
                var i = parseInt(a) + 1;
                // console.log(objects[a]);
                template.substitute(i, objects[a]);
            }

            var data = template.generate();
            fs.writeFileSync(toFolder, data, 'binary');
        });
    },
    hashCode: function (str) {
        const myBitArray = sjcl.hash.sha256.hash(str)
        const myHash = sjcl.codec.hex.fromBits(myBitArray)
        return myHash;
    },
    query: async function (query, insert = 0) {
        let connection;
        try {
            connection = await oracledb.getConnection(dbConfig);

            if (insert == 1) {
                const result = await connection.execute(
                    query,
                    { id: { type: oracledb.NUMBER, dir: oracledb.BIND_OUT } }
                );

                return result;
            } else if (insert == 2) {
                const result = await connection.execute(query);

                return result;
            } else {
                const result = await connection.execute(query, [], { outFormat: oracledb.OUT_FORMAT_OBJECT });
                return result;
            }
        } catch (err) {
            console.error(err);
        } finally {
            if (connection) {
                try {
                    await connection.close();
                } catch (err) {
                    console.error(err);
                }
            }
        }
    },
    getid: async function (tableName) {
        var get_id = await this.query(`SELECT NVL(max("id"), 0) + 1 as "id" FROM "${tableName}"`, 2);
        var id = get_id.rows[0][0];
        return id;
    },
    headerValue: async function (object, tableName = '') {
        var header = "", value = "";
        object.id = await this.getid(tableName);
        for (var a in object) {
            const val = object[a];
            header += "\"" + a + "\", ";

            var ada_tgl = 0;
            var ada_tglTime = 0;
            for (var c in arrDate) {
                if (a == arrDate[c]) {
                    ada_tgl = 1;
                }
            }

            for (var c in arrDateTime) {
                if (a == arrDateTime[c]) {
                    ada_tglTime = 1;
                }
            }

            if (a != "id") {
                if (ada_tgl == 1) {
                    value += "TO_DATE('" + val + "', 'yyyy/mm/dd') , ";
                } else if (ada_tglTime == 1) {
                    value += "TO_DATE('" + val + "', 'yyyy/mm/dd HH24:MI:SS') , ";
                } else {
                    value += "'" + val + "', ";
                }
            } else {
                value += "" + val + ", ";
            }
        }

        value = value.substring(0, value.length - 2);
        header = header.substring(0, header.length - 2);
        const headervalue = "(" + header + ") values(" + value + ")";
        return headervalue;
    },
    customWhere: function (db, i, param) {
        var column = `a."` + i + `"`;
        var wheres = "";
        var adaTgl = 0;

        if (db === "armada_schedule") {
            if (i == "cabang") {
                column = `a1."nama"`;
            }

            if (i == "tipe_asset") {
                column = `a2."nama"`;
            }
        } else if (db === "asset_kapal") {
            if (i == "flag") {
                column = `a2."flag"`;
            }
        } else if (db === "pandu_jaga") {
            if (i == "pandu_bandar_laut_id") {
                column = `a1."pandu_bandar_laut_id"`;
            }

            if (i == "date") {
                column = `trunc(a1."date")`;
                adaTgl = 1;
            }

            if (i == "cabang_id") {
                column = `a1."cabang_id"`;
            }
        } else if (db === "armada_jaga") {
            if (i == "cabang_id") {
                column = `a2."cabang_id"`;
            }

            if (i == "date") {
                column = `a3."date"`;
                adaTgl = 1;
            }
        }

        if (adaTgl == 0) {
            wheres = column + ` = '` + param[i] + `' and `;
        } else {
            wheres = column + ` = TO_DATE('` + param[i] + `', 'YY-MM-DD') and `;
        }
        return wheres;
    },
    getParam: function (param, db = "") {
        const length = Object.keys(param).length;
        var wheres = "";
        if (length > 0) {
            wheres += " WHERE ";
            for (var i in param) {
                if (i != "q") {
                    var str = param[i];
                    if (typeof str != "string") {
                        var wherein = "";
                        for (var x in str) {
                            wherein += str[x] + ", ";
                        }
                        wherein = wherein.substring(0, wherein.length - 2);
                        wheres += "a.\"" + i + "\" IN (" + wherein + ")";
                        wheres += " and ";
                    } else {
                        wheres += this.customWhere(db, i, param);
                    }
                }
            }

            if (wheres.length > 7) {
                wheres = wheres.substring(0, wheres.length - 5);
            }
        }

        return wheres;
    },
    getValueUpdate: function (object, id, arr) {
        var str = "", obj = [], no = 1;
        for (var i in object) {
            var adadiTable = 0
            for (var b in arr) {
                if (i == arr[b]) {
                    adadiTable = 1;
                }
            }
            if (object[i] && adadiTable == 1) {
                var value = object[i];
                var ada_tgl = 0;
                for (var c in arrDate) {
                    if (i == arrDate[c]) {
                        ada_tgl = 1;
                        break;
                    }
                }

                if (ada_tgl == 1) {
                    str += "\"" + i + "\" = TO_DATE('" + value + "', 'yyyy/mm/dd'), ";
                } else {
                    str += "\"" + i + "\" = '" + value + "', ";
                }
                obj.push(object[i]);
            }
            no++;
        }
        obj.push(id);
        str = str.substring(0, str.length - 2);
        // console.log(str);
        return str;
    },
    executeSertifikat: function (sertifikat, id, db, dbId) {
        var header = "", value = "";
        var arr = ["jenis_cert_id", "tipe_cert_id", "personil_id", "asset_kapal_id", "no_sertifikat", "issuer", "tempat_keluar_sertifikat", "tanggal_keluar_sertifikat", "tanggal_expire", "reminder_date1", "reminder_date3", "reminder_date6", "sertifikat", "sertifikat_id"]
        for (var i in sertifikat) {
            const x = sertifikat[i];
            x[dbId] = id;

            var header = "", value = "";
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
                    if (a === "tanggal_keluar_sertifikat" || a === "tanggal_expire" || a === "reminder_date1" || a === "reminder_date3" || a === "reminder_date6") {
                        val = f.toDate(val);
                    }
                    if (val) {
                        header += a + ", ";
                        if (a != "sertifikat") {
                            value += "'" + val + "', ";
                        } else {
                            var fileName = f.uploadFile64('personil', val);
                            value += "'" + fileName + "', ";
                        }
                    }
                }
            }
            value = value.substring(0, value.length - 2);
            header = header.substring(0, header.length - 2);
            const headervalue = "(" + header + ") values(" + value + ")";
            this.query("INSERT INTO sertifikat " + headervalue);
        }
    },
    whereCabang: function (cabang_id, column, lengths) {
        var wheres = "";
        if (cabang_id != 0) {
            wheres += lengths == 0 ? ` WHERE ${column} = '${cabang_id}'` : wheres += ` AND ${column} = '${cabang_id}'`
        } else {
            wheres = "";
        }
        return wheres;
    }
};
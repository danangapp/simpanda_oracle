var moment = require('moment');
var mv = require('mv');
var http = require('http');
var fs = require('fs');
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
const arrDate = ["tanggal", "tanggal_sk", "prepard_tanggal", "reviewed_tanggal", "approved_tanggal", "date", "tanggal_awal", "tanggal_akhir", "tanggal_lahir", "tanggal_mulai", "tanggal_selesai", "tanggal_pemeriksaan", "tempat_keluar_sertifikat", "tanggal_keluar_sertifikat", "tanggal_expire", "reminder_date1", "reminder_date3", "reminder_date6", "skpp_tanggal_mulai", "skpp_tanggal_selesai", "tgl", "skes_tanggal_mulai", "skes_tanggal_selesai", "from", "to"];
const arrDateTime = ["expired"];
// const arrTime = ["from", "to"];
module.exports = {
    // toDate: function (str, formatdate = 'YYYY-MM-DD') {
    //     var dateString = str;
    //     var dateObj = new Date(dateString);
    //     var momentObj = moment(dateObj);
    //     var momentString = momentObj.format(formatdate);
    //     return momentString;
    // },
    toDate: function (str, formatDate = "YYYY-MM-DD") {
        return moment(str).format(formatDate);
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
        base64Data = base64Data.replace(/^data:application\/xlsx;base64,/, "");
        base64Data = base64Data.replace(/^data:application\/XLSX;base64,/, "");
        base64Data = base64Data.replace(/^data:application\/docx;base64,/, "");
        base64Data = base64Data.replace(/^data:application\/DOCX;base64,/, "");

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
    commitToFalse: function () {
        oracledb.autoCommit = false
    },
    commitToTrue: function () {
        oracledb.autoCommit = true
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
            console.error('error catch function.js', err);
            return err;
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
        // console.log(get_id.rows)
        var id = get_id.rows[0][0];
        return id;
    },
    headerValue: async function (object, id = 1) {
        var header = "", value = "";
        object.id = id;
        for (var a in object) {
            var val = object[a];
            if (typeof val != 'object') {
                if (val != undefined) {
                    header += "\"" + a + "\", ";

                    var ada_tgl = 0;
                    var ada_tglTime = 0;
                    var adaTime = 0;
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

                    // for (var c in arrTime) {
                    //     if (a == arrTime[c]) {
                    //         adaTime = 1;
                    //     }
                    // }

                    if (a != "id") {
                        if (ada_tgl == 1) {
                            if (val != "") {
                                val = this.toDate(val);
                                value += "TO_DATE('" + val + "', 'yyyy/mm/dd'), ";
                            } else {
                                value += "null, ";
                            }
                        } else if (ada_tglTime == 1) {
                            value += "TO_DATE('" + val + "', 'yyyy/mm/dd HH24:MI:SS'), ";
                        } else if (adaTime == 1) {
                            value += `TRUNC(SYSDATE) + INTERVAL '${val}' HOUR TO MINUTE, `;
                        } else {
                            value += "'" + val + "', ";
                        }
                    } else {
                        value += "" + val + ", ";
                    }
                }
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
                column = `a3."flag"`;
            }
        } else if (db === "pandu_jaga") {
            if (i == "pandu_bandar_laut_id") {
                column = `a2."pandu_bandar_laut_id"`;
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
                column = `a1."cabang_id"`;
            }

            if (i == "date") {
                column = `a1."date"`;
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
        console.log(object);
        for (var i in object) {
            var adadiTable = 0
            for (var b in arr) {
                if (i == arr[b]) {
                    adadiTable = 1;
                }
            }
            // console.log("value", i, adadiTable);
            if (object[i] != undefined && adadiTable == 1) {
                var value = object[i];
                var ada_tgl = 0;
                var adaTime = 0;
                for (var c in arrDate) {
                    if (i == arrDate[c]) {
                        ada_tgl = 1;
                        break;
                    }
                }

                for (var c in arrTime) {
                    if (i == arrTime[c]) {
                        adaTime = 1;
                    }
                }

                if (ada_tgl == 1) {
                    value = this.toDate(value);
                    str += "\"" + i + "\" = TO_DATE('" + value + "', 'yyyy/mm/dd'), ";
                } else if (adaTime == 1) {
                    value += `TRUNC(SYSDATE) + INTERVAL '${val}' HOUR TO MINUTE, `;
                    str += `"${i}" = TRUNC(SYSDATE) + INTERVAL '${value}' HOUR TO MINUTE, `;
                } else {
                    str += "\"" + i + "\" = '" + value + "', ";
                }
                obj.push(object[i]);
            }
            no++;
        }
        obj.push(id);
        str = str.substring(0, str.length - 2);
        console.log(str);
        return str;
    },
    executeSertifikat: async function (sertifikat, id, db, dbId) {
        var header = "", value = "";
        var arr = ["jenis_cert_id", "tipe_cert_id", "personil_id", "asset_kapal_id", "no_sertifikat", "issuer", "tempat_keluar_sertifikat", "tanggal_keluar_sertifikat", "tanggal_expire", "reminder_date1", "reminder_date3", "reminder_date6", "sertifikat", "sertifikat_id", "id"]
        for (var i in sertifikat) {
            const x = sertifikat[i];
            x.id = await this.getid("sertifikat");
            x[dbId] = id;

            var header = "", value = "";
            for (var a in x) {
                var val = x[a];
                var adadiTable = 0
                var adaTgl = 0;
                for (var b in arr) {
                    if (a == arr[b]) {
                        adadiTable = 1;
                        break;
                    }
                }

                if (adadiTable == 1) {
                    if (a === "tanggal_keluar_sertifikat" || a === "tanggal_expire" || a === "reminder_date1" || a === "reminder_date3" || a === "reminder_date6") {
                        adaTgl = 1;
                        val = this.toDate(val);
                        val = "TO_DATE('" + val + "', 'yyyy-mm-dd')";
                    }
                    if (val) {
                        header += "\"" + a + "\"" + ", ";
                        if (a != "sertifikat") {
                            if (adaTgl == 0) {
                                value += "'" + val + "', ";
                            } else {
                                value += "" + val + ", ";
                            }
                        } else {
                            var fileName = val.substring(0, 4) == "data" ? this.uploadFile64(db, val) : val;
                            value += "'" + fileName + "', ";
                        }
                    }
                }
            }
            value = value.substring(0, value.length - 2);
            header = header.substring(0, header.length - 2);
            const headervalue = "(" + header + ") values(" + value + ")";
            await this.query("INSERT INTO \"sertifikat\" " + headervalue);
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
    },
    report: function (templatePathName, outputPath, data, sheet) {
        fs.readFile(templatePathName, function (err, dt) {
            var template = new XlsxTemplate(dt);

            template.substitute(sheet, data);
            var out = template.generate();
            fs.writeFileSync(outputPath, out, 'binary');
            return "";
        });
    },
    download: function (url, dest, cb) {
        var file = fs.createWriteStream(dest);
        var request = http.get(url, function (response) {
            response.pipe(file);
            file.on('finish', function () {
                file.close(cb);  // close() is async, call cb after close completes.
            });
        }).on('error', function (err) { // Handle errors
            fs.unlink(dest); // Delete the file async. (But we don't check the result)
            if (cb) cb(err.message);
        });
    },
    querySimop: async function (query, insert = 0) {
        let connection;
        try {
            connection = await oracledb.getConnection({
                user: "KAPAL_CABANG",
                password: "kapal_cabang",
                connectString: "(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST=10.10.33.118)(PORT=1521))(CONNECT_DATA=(SERVER=DEDICATED)(SERVICE_NAME=PELDB)))",
                externalAuth: false
            });

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
    approvalStatus: async function (table, data, objek2, id, user_id) {
        const id_activity_log = await this.getid("activity_log");
        var objek = new Object();
        objek.koneksi = id;
        objek.action = data.approval_status_id;
        objek.item = table;
        objek.user_id = user_id;
        objek.keterangan = data.keterangan;
        if (table == "personil") {
            objek.keterangan = objek2.keterangan;
        }
        // console.log(objek);
        if (data.approval_status_id == 1) {
            objek.remark = "Pengajuan disetujui oleh pusat";
        } else if (data.approval_status_id == 2) {
            objek.remark = "Pengajuan ditolak oleh pusat";
        } else if (data.approval_status_id == 0) {
            objek.remark = "Pengajuan dirubah oleh admin cabang";
        }
        const hval = await this.headerValue(objek, id_activity_log);
        await this.query("INSERT INTO \"activity_log\" " + hval, 2);
    },
    getOneRowById: async function (table, id) {
        const rows = await this.query(`SELECT * FROM "${table}" WHERE "id" ='${id}'`);
        return rows.rows[0];
    },
    checkDataId: async function (table, id, checkData) {
        var rows = await this.getOneRowById(table, id, checkData);
        // console.log(rows);
        for (var a in rows) {
            for (var c in arrDate) {
                if (a == arrDate[c]) {
                    rows[a] = this.toDate(rows[a]);
                }
            }
            for (var b in checkData) {
                if (b == a && checkData[b]) {
                    rows[a] = checkData[b];
                    break;
                }
            }
        }
        var arr = {}
        for (var a in rows) {
            if (rows[a]) {
                arr[a] = rows[a];
            }
        }
        return arr;
    }
};
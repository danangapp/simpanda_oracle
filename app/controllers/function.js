var moment = require('moment');
var mv = require('mv');
const fs = require('fs');
var XlsxTemplate = require('xlsx-template');
var sjcl = require('sjcl');

var oracledb = require('oracledb');
const dbConfig = require('../config/dbconfig');
oracledb.initOracleClient({ libDir: 'D:\\tools\\instantclient_19_10' });
oracledb.autoCommit = true

moment.updateLocale(moment.locale(), { invalidDate: null })
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

            // console.log(result.rows);
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
    headerValue: function (object) {
        var header = "", value = "";
        for (var a in object) {
            const val = object[a];
            header += "\"" + a + "\", ";
            if (a != "id") {
                value += "'" + val + "', ";
            } else {
                value += "" + val + ", ";
            }
        }

        value = value.substring(0, value.length - 2);
        header = header.substring(0, header.length - 2);
        const headervalue = "(" + header + ") values(" + value + ")";
        return headervalue;
    },
    getParam: function (param, $db = "") {
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
                        wheres += "a.\"" + i + "\" = '" + param[i] + "' and ";
                    }
                }
            }

            if (wheres.length > 7) {
                if (i == "flag" && $db == "asset_kapal") {
                    wheres += "a2." + i + " ='" + param[i] + "' and ";
                } else if ((i == "flag" && $db == "asset_stasiun_equipment") || (i == "flag" && $db == "personil")) {
                    wheres += "a2." + i + " ='" + param[i] + "' and ";
                }
                else {
                    wheres += "a.\"" + i + "\" ='" + param[i] + "' and ";
                }
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
                    break;
                }
            }
            if (object[i] && adadiTable == 1) {
                str += "\"" + i + "\" = '" + object[i] + "', ";
                obj.push(object[i]);
            }
            no++;
        }
        obj.push(id);
        str = str.substring(0, str.length - 2);
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
    }
};
const Report = require("../models/report.js");
const f = require('./function');
const fs = require('fs');
var XlsxTemplate = require('xlsx-template');

exports.rekapsaranabantu = async (req, res) => {
    var query = `SELECT a.*, b."tipe_asset_id" FROM "sbp_data" a INNER JOIN "sarana_bantu_pemandu" b ON a."sarana_bantu_pemandu_id" = b."id" WHERE a."sarana_bantu_pemandu_id" = '3' ORDER BY a."question_id"`;
    const output1 = await f.query(query);
    output = output1.rows;
    var arr = {}
    for (var a in output) {
        arr["v" + a] = output[a].answer == 1 ? "" : "";
        arr["tv" + a] = output[a].answer == 2 ? "" : "";
        arr["ta" + a] = output[a].answer == 0 ? "" : "";
    }
    // console.log(arr)
    // arr["test"] = "yaya";
    // arr["test 2"] = "yaya 2";
    // console.log(arr)

    fs.readFile('./report/Report-Inspection-Sarana Bantu Pemanduan.xlsx', function async(err, dt) {
        var template = new XlsxTemplate(dt);
        template.substitute(1, arr);
        var out = template.generate();
        fs.writeFileSync('d:/danang1.xlsx', out, 'binary');
        res.send("ok")
    });
    // f.report('d:/Report-Inspection-Sarana Bantu Pemanduan.xlsx', 'd:/danang1.xlsx', { cv1: "danang" }, "Sarana Bantu Pemanduan")
};
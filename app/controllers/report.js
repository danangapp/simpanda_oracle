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
        if (output[a].tipe_asset_id == "1") {
            arr["td_cv" + a] = output[a].answer == 1 ? "" : "";
            arr["td_ctv" + a] = output[a].answer == 2 ? "" : "";
            arr["td_cta" + a] = output[a].answer == 0 ? "" : "";
        } else if (output[a].tipe_asset_id == "2") {
            arr["pd_cv" + a] = output[a].answer == 1 ? "" : "";
            arr["pd_ctv" + a] = output[a].answer == 2 ? "" : "";
            arr["pd_cta" + a] = output[a].answer == 0 ? "" : "";
        } else if (output[a].tipe_asset_id == "3") {
            arr["cv" + a] = output[a].answer == 1 ? "" : "";
            arr["ctv" + a] = output[a].answer == 2 ? "" : "";
            arr["cta" + a] = output[a].answer == 0 ? "" : "";
        }
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
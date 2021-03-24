const Report = require("../models/report.js");
const f = require('./function');

exports.rekapsaranabantu = async (req, res) => {
    f.query(`SELECT * FROM "asset_rumah_dinas"`)
        .then((a) => {
            f.report('d:/rumah-dinas.xlsx', 'd:/danang1.xlsx', { rumah_dinas: a.rows }, "Rumah Dinas")
        })
    res.send("ok bro")
};
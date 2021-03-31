const Report = require("../models/report.js");
const f = require('./function');
const fs = require('fs');
var XlsxTemplate = require('xlsx-template');

exports.rekapsaranabantu = async (req, res) => {
    Report.rekapsaranabantu(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found report with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Error retrieving report with id " + req.params.id
                });
            }
        } else res.send(data);
    }, req.cabang_id);
};
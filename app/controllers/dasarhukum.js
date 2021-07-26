const DasarHukum = require("../models/dasarhukum.js");
const f = require('./function');

exports.create = (req, res) => {
    if (!req.fields) {
        res.status(400).send({
            message: "Content can not be empty!"
        });
    }
    
    var dasarhukum = {
        approval_status_id: req.fields.approval_status_id,
        cabang_id: req.fields.cabang_id,
        judul_dokumen: req.fields.judul_dokumen,
        status: req.fields.status,
        no_dokumen: req.fields.no_dokumen,
        tahun: req.fields.tahun,
        ket: req.fields.ket,
        dasar_hukum: req.fields.dasar_hukum,
        
        date: f.toDate(req.fields.date),
        item: req.fields.item,
        action: req.fields.action,
        user_id: req.fields.user_id,
        remark: req.fields.remark,
        koneksi: req.fields.koneksi,
        keterangan: req.fields.keterangan
    };

    var used = {};
    for (var i in dasarhukum) {
        if (dasarhukum[i] == undefined) {
            delete dasarhukum[i];
        }
    }

    if (req.fields.dasar_hukum) {
        dasarhukum.dasar_hukum = f.uploadFile64('dasar_hukum', req.fields.dasar_hukum);
    }

    DasarHukum.create(dasarhukum, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while creating the dasarhukum."
            });
        else res.send(data);
    }, req.cabang_id, req.user_id);
};

exports.findAll = (req, res) => {
    DasarHukum.getAll(req.query, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while retrieving dasarhukumnames."
            });
        else res.send(data);
    }, req.cabang_id);
};

exports.findOne = (req, res) => {
    DasarHukum.findById(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found dasarhukum with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Error retrieving dasarhukum with id " + req.params.id
                });
            }
        } else res.send(data);
    }, req.cabang_id);
};

exports.update = (req, res) => {
    // Validate Request
    if (!req.fields) {
        res.status(400).send({
            message: "Content can not be empty!"
        });
    }
    console.log("data field", req.fields);
    if (req.fields.dasar_hukum) {
        if (req.fields.dasar_hukum.substring(0, 4) == "data") {
            req.fields.dasar_hukum = f.uploadFile64('dasar_hukum', req.fields.dasar_hukum);
        } else {
            delete req.fields.dasar_hukum
        }
    }

    if (req.fields.tanggal)
        req.fields.tanggal = f.toDate(req.fields.tanggal);

        DasarHukum.updateById(
        req.params.id,
        req.fields,
        (err, data) => {
            if (err) {
                if (err.kind === "not_found") {
                    res.status(404).send({
                        message: `Not found dasarhukum with id ${req.params.id}.`
                    });
                } else {
                    res.status(500).send({
                        message: "Error updating dasarhukum with id " + req.params.id
                    });
                }
            } else res.send(data);
        },
        req.user_id
    );
};

exports.delete = (req, res) => {
    DasarHukum.remove(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found dasarhukum with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Could not delete dasarhukum with id " + req.params.id
                });
            }
        } else res.send({ message: `dasarhukum was deleted successfully!` });
    });
};


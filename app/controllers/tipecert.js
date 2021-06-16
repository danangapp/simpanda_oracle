const TipeCert = require("../models/tipecert.js");
const f = require('./function');

exports.create = (req, res) => {
    if (!req.fields) {
        res.status(400).send({
            message: "Content can not be empty!"
        });
    }

    var tipecert = {
        nama: req.fields.nama,
        remark: req.fields.remark,
        jenis_cert_id: req.fields.jenis_cert_id,
    };

	var used = {};
	for (var i in tipecert) {
	    if (tipecert[i] == undefined) {
	        delete tipecert[i];
	    }
	}

    TipeCert.create(tipecert, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while creating the TipeCert."
            });
        else res.send(data);
    }, req.cabang_id, req.user_id);
};

exports.findAll = (req, res) => {
    TipeCert.getAll(req.query, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while retrieving tipecertnames."
            });
        else res.send(data);
    }, req.cabang_id);
};

exports.findOne = (req, res) => {
    TipeCert.findById(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found TipeCert with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Error retrieving TipeCert with id " + req.params.id
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


    TipeCert.updateById(
        req.params.id,
        req.fields,
        (err, data) => {
            if (err) {
                if (err.kind === "not_found") {
                    res.status(404).send({
                        message: `Not found TipeCert with id ${req.params.id}.`
                    });
                } else {
                    res.status(500).send({
                        message: "Error updating TipeCert with id " + req.params.id
                    });
                }
            } else res.send(data);
        },
        req.user_id
    );
};

exports.delete = (req, res) => {
    TipeCert.remove(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found TipeCert with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Could not delete TipeCert with id " + req.params.id
                });
            }
        } else res.send({ message: `TipeCert was deleted successfully!` });
    });
};


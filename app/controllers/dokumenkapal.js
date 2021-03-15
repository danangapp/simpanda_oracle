const DokumenKapal = require("../models/dokumenkapal.js");
const f = require('./function');

exports.create = (req, res) => {
    if (!req.fields) {
        res.status(400).send({
            message: "Content can not be empty!"
        });
    }

    var dokumenkapal = {
        nama: req.fields.nama,
    };

	var used = {};
	for (var i in dokumenkapal) {
	    if (!dokumenkapal[i]) {
	        delete dokumenkapal[i];
	    }
	}

    DokumenKapal.create(dokumenkapal, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while creating the DokumenKapal."
            });
        else res.send(data);
    }, req.cabang_id);
};

exports.findAll = (req, res) => {
    DokumenKapal.getAll(req.query, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while retrieving dokumenkapalnames."
            });
        else res.send(data);
    }, req.cabang_id);
};

exports.findOne = (req, res) => {
    DokumenKapal.findById(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found DokumenKapal with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Error retrieving DokumenKapal with id " + req.params.id
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


    DokumenKapal.updateById(
        req.params.id,
        req.fields,
        (err, data) => {
            if (err) {
                if (err.kind === "not_found") {
                    res.status(404).send({
                        message: `Not found DokumenKapal with id ${req.params.id}.`
                    });
                } else {
                    res.status(500).send({
                        message: "Error updating DokumenKapal with id " + req.params.id
                    });
                }
            } else res.send(data);
        }
    );
};

exports.delete = (req, res) => {
    DokumenKapal.remove(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found DokumenKapal with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Could not delete DokumenKapal with id " + req.params.id
                });
            }
        } else res.send({ message: `DokumenKapal was deleted successfully!` });
    });
};


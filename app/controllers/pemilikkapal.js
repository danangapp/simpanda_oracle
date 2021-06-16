const PemilikKapal = require("../models/pemilikkapal.js");
const f = require('./function');

exports.create = (req, res) => {
    if (!req.fields) {
        res.status(400).send({
            message: "Content can not be empty!"
        });
    }

    var pemilikkapal = {
        nama: req.fields.nama,
    };

	var used = {};
	for (var i in pemilikkapal) {
	    if (pemilikkapal[i] == undefined) {
	        delete pemilikkapal[i];
	    }
	}

    PemilikKapal.create(pemilikkapal, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while creating the PemilikKapal."
            });
        else res.send(data);
    }, req.cabang_id, req.user_id);
};

exports.findAll = (req, res) => {
    PemilikKapal.getAll(req.query, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while retrieving pemilikkapalnames."
            });
        else res.send(data);
    }, req.cabang_id);
};

exports.findOne = (req, res) => {
    PemilikKapal.findById(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found PemilikKapal with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Error retrieving PemilikKapal with id " + req.params.id
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


    PemilikKapal.updateById(
        req.params.id,
        req.fields,
        (err, data) => {
            if (err) {
                if (err.kind === "not_found") {
                    res.status(404).send({
                        message: `Not found PemilikKapal with id ${req.params.id}.`
                    });
                } else {
                    res.status(500).send({
                        message: "Error updating PemilikKapal with id " + req.params.id
                    });
                }
            } else res.send(data);
        },
        req.user_id
    );
};

exports.delete = (req, res) => {
    PemilikKapal.remove(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found PemilikKapal with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Could not delete PemilikKapal with id " + req.params.id
                });
            }
        } else res.send({ message: `PemilikKapal was deleted successfully!` });
    });
};


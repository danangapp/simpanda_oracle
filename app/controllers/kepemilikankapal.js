const KepemilikanKapal = require("../models/kepemilikankapal.js");
const f = require('./function');

exports.create = (req, res) => {
    if (!req.fields) {
        res.status(400).send({
            message: "Content can not be empty!"
        });
    }

    var kepemilikankapal = {
        nama: req.fields.nama,
    };

	var used = {};
	for (var i in kepemilikankapal) {
	    if (kepemilikankapal[i] == undefined) {
	        delete kepemilikankapal[i];
	    }
	}

    KepemilikanKapal.create(kepemilikankapal, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while creating the KepemilikanKapal."
            });
        else res.send(data);
    }, req.cabang_id, req.user_id);
};

exports.findAll = (req, res) => {
    KepemilikanKapal.getAll(req.query, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while retrieving kepemilikankapalnames."
            });
        else res.send(data);
    }, req.cabang_id);
};

exports.findOne = (req, res) => {
    KepemilikanKapal.findById(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found KepemilikanKapal with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Error retrieving KepemilikanKapal with id " + req.params.id
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


    KepemilikanKapal.updateById(
        req.params.id,
        req.fields,
        (err, data) => {
            if (err) {
                if (err.kind === "not_found") {
                    res.status(404).send({
                        message: `Not found KepemilikanKapal with id ${req.params.id}.`
                    });
                } else {
                    res.status(500).send({
                        message: "Error updating KepemilikanKapal with id " + req.params.id
                    });
                }
            } else res.send(data);
        },
        req.user_id
    );
};

exports.delete = (req, res) => {
    KepemilikanKapal.remove(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found KepemilikanKapal with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Could not delete KepemilikanKapal with id " + req.params.id
                });
            }
        } else res.send({ message: `KepemilikanKapal was deleted successfully!` });
    });
};


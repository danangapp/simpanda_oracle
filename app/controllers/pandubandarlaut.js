const PanduBandarLaut = require("../models/pandubandarlaut.js");
const f = require('./function');

exports.create = (req, res) => {
    if (!req.fields) {
        res.status(400).send({
            message: "Content can not be empty!"
        });
    }

    var pandubandarlaut = {
        nama: req.fields.nama,
    };

	var used = {};
	for (var i in pandubandarlaut) {
	    if (pandubandarlaut[i] == undefined) {
	        delete pandubandarlaut[i];
	    }
	}

    PanduBandarLaut.create(pandubandarlaut, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while creating the PanduBandarLaut."
            });
        else res.send(data);
    }, req.cabang_id, req.user_id);
};

exports.findAll = (req, res) => {
    PanduBandarLaut.getAll(req.query, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while retrieving pandubandarlautnames."
            });
        else res.send(data);
    }, req.cabang_id);
};

exports.findOne = (req, res) => {
    PanduBandarLaut.findById(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found PanduBandarLaut with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Error retrieving PanduBandarLaut with id " + req.params.id
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


    PanduBandarLaut.updateById(
        req.params.id,
        req.fields,
        (err, data) => {
            if (err) {
                if (err.kind === "not_found") {
                    res.status(404).send({
                        message: `Not found PanduBandarLaut with id ${req.params.id}.`
                    });
                } else {
                    res.status(500).send({
                        message: "Error updating PanduBandarLaut with id " + req.params.id
                    });
                }
            } else res.send(data);
        },
        req.user_id
    );
};

exports.delete = (req, res) => {
    PanduBandarLaut.remove(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found PanduBandarLaut with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Could not delete PanduBandarLaut with id " + req.params.id
                });
            }
        } else res.send({ message: `PanduBandarLaut was deleted successfully!` });
    });
};


const TipePersonil = require("../models/tipepersonil.js");
const f = require('./function');

exports.create = (req, res) => {
    if (!req.fields) {
        res.status(400).send({
            message: "Content can not be empty!"
        });
    }

    var tipepersonil = {
        nama: req.fields.nama,
        flag: req.fields.flag,
    };

	var used = {};
	for (var i in tipepersonil) {
	    if (!tipepersonil[i]) {
	        delete tipepersonil[i];
	    }
	}

    TipePersonil.create(tipepersonil, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while creating the TipePersonil."
            });
        else res.send(data);
    });
};

exports.findAll = (req, res) => {
    TipePersonil.getAll(req.query, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while retrieving tipepersonilnames."
            });
        else res.send(data);
    }, req.cabang_id);
};

exports.findOne = (req, res) => {
    TipePersonil.findById(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found TipePersonil with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Error retrieving TipePersonil with id " + req.params.id
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


    TipePersonil.updateById(
        req.params.id,
        req.fields,
        (err, data) => {
            if (err) {
                if (err.kind === "not_found") {
                    res.status(404).send({
                        message: `Not found TipePersonil with id ${req.params.id}.`
                    });
                } else {
                    res.status(500).send({
                        message: "Error updating TipePersonil with id " + req.params.id
                    });
                }
            } else res.send(data);
        }
    );
};

exports.delete = (req, res) => {
    TipePersonil.remove(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found TipePersonil with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Could not delete TipePersonil with id " + req.params.id
                });
            }
        } else res.send({ message: `TipePersonil was deleted successfully!` });
    });
};


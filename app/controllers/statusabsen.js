const StatusAbsen = require("../models/statusabsen.js");
const f = require('./function');

exports.create = (req, res) => {
    if (!req.fields) {
        res.status(400).send({
            message: "Content can not be empty!"
        });
    }

    var statusabsen = {
        nama: req.fields.nama,
    };

	var used = {};
	for (var i in statusabsen) {
	    if (!statusabsen[i]) {
	        delete statusabsen[i];
	    }
	}

    StatusAbsen.create(statusabsen, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while creating the StatusAbsen."
            });
        else res.send(data);
    });
};

exports.findAll = (req, res) => {
    StatusAbsen.getAll(req.query, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while retrieving statusabsennames."
            });
        else res.send(data);
    });
};

exports.findOne = (req, res) => {
    StatusAbsen.findById(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found StatusAbsen with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Error retrieving StatusAbsen with id " + req.params.id
                });
            }
        } else res.send(data);
    });
};

exports.update = (req, res) => {
    // Validate Request
    if (!req.fields) {
        res.status(400).send({
            message: "Content can not be empty!"
        });
    }


    StatusAbsen.updateById(
        req.params.id,
        req.fields,
        (err, data) => {
            if (err) {
                if (err.kind === "not_found") {
                    res.status(404).send({
                        message: `Not found StatusAbsen with id ${req.params.id}.`
                    });
                } else {
                    res.status(500).send({
                        message: "Error updating StatusAbsen with id " + req.params.id
                    });
                }
            } else res.send(data);
        }
    );
};

exports.delete = (req, res) => {
    StatusAbsen.remove(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found StatusAbsen with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Could not delete StatusAbsen with id " + req.params.id
                });
            }
        } else res.send({ message: `StatusAbsen was deleted successfully!` });
    });
};


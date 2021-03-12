const StatusKepegawaian = require("../models/statuskepegawaian.js");
const f = require('./function');

exports.create = (req, res) => {
    if (!req.fields) {
        res.status(400).send({
            message: "Content can not be empty!"
        });
    }

    var statuskepegawaian = {
        nama: req.fields.nama,
    };

	var used = {};
	for (var i in statuskepegawaian) {
	    if (!statuskepegawaian[i]) {
	        delete statuskepegawaian[i];
	    }
	}

    StatusKepegawaian.create(statuskepegawaian, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while creating the StatusKepegawaian."
            });
        else res.send(data);
    });
};

exports.findAll = (req, res) => {
    StatusKepegawaian.getAll(req.query, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while retrieving statuskepegawaiannames."
            });
        else res.send(data);
    }, req.cabang_id);
};

exports.findOne = (req, res) => {
    StatusKepegawaian.findById(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found StatusKepegawaian with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Error retrieving StatusKepegawaian with id " + req.params.id
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


    StatusKepegawaian.updateById(
        req.params.id,
        req.fields,
        (err, data) => {
            if (err) {
                if (err.kind === "not_found") {
                    res.status(404).send({
                        message: `Not found StatusKepegawaian with id ${req.params.id}.`
                    });
                } else {
                    res.status(500).send({
                        message: "Error updating StatusKepegawaian with id " + req.params.id
                    });
                }
            } else res.send(data);
        }
    );
};

exports.delete = (req, res) => {
    StatusKepegawaian.remove(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found StatusKepegawaian with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Could not delete StatusKepegawaian with id " + req.params.id
                });
            }
        } else res.send({ message: `StatusKepegawaian was deleted successfully!` });
    });
};


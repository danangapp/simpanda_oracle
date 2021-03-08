const Action = require("../models/action.js");
const f = require('./function');

exports.create = (req, res) => {
    if (!req.fields) {
        res.status(400).send({
            message: "Content can not be empty!"
        });
    }

    var action = {
        nama: req.fields.nama,
    };

	var used = {};
	for (var i in action) {
	    if (!action[i]) {
	        delete action[i];
	    }
	}

    Action.create(action, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while creating the Action."
            });
        else res.send(data);
    });
};

exports.findAll = (req, res) => {
    Action.getAll(req.query, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while retrieving actionnames."
            });
        else res.send(data);
    });
};

exports.findOne = (req, res) => {
    Action.findById(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found Action with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Error retrieving Action with id " + req.params.id
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


    Action.updateById(
        req.params.id,
        req.fields,
        (err, data) => {
            if (err) {
                if (err.kind === "not_found") {
                    res.status(404).send({
                        message: `Not found Action with id ${req.params.id}.`
                    });
                } else {
                    res.status(500).send({
                        message: "Error updating Action with id " + req.params.id
                    });
                }
            } else res.send(data);
        }
    );
};

exports.delete = (req, res) => {
    Action.remove(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found Action with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Could not delete Action with id " + req.params.id
                });
            }
        } else res.send({ message: `Action was deleted successfully!` });
    });
};


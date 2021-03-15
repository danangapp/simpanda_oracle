const StatusIjazah = require("../models/statusijazah.js");
const f = require('./function');

exports.create = (req, res) => {
    if (!req.fields) {
        res.status(400).send({
            message: "Content can not be empty!"
        });
    }

    var statusijazah = {
        nama: req.fields.nama,
    };

	var used = {};
	for (var i in statusijazah) {
	    if (!statusijazah[i]) {
	        delete statusijazah[i];
	    }
	}

    StatusIjazah.create(statusijazah, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while creating the StatusIjazah."
            });
        else res.send(data);
    }, req.cabang_id, req.user_id);
};

exports.findAll = (req, res) => {
    StatusIjazah.getAll(req.query, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while retrieving statusijazahnames."
            });
        else res.send(data);
    }, req.cabang_id);
};

exports.findOne = (req, res) => {
    StatusIjazah.findById(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found StatusIjazah with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Error retrieving StatusIjazah with id " + req.params.id
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


    StatusIjazah.updateById(
        req.params.id,
        req.fields,
        (err, data) => {
            if (err) {
                if (err.kind === "not_found") {
                    res.status(404).send({
                        message: `Not found StatusIjazah with id ${req.params.id}.`
                    });
                } else {
                    res.status(500).send({
                        message: "Error updating StatusIjazah with id " + req.params.id
                    });
                }
            } else res.send(data);
        },
        req.user_id
    );
};

exports.delete = (req, res) => {
    StatusIjazah.remove(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found StatusIjazah with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Could not delete StatusIjazah with id " + req.params.id
                });
            }
        } else res.send({ message: `StatusIjazah was deleted successfully!` });
    });
};


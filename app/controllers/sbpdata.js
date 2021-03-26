const SbpData = require("../models/sbpdata.js");
const f = require('./function');

exports.create = (req, res) => {
    if (!req.fields) {
        res.status(400).send({
            message: "Content can not be empty!"
        });
    }

    var sbpdata = {
        question_id: req.fields.question_id,
        answer: req.fields.answer,
        sarana_bantu_pemandu_id: req.fields.sarana_bantu_pemandu_id,
    };

	var used = {};
	for (var i in sbpdata) {
	    if (sbpdata[i] == undefined) {
	        delete sbpdata[i];
	    }
	}

    SbpData.create(sbpdata, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while creating the SbpData."
            });
        else res.send(data);
    }, req.cabang_id, req.user_id);
};

exports.findAll = (req, res) => {
    SbpData.getAll(req.query, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while retrieving sbpdatanames."
            });
        else res.send(data);
    }, req.cabang_id);
};

exports.findOne = (req, res) => {
    SbpData.findById(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found SbpData with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Error retrieving SbpData with id " + req.params.id
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


    SbpData.updateById(
        req.params.id,
        req.fields,
        (err, data) => {
            if (err) {
                if (err.kind === "not_found") {
                    res.status(404).send({
                        message: `Not found SbpData with id ${req.params.id}.`
                    });
                } else {
                    res.status(500).send({
                        message: "Error updating SbpData with id " + req.params.id
                    });
                }
            } else res.send(data);
        },
        req.user_id
    );
};

exports.delete = (req, res) => {
    SbpData.remove(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found SbpData with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Could not delete SbpData with id " + req.params.id
                });
            }
        } else res.send({ message: `SbpData was deleted successfully!` });
    });
};


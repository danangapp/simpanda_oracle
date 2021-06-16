const ArmadaJagaCopy1 = require("../models/armadajagacopy1.js");
const f = require('./function');

exports.create = (req, res) => {
    if (!req.fields) {
        res.status(400).send({
            message: "Content can not be empty!"
        });
    }

    var armadajagacopy1 = {
        tipe_asset_id: req.fields.tipe_asset_id,
        asset_kapal_id: req.fields.asset_kapal_id,
        armada_schedule_id: req.fields.armada_schedule_id,
    };

	var used = {};
	for (var i in armadajagacopy1) {
	    if (armadajagacopy1[i] == undefined) {
	        delete armadajagacopy1[i];
	    }
	}

    ArmadaJagaCopy1.create(armadajagacopy1, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while creating the ArmadaJagaCopy1."
            });
        else res.send(data);
    }, req.cabang_id, req.user_id);
};

exports.findAll = (req, res) => {
    ArmadaJagaCopy1.getAll(req.query, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while retrieving armadajagacopy1names."
            });
        else res.send(data);
    }, req.cabang_id);
};

exports.findOne = (req, res) => {
    ArmadaJagaCopy1.findById(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found ArmadaJagaCopy1 with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Error retrieving ArmadaJagaCopy1 with id " + req.params.id
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


    ArmadaJagaCopy1.updateById(
        req.params.id,
        req.fields,
        (err, data) => {
            if (err) {
                if (err.kind === "not_found") {
                    res.status(404).send({
                        message: `Not found ArmadaJagaCopy1 with id ${req.params.id}.`
                    });
                } else {
                    res.status(500).send({
                        message: "Error updating ArmadaJagaCopy1 with id " + req.params.id
                    });
                }
            } else res.send(data);
        },
        req.user_id
    );
};

exports.delete = (req, res) => {
    ArmadaJagaCopy1.remove(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found ArmadaJagaCopy1 with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Could not delete ArmadaJagaCopy1 with id " + req.params.id
                });
            }
        } else res.send({ message: `ArmadaJagaCopy1 was deleted successfully!` });
    });
};


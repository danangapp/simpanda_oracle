const ArmadaSchedule = require("../models/armadaschedule.js");
const f = require('./function');

exports.create = (req, res) => {
    if (!req.fields) {
        res.status(400).send({
            message: "Content can not be empty!"
        });
    }

    var armadaschedule = {
        date: f.toDate(req.fields.date),
        cabang_id: req.fields.cabang_id,
        tipe_asset_id: req.fields.tipe_asset_id,
        asset_kapal_id: req.fields.asset_kapal_id,
        status: req.fields.status,
        jam_pengoperasian: req.fields.jam_pengoperasian,
        reliability: req.fields.reliability,
        keterangan: req.fields.keterangan,
        armada_jaga_id: req.fields.armada_jaga_id,
        hadir: req.fields.hadir,
        tidak_hadir: req.fields.tidak_hadir,
    };

	var used = {};
	for (var i in armadaschedule) {
	    if (!armadaschedule[i]) {
	        delete armadaschedule[i];
	    }
	}

    ArmadaSchedule.create(armadaschedule, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while creating the ArmadaSchedule."
            });
        else res.send(data);
    }, req.cabang_id, req.user_id);
};

exports.findAll = (req, res) => {
    ArmadaSchedule.getAll(req.query, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while retrieving armadaschedulenames."
            });
        else res.send(data);
    }, req.cabang_id);
};

exports.findOne = (req, res) => {
    ArmadaSchedule.findById(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found ArmadaSchedule with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Error retrieving ArmadaSchedule with id " + req.params.id
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

	req.fields.date = f.toDate(req.fields.date);

    ArmadaSchedule.updateById(
        req.params.id,
        req.fields,
        (err, data) => {
            if (err) {
                if (err.kind === "not_found") {
                    res.status(404).send({
                        message: `Not found ArmadaSchedule with id ${req.params.id}.`
                    });
                } else {
                    res.status(500).send({
                        message: "Error updating ArmadaSchedule with id " + req.params.id
                    });
                }
            } else res.send(data);
        },
        req.user_id
    );
};

exports.delete = (req, res) => {
    ArmadaSchedule.remove(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found ArmadaSchedule with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Could not delete ArmadaSchedule with id " + req.params.id
                });
            }
        } else res.send({ message: `ArmadaSchedule was deleted successfully!` });
    });
};


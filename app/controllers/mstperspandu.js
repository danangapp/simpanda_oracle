const MstPersPandu = require("../models/mstperspandu.js");
const f = require('./function');

exports.create = (req, res) => {
    if (!req.fields) {
        res.status(400).send({
            message: "Content can not be empty!"
        });
    }

    var mstperspandu = {
        KD_PERS_PANDU: req.fields.KD_PERS_PANDU,
        NM_PERS_PANDU: req.fields.NM_PERS_PANDU,
        NIPP: req.fields.NIPP,
        KELAS: req.fields.KELAS,
        KD_CABANG: req.fields.KD_CABANG,
        enable: req.fields.enable,
        KD_PERS_PANDU_1: req.fields.KD_PERS_PANDU_1,
    };

	var used = {};
	for (var i in mstperspandu) {
	    if (!mstperspandu[i]) {
	        delete mstperspandu[i];
	    }
	}

    MstPersPandu.create(mstperspandu, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while creating the MstPersPandu."
            });
        else res.send(data);
    });
};

exports.findAll = (req, res) => {
    MstPersPandu.getAll(req.query, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while retrieving mstperspandunames."
            });
        else res.send(data);
    }, req.cabang_id);
};

exports.findOne = (req, res) => {
    MstPersPandu.findById(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found MstPersPandu with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Error retrieving MstPersPandu with id " + req.params.id
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


    MstPersPandu.updateById(
        req.params.id,
        req.fields,
        (err, data) => {
            if (err) {
                if (err.kind === "not_found") {
                    res.status(404).send({
                        message: `Not found MstPersPandu with id ${req.params.id}.`
                    });
                } else {
                    res.status(500).send({
                        message: "Error updating MstPersPandu with id " + req.params.id
                    });
                }
            } else res.send(data);
        }
    );
};

exports.delete = (req, res) => {
    MstPersPandu.remove(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found MstPersPandu with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Could not delete MstPersPandu with id " + req.params.id
                });
            }
        } else res.send({ message: `MstPersPandu was deleted successfully!` });
    });
};


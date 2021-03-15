const MstKapalCabangPersPandu = require("../models/mstkapalcabangperspandu.js");
const f = require('./function');

exports.create = (req, res) => {
    if (!req.fields) {
        res.status(400).send({
            message: "Content can not be empty!"
        });
    }

    var mstkapalcabangperspandu = {
        KD_PERS_PANDU: req.fields.KD_PERS_PANDU,
        NM_PERS_PANDU: req.fields.NM_PERS_PANDU,
        NIPP: req.fields.NIPP,
        KELAS: req.fields.KELAS,
        KD_CABANG: req.fields.KD_CABANG,
        ENABLE: req.fields.ENABLE,
        KD_PERS_PANDU_CBG: req.fields.KD_PERS_PANDU_CBG,
    };

	var used = {};
	for (var i in mstkapalcabangperspandu) {
	    if (!mstkapalcabangperspandu[i]) {
	        delete mstkapalcabangperspandu[i];
	    }
	}

    MstKapalCabangPersPandu.create(mstkapalcabangperspandu, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while creating the MstKapalCabangPersPandu."
            });
        else res.send(data);
    }, req.cabang_id);
};

exports.findAll = (req, res) => {
    MstKapalCabangPersPandu.getAll(req.query, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while retrieving mstkapalcabangperspandunames."
            });
        else res.send(data);
    }, req.cabang_id);
};

exports.findOne = (req, res) => {
    MstKapalCabangPersPandu.findById(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found MstKapalCabangPersPandu with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Error retrieving MstKapalCabangPersPandu with id " + req.params.id
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


    MstKapalCabangPersPandu.updateById(
        req.params.id,
        req.fields,
        (err, data) => {
            if (err) {
                if (err.kind === "not_found") {
                    res.status(404).send({
                        message: `Not found MstKapalCabangPersPandu with id ${req.params.id}.`
                    });
                } else {
                    res.status(500).send({
                        message: "Error updating MstKapalCabangPersPandu with id " + req.params.id
                    });
                }
            } else res.send(data);
        }
    );
};

exports.delete = (req, res) => {
    MstKapalCabangPersPandu.remove(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found MstKapalCabangPersPandu with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Could not delete MstKapalCabangPersPandu with id " + req.params.id
                });
            }
        } else res.send({ message: `MstKapalCabangPersPandu was deleted successfully!` });
    });
};


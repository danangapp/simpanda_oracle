const MstFasilitas = require("../models/mstfasilitas.js");
const f = require('./function');

exports.create = (req, res) => {
    if (!req.fields) {
        res.status(400).send({
            message: "Content can not be empty!"
        });
    }

    var mstfasilitas = {
        KD_FAS: req.fields.KD_FAS,
        NM_FAS: req.fields.NM_FAS,
        DAYA: req.fields.DAYA,
        KD_CABANG: req.fields.KD_CABANG,
        enable: req.fields.enable,
        DAYA2: req.fields.DAYA2,
        STATUS_MILIK: req.fields.STATUS_MILIK,
        ASSET_NUMBER: req.fields.ASSET_NUMBER,
        KD_PUSPEL_JAI: req.fields.KD_PUSPEL_JAI,
        NEW_PUSPEL_JAI: req.fields.NEW_PUSPEL_JAI,
        NEW_ASSET_JAI: req.fields.NEW_ASSET_JAI,
    };

	var used = {};
	for (var i in mstfasilitas) {
	    if (!mstfasilitas[i]) {
	        delete mstfasilitas[i];
	    }
	}

    MstFasilitas.create(mstfasilitas, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while creating the MstFasilitas."
            });
        else res.send(data);
    }, req.cabang_id, req.user_id);
};

exports.findAll = (req, res) => {
    MstFasilitas.getAll(req.query, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while retrieving mstfasilitasnames."
            });
        else res.send(data);
    }, req.cabang_id);
};

exports.findOne = (req, res) => {
    MstFasilitas.findById(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found MstFasilitas with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Error retrieving MstFasilitas with id " + req.params.id
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


    MstFasilitas.updateById(
        req.params.id,
        req.fields,
        (err, data) => {
            if (err) {
                if (err.kind === "not_found") {
                    res.status(404).send({
                        message: `Not found MstFasilitas with id ${req.params.id}.`
                    });
                } else {
                    res.status(500).send({
                        message: "Error updating MstFasilitas with id " + req.params.id
                    });
                }
            } else res.send(data);
        },
        req.user_id
    );
};

exports.delete = (req, res) => {
    MstFasilitas.remove(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found MstFasilitas with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Could not delete MstFasilitas with id " + req.params.id
                });
            }
        } else res.send({ message: `MstFasilitas was deleted successfully!` });
    });
};


const MstBktKepil = require("../models/mstbktkepil.js");
const f = require('./function');

exports.create = (req, res) => {
    if (!req.fields) {
        res.status(400).send({
            message: "Content can not be empty!"
        });
    }

    var mstbktkepil = {
        NO_BKT_KEPIL: req.fields.NO_BKT_KEPIL,
        TGL_FORM_BKT_KEPIL: req.fields.TGL_FORM_BKT_KEPIL,
        NO_UKK: req.fields.NO_UKK,
        KD_PPKB: req.fields.KD_PPKB,
        KD_KADE: req.fields.KD_KADE,
        KD_MST_KEPIL: req.fields.KD_MST_KEPIL,
        KD_FAS: req.fields.KD_FAS,
        TGL_JAM_BKT_KEPIL: req.fields.TGL_JAM_BKT_KEPIL,
        TGL_JAM_ENTRY: req.fields.TGL_JAM_ENTRY,
        JAM_TOLAK: req.fields.JAM_TOLAK,
        JAM_TIBA: req.fields.JAM_TIBA,
        USERID_BKT_KEPIL: req.fields.USERID_BKT_KEPIL,
        PPKB_KE: req.fields.PPKB_KE,
        BIAYA_KEPIL: req.fields.BIAYA_KEPIL,
        KD_MORING: req.fields.KD_MORING,
        KOREKSI_KE: req.fields.KOREKSI_KE,
        PPKB_KE_ORIGIN: req.fields.PPKB_KE_ORIGIN,
        PPKB_KE_ORIGIN_AKHIR: req.fields.PPKB_KE_ORIGIN_AKHIR,
    };

	var used = {};
	for (var i in mstbktkepil) {
	    if (mstbktkepil[i] == undefined) {
	        delete mstbktkepil[i];
	    }
	}

    MstBktKepil.create(mstbktkepil, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while creating the MstBktKepil."
            });
        else res.send(data);
    }, req.cabang_id, req.user_id);
};

exports.findAll = (req, res) => {
    MstBktKepil.getAll(req.query, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while retrieving mstbktkepilnames."
            });
        else res.send(data);
    }, req.cabang_id);
};

exports.findOne = (req, res) => {
    MstBktKepil.findById(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found MstBktKepil with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Error retrieving MstBktKepil with id " + req.params.id
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


    MstBktKepil.updateById(
        req.params.id,
        req.fields,
        (err, data) => {
            if (err) {
                if (err.kind === "not_found") {
                    res.status(404).send({
                        message: `Not found MstBktKepil with id ${req.params.id}.`
                    });
                } else {
                    res.status(500).send({
                        message: "Error updating MstBktKepil with id " + req.params.id
                    });
                }
            } else res.send(data);
        },
        req.user_id
    );
};

exports.delete = (req, res) => {
    MstBktKepil.remove(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found MstBktKepil with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Could not delete MstBktKepil with id " + req.params.id
                });
            }
        } else res.send({ message: `MstBktKepil was deleted successfully!` });
    });
};


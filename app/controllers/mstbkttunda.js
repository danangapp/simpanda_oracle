const MstBktTunda = require("../models/mstbkttunda.js");
const f = require('./function');

exports.create = (req, res) => {
    if (!req.fields) {
        res.status(400).send({
            message: "Content can not be empty!"
        });
    }

    var mstbkttunda = {
        NO_BKT_TUNDA: req.fields.NO_BKT_TUNDA,
        TGL_FORM_BKT_TUNDA: req.fields.TGL_FORM_BKT_TUNDA,
        NO_UKK: req.fields.NO_UKK,
        KD_PPKB: req.fields.KD_PPKB,
        TUNDA_DARI: req.fields.TUNDA_DARI,
        TUNDA_KE: req.fields.TUNDA_KE,
        TGL_JAM_ENTRY: req.fields.TGL_JAM_ENTRY,
        USERID_BKT_TUNDA: req.fields.USERID_BKT_TUNDA,
        PPKB_KE: req.fields.PPKB_KE,
        BIAYA_TUNDA: req.fields.BIAYA_TUNDA,
        TGL_JAM_MTUNDA: req.fields.TGL_JAM_MTUNDA,
        TGL_JAM_STUNDA: req.fields.TGL_JAM_STUNDA,
        NO_BKT_PANDU: req.fields.NO_BKT_PANDU,
        KD_FAS_1: req.fields.KD_FAS_1,
        KD_FAS_2: req.fields.KD_FAS_2,
        KD_FAS_3: req.fields.KD_FAS_3,
        KD_KAPAL_1: req.fields.KD_KAPAL_1,
        KD_KAPAL_2: req.fields.KD_KAPAL_2,
        KD_KAPAL_3: req.fields.KD_KAPAL_3,
        TGL_JAM_TIBA_KPL1: req.fields.TGL_JAM_TIBA_KPL1,
        TGL_JAM_TIBA_KPL2: req.fields.TGL_JAM_TIBA_KPL2,
        TGL_JAM_TIBA_KPL3: req.fields.TGL_JAM_TIBA_KPL3,
        TGL_JAM_BRNGKT_KPL1: req.fields.TGL_JAM_BRNGKT_KPL1,
        TGL_JAM_BRNGKT_KPL2: req.fields.TGL_JAM_BRNGKT_KPL2,
        TGL_JAM_BRNGKT_KPL3: req.fields.TGL_JAM_BRNGKT_KPL3,
        KOREKSI_KE: req.fields.KOREKSI_KE,
        PPKB_KE_ORIGIN: req.fields.PPKB_KE_ORIGIN,
        PPKB_KE_ORIGIN_AKHIR: req.fields.PPKB_KE_ORIGIN_AKHIR,
        KD_KAPAL_4: req.fields.KD_KAPAL_4,
        KD_KAPAL_5: req.fields.KD_KAPAL_5,
        KD_KAPAL_6: req.fields.KD_KAPAL_6,
        TGL_JAM_TIBA_KPL4: req.fields.TGL_JAM_TIBA_KPL4,
        TGL_JAM_TIBA_KPL5: req.fields.TGL_JAM_TIBA_KPL5,
        TGL_JAM_TIBA_KPL6: req.fields.TGL_JAM_TIBA_KPL6,
        TGL_JAM_BRNGKT_KPL4: req.fields.TGL_JAM_BRNGKT_KPL4,
        TGL_JAM_BRNGKT_KPL5: req.fields.TGL_JAM_BRNGKT_KPL5,
        TGL_JAM_BRNGKT_KPL6: req.fields.TGL_JAM_BRNGKT_KPL6,
        KD_FAS_4: req.fields.KD_FAS_4,
        KD_FAS_5: req.fields.KD_FAS_5,
        KD_FAS_6: req.fields.KD_FAS_6,
    };

	var used = {};
	for (var i in mstbkttunda) {
	    if (!mstbkttunda[i]) {
	        delete mstbkttunda[i];
	    }
	}

    MstBktTunda.create(mstbkttunda, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while creating the MstBktTunda."
            });
        else res.send(data);
    });
};

exports.findAll = (req, res) => {
    MstBktTunda.getAll(req.query, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while retrieving mstbkttundanames."
            });
        else res.send(data);
    }, req.cabang_id);
};

exports.findOne = (req, res) => {
    MstBktTunda.findById(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found MstBktTunda with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Error retrieving MstBktTunda with id " + req.params.id
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


    MstBktTunda.updateById(
        req.params.id,
        req.fields,
        (err, data) => {
            if (err) {
                if (err.kind === "not_found") {
                    res.status(404).send({
                        message: `Not found MstBktTunda with id ${req.params.id}.`
                    });
                } else {
                    res.status(500).send({
                        message: "Error updating MstBktTunda with id " + req.params.id
                    });
                }
            } else res.send(data);
        }
    );
};

exports.delete = (req, res) => {
    MstBktTunda.remove(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found MstBktTunda with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Could not delete MstBktTunda with id " + req.params.id
                });
            }
        } else res.send({ message: `MstBktTunda was deleted successfully!` });
    });
};


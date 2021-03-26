const MstKapalCabangBktTunda = require("../models/mstkapalcabangbkttunda.js");
const f = require('./function');

exports.create = (req, res) => {
    if (!req.fields) {
        res.status(400).send({
            message: "Content can not be empty!"
        });
    }

    var mstkapalcabangbkttunda = {
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
        KD_KAPAL_4: req.fields.KD_KAPAL_4,
        TGL_JAM_TIBA_KPL4: req.fields.TGL_JAM_TIBA_KPL4,
        TGL_JAM_BRNGKT_KPL4: req.fields.TGL_JAM_BRNGKT_KPL4,
        TUNDA_X: req.fields.TUNDA_X,
        EMERGENCY: req.fields.EMERGENCY,
        EMERGENCY_KPL1: req.fields.EMERGENCY_KPL1,
        EMERGENCY_KPL2: req.fields.EMERGENCY_KPL2,
        EMERGENCY_KPL3: req.fields.EMERGENCY_KPL3,
        EMERGENCY_KPL4: req.fields.EMERGENCY_KPL4,
        BERMUATAN: req.fields.BERMUATAN,
        FLAG_LS: req.fields.FLAG_LS,
        EMERGENCY_KPL6: req.fields.EMERGENCY_KPL6,
        KD_KAPAL_5: req.fields.KD_KAPAL_5,
        TGL_JAM_TIBA_KPL5: req.fields.TGL_JAM_TIBA_KPL5,
        TGL_JAM_BRNGKT_KPL5: req.fields.TGL_JAM_BRNGKT_KPL5,
        EMERGENCY_KPL5: req.fields.EMERGENCY_KPL5,
        KD_KAPAL_6: req.fields.KD_KAPAL_6,
        TGL_JAM_TIBA_KPL6: req.fields.TGL_JAM_TIBA_KPL6,
        TGL_JAM_BRNGKT_KPL6: req.fields.TGL_JAM_BRNGKT_KPL6,
        TGL_JAM_MOVE_KPL1: req.fields.TGL_JAM_MOVE_KPL1,
        TGL_JAM_MOVE_KPL2: req.fields.TGL_JAM_MOVE_KPL2,
        TGL_JAM_MOVE_KPL3: req.fields.TGL_JAM_MOVE_KPL3,
        TGL_JAM_MOVE_KPL4: req.fields.TGL_JAM_MOVE_KPL4,
        TGL_JAM_MOVE_KPL5: req.fields.TGL_JAM_MOVE_KPL5,
        TGL_JAM_MOVE_KPL6: req.fields.TGL_JAM_MOVE_KPL6,
        TGL_JAM_START_KPL1: req.fields.TGL_JAM_START_KPL1,
        TGL_JAM_START_KPL2: req.fields.TGL_JAM_START_KPL2,
        TGL_JAM_START_KPL3: req.fields.TGL_JAM_START_KPL3,
        TGL_JAM_START_KPL4: req.fields.TGL_JAM_START_KPL4,
        TGL_JAM_START_KPL5: req.fields.TGL_JAM_START_KPL5,
        TGL_JAM_START_KPL6: req.fields.TGL_JAM_START_KPL6,
        CUSTOM13: req.fields.CUSTOM13,
        CUSTOM14: req.fields.CUSTOM14,
        CUSTOM15: req.fields.CUSTOM15,
        CUSTOM16: req.fields.CUSTOM16,
        CUSTOM17: req.fields.CUSTOM17,
        CUSTOM18: req.fields.CUSTOM18,
    };

	var used = {};
	for (var i in mstkapalcabangbkttunda) {
	    if (mstkapalcabangbkttunda[i] == undefined) {
	        delete mstkapalcabangbkttunda[i];
	    }
	}

    MstKapalCabangBktTunda.create(mstkapalcabangbkttunda, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while creating the MstKapalCabangBktTunda."
            });
        else res.send(data);
    }, req.cabang_id, req.user_id);
};

exports.findAll = (req, res) => {
    MstKapalCabangBktTunda.getAll(req.query, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while retrieving mstkapalcabangbkttundanames."
            });
        else res.send(data);
    }, req.cabang_id);
};

exports.findOne = (req, res) => {
    MstKapalCabangBktTunda.findById(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found MstKapalCabangBktTunda with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Error retrieving MstKapalCabangBktTunda with id " + req.params.id
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


    MstKapalCabangBktTunda.updateById(
        req.params.id,
        req.fields,
        (err, data) => {
            if (err) {
                if (err.kind === "not_found") {
                    res.status(404).send({
                        message: `Not found MstKapalCabangBktTunda with id ${req.params.id}.`
                    });
                } else {
                    res.status(500).send({
                        message: "Error updating MstKapalCabangBktTunda with id " + req.params.id
                    });
                }
            } else res.send(data);
        },
        req.user_id
    );
};

exports.delete = (req, res) => {
    MstKapalCabangBktTunda.remove(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found MstKapalCabangBktTunda with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Could not delete MstKapalCabangBktTunda with id " + req.params.id
                });
            }
        } else res.send({ message: `MstKapalCabangBktTunda was deleted successfully!` });
    });
};


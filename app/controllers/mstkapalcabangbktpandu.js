const MstKapalCabangBktPandu = require("../models/mstkapalcabangbktpandu.js");
const f = require('./function');

exports.create = (req, res) => {
    if (!req.fields) {
        res.status(400).send({
            message: "Content can not be empty!"
        });
    }

    var mstkapalcabangbktpandu = {
        NO_BKT_PANDU: req.fields.NO_BKT_PANDU,
        TGL_FORM_BKT_PANDU: req.fields.TGL_FORM_BKT_PANDU,
        NO_UKK: req.fields.NO_UKK,
        KD_PERS_PANDU: req.fields.KD_PERS_PANDU,
        KD_FAS: req.fields.KD_FAS,
        KD_PPKB: req.fields.KD_PPKB,
        KD_NM_NAHKODA: req.fields.KD_NM_NAHKODA,
        PANDU_DARI: req.fields.PANDU_DARI,
        PANDU_KE: req.fields.PANDU_KE,
        TGL_MPANDU: req.fields.TGL_MPANDU,
        TGL_SPANDU: req.fields.TGL_SPANDU,
        KD_GERAKAN: req.fields.KD_GERAKAN,
        KET_PANDU: req.fields.KET_PANDU,
        KD_PERAIRAN: req.fields.KD_PERAIRAN,
        TGL_JAM_ENTRY: req.fields.TGL_JAM_ENTRY,
        JAM_PANDU_NAIK: req.fields.JAM_PANDU_NAIK,
        JAM_KAPAL_GERAK: req.fields.JAM_KAPAL_GERAK,
        JAM_SPANDU: req.fields.JAM_SPANDU,
        JAM_PANDU_TURUN: req.fields.JAM_PANDU_TURUN,
        USERID_BKT_PANDU: req.fields.USERID_BKT_PANDU,
        PPKB_KE: req.fields.PPKB_KE,
        BIAYA_PANDU: req.fields.BIAYA_PANDU,
        NO_UKK1: req.fields.NO_UKK1,
        NO_UKK2: req.fields.NO_UKK2,
        NO_UKK3: req.fields.NO_UKK3,
        DRAFT_DEPAN: req.fields.DRAFT_DEPAN,
        DRAFT_BELAKANG: req.fields.DRAFT_BELAKANG,
        NO_UKK_TK1: req.fields.NO_UKK_TK1,
        NO_UKK_TK2: req.fields.NO_UKK_TK2,
        PPKB_KE_ORIGIN: req.fields.PPKB_KE_ORIGIN,
        KOREKSI_KE: req.fields.KOREKSI_KE,
        PANDU_X: req.fields.PANDU_X,
        CAP_KEAGENAN: req.fields.CAP_KEAGENAN,
        NO_BA: req.fields.NO_BA,
        KETERANGAN_BA: req.fields.KETERANGAN_BA,
        TGL_BA: req.fields.TGL_BA,
        BERMUATAN: req.fields.BERMUATAN,
        STATUS_WS: req.fields.STATUS_WS,
        IS_PAKET: req.fields.IS_PAKET,
        JML_LABUH: req.fields.JML_LABUH,
        SHIFTING: req.fields.SHIFTING,
    };

	var used = {};
	for (var i in mstkapalcabangbktpandu) {
	    if (!mstkapalcabangbktpandu[i]) {
	        delete mstkapalcabangbktpandu[i];
	    }
	}

    MstKapalCabangBktPandu.create(mstkapalcabangbktpandu, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while creating the MstKapalCabangBktPandu."
            });
        else res.send(data);
    });
};

exports.findAll = (req, res) => {
    MstKapalCabangBktPandu.getAll(req.query, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while retrieving mstkapalcabangbktpandunames."
            });
        else res.send(data);
    }, req.cabang_id);
};

exports.findOne = (req, res) => {
    MstKapalCabangBktPandu.findById(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found MstKapalCabangBktPandu with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Error retrieving MstKapalCabangBktPandu with id " + req.params.id
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


    MstKapalCabangBktPandu.updateById(
        req.params.id,
        req.fields,
        (err, data) => {
            if (err) {
                if (err.kind === "not_found") {
                    res.status(404).send({
                        message: `Not found MstKapalCabangBktPandu with id ${req.params.id}.`
                    });
                } else {
                    res.status(500).send({
                        message: "Error updating MstKapalCabangBktPandu with id " + req.params.id
                    });
                }
            } else res.send(data);
        }
    );
};

exports.delete = (req, res) => {
    MstKapalCabangBktPandu.remove(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found MstKapalCabangBktPandu with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Could not delete MstKapalCabangBktPandu with id " + req.params.id
                });
            }
        } else res.send({ message: `MstKapalCabangBktPandu was deleted successfully!` });
    });
};


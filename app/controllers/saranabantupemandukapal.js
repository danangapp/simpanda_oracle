const SaranaBantuPemanduKapal = require("../models/saranabantupemandukapal.js");
const f = require('./function');

exports.create = (req, res) => {
    if (!req.fields) {
        res.status(400).send({
            message: "Content can not be empty!"
        });
    }

    var saranabantupemandukapal = {
        sarana_bantu_pemandu_id: req.fields.sarana_bantu_pemandu_id,
        tipe_sarana_pemandu_kapal_id: req.fields.tipe_sarana_pemandu_kapal_id,
        dokumen_kapal_q1: req.fields.dokumen_kapal_q1,
        dokumen_kapal_q2: req.fields.dokumen_kapal_q2,
        dokumen_kapal_q3: req.fields.dokumen_kapal_q3,
        dokumen_kapal_q4: req.fields.dokumen_kapal_q4,
        dokumen_kapal_q5: req.fields.dokumen_kapal_q5,
        dokumen_kapal_q6: req.fields.dokumen_kapal_q6,
        dokumen_kapal_q7: req.fields.dokumen_kapal_q7,
        dokumen_kapal_q8: req.fields.dokumen_kapal_q8,
        dokumen_kapal_q9: req.fields.dokumen_kapal_q9,
        dokumen_kapal_q10: req.fields.dokumen_kapal_q10,
        dokumen_kapal_q11: req.fields.dokumen_kapal_q11,
        dokumen_kapal_q12: req.fields.dokumen_kapal_q12,
        dokumen_kapal_q13: req.fields.dokumen_kapal_q13,
        dokumen_kapal_q14: req.fields.dokumen_kapal_q14,
        dokumen_kapal_q15: req.fields.dokumen_kapal_q15,
        kondisi_umum_q1: req.fields.kondisi_umum_q1,
        kondisi_umum_q2: req.fields.kondisi_umum_q2,
        kondisi_umum_q3: req.fields.kondisi_umum_q3,
        kondisi_umum_q4: req.fields.kondisi_umum_q4,
        kondisi_umum_q5: req.fields.kondisi_umum_q5,
        kondisi_umum_q6: req.fields.kondisi_umum_q6,
        pemeriksaan_performa_q1: req.fields.pemeriksaan_performa_q1,
        pemeriksaan_performa_q2: req.fields.pemeriksaan_performa_q2,
        pemeriksaan_performa_q3: req.fields.pemeriksaan_performa_q3,
        pemeriksaan_performa_q4: req.fields.pemeriksaan_performa_q4,
        pemeriksaan_performa_q5: req.fields.pemeriksaan_performa_q5,
        pemeriksaan_fisik_a1: req.fields.pemeriksaan_fisik_a1,
        pemeriksaan_fisik_a2: req.fields.pemeriksaan_fisik_a2,
        pemeriksaan_fisik_a3: req.fields.pemeriksaan_fisik_a3,
        pemeriksaan_fisik_a4: req.fields.pemeriksaan_fisik_a4,
        pemeriksaan_fisik_a5: req.fields.pemeriksaan_fisik_a5,
        pemeriksaan_fisik_a6: req.fields.pemeriksaan_fisik_a6,
        pemeriksaan_fisik_a7: req.fields.pemeriksaan_fisik_a7,
        pemeriksaan_fisik_b1: req.fields.pemeriksaan_fisik_b1,
        pemeriksaan_fisik_b2: req.fields.pemeriksaan_fisik_b2,
        pemeriksaan_fisik_b3: req.fields.pemeriksaan_fisik_b3,
        pemeriksaan_fisik_b4: req.fields.pemeriksaan_fisik_b4,
        pemeriksaan_fisik_b5: req.fields.pemeriksaan_fisik_b5,
        pemeriksaan_fisik_b6: req.fields.pemeriksaan_fisik_b6,
        pemeriksaan_fisik_b7: req.fields.pemeriksaan_fisik_b7,
        pemeriksaan_fisik_b8: req.fields.pemeriksaan_fisik_b8,
        pemeriksaan_fisik_b9: req.fields.pemeriksaan_fisik_b9,
        pemeriksaan_fisik_c1: req.fields.pemeriksaan_fisik_c1,
        pemeriksaan_fisik_c2: req.fields.pemeriksaan_fisik_c2,
        pemeriksaan_fisik_c3: req.fields.pemeriksaan_fisik_c3,
        pemeriksaan_fisik_c4: req.fields.pemeriksaan_fisik_c4,
        pemeriksaan_fisik_c5: req.fields.pemeriksaan_fisik_c5,
        pemeriksaan_fisik_c6: req.fields.pemeriksaan_fisik_c6,
        pemeriksaan_fisik_c7: req.fields.pemeriksaan_fisik_c7,
        pemeriksaan_fisik_d1: req.fields.pemeriksaan_fisik_d1,
        pemeriksaan_fisik_d2: req.fields.pemeriksaan_fisik_d2,
        pemeriksaan_fisik_d3: req.fields.pemeriksaan_fisik_d3,
        pemeriksaan_fisik_d4: req.fields.pemeriksaan_fisik_d4,
        pemeriksaan_fisik_d5: req.fields.pemeriksaan_fisik_d5,
        pemeriksaan_fisik_d6: req.fields.pemeriksaan_fisik_d6,
        pemeriksaan_fisik_d7: req.fields.pemeriksaan_fisik_d7,
        pemeriksaan_fisik_d8: req.fields.pemeriksaan_fisik_d8,
        pemeriksaan_fisik_d9: req.fields.pemeriksaan_fisik_d9,
        pemeriksaan_fisik_e1: req.fields.pemeriksaan_fisik_e1,
        pemeriksaan_fisik_e2: req.fields.pemeriksaan_fisik_e2,
        pemeriksaan_fisik_e3: req.fields.pemeriksaan_fisik_e3,
        pemeriksaan_fisik_f1: req.fields.pemeriksaan_fisik_f1,
        pemeriksaan_fisik_f2: req.fields.pemeriksaan_fisik_f2,
        pemeriksaan_fisik_f3: req.fields.pemeriksaan_fisik_f3,
        pemeriksaan_fisik_f4: req.fields.pemeriksaan_fisik_f4,
    };

	var used = {};
	for (var i in saranabantupemandukapal) {
	    if (saranabantupemandukapal[i] == undefined) {
	        delete saranabantupemandukapal[i];
	    }
	}

    SaranaBantuPemanduKapal.create(saranabantupemandukapal, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while creating the SaranaBantuPemanduKapal."
            });
        else res.send(data);
    }, req.cabang_id, req.user_id);
};

exports.findAll = (req, res) => {
    SaranaBantuPemanduKapal.getAll(req.query, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while retrieving saranabantupemandukapalnames."
            });
        else res.send(data);
    }, req.cabang_id);
};

exports.findOne = (req, res) => {
    SaranaBantuPemanduKapal.findById(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found SaranaBantuPemanduKapal with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Error retrieving SaranaBantuPemanduKapal with id " + req.params.id
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


    SaranaBantuPemanduKapal.updateById(
        req.params.id,
        req.fields,
        (err, data) => {
            if (err) {
                if (err.kind === "not_found") {
                    res.status(404).send({
                        message: `Not found SaranaBantuPemanduKapal with id ${req.params.id}.`
                    });
                } else {
                    res.status(500).send({
                        message: "Error updating SaranaBantuPemanduKapal with id " + req.params.id
                    });
                }
            } else res.send(data);
        },
        req.user_id
    );
};

exports.delete = (req, res) => {
    SaranaBantuPemanduKapal.remove(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found SaranaBantuPemanduKapal with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Could not delete SaranaBantuPemanduKapal with id " + req.params.id
                });
            }
        } else res.send({ message: `SaranaBantuPemanduKapal was deleted successfully!` });
    });
};


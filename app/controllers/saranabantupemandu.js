const SaranaBantuPemandu = require("../models/saranabantupemandu.js");
const f = require('./function');

exports.create = (req, res) => {
    if (!req.fields) {
        res.status(400).send({
            message: "Content can not be empty!"
        });
    }

    var saranabantupemandu = {
        approval_status_id: req.fields.approval_status_id,
        cabang_id: req.fields.cabang_id,
        tanggal_pemeriksaan: f.toDate(req.fields.tanggal_pemeriksaan),
        pelaksana: req.fields.pelaksana,
        nama: req.fields.nama,
        tipe_asset_id: req.fields.tipe_asset_id,
        jabatan: req.fields.jabatan,
        asset_kapal_id: req.fields.asset_kapal_id,
        status_ijazah_id: req.fields.status_ijazah_id,
        sarana_bantu_pemandu_personil: req.fields.sarana_bantu_pemandu_personil,
        personil_id: req.fields.personil_id,
        keterangan: req.fields.keterangan,
        keterangan_sarana: req.fields.keterangan_sarana,
        date: f.toDate(req.fields.date),
        item: req.fields.item,
        action: req.fields.action,
        user_id: req.fields.user_id,
        remark: req.fields.remark,
        koneksi: req.fields.koneksi,
        keterangan: req.fields.keterangan,
        question: req.fields.question,
        personil_id_kkm: req.fields.personil_id_kkm,
        kkm_jabatan: req.fields.kkm_jabatan,
    };

    var used = {};
    for (var i in saranabantupemandu) {
        if (saranabantupemandu[i] == undefined) {
            delete saranabantupemandu[i];
        }
    }

    SaranaBantuPemandu.create(saranabantupemandu, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while creating the SaranaBantuPemandu."
            });
        else res.send(data);
    }, req.cabang_id, req.user_id);
};

exports.findAll = (req, res) => {
    SaranaBantuPemandu.getAll(req.query, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while retrieving saranabantupemandunames."
            });
        else res.send(data);
    }, req.cabang_id);
};

exports.findOne = (req, res) => {
    SaranaBantuPemandu.findById(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found SaranaBantuPemandu with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Error retrieving SaranaBantuPemandu with id " + req.params.id
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

    // req.fields.tanggal_pemeriksaan = f.toDate(req.fields.tanggal_pemeriksaan);

    SaranaBantuPemandu.updateById(
        req.params.id,
        req.fields,
        (err, data) => {
            if (err) {
                if (err.kind === "not_found") {
                    res.status(404).send({
                        message: `Not found SaranaBantuPemandu with id ${req.params.id}.`
                    });
                } else {
                    res.status(500).send({
                        message: "Error updating SaranaBantuPemandu with id " + req.params.id
                    });
                }
            } else res.send(data);
        },
        req.user_id
    );
};

exports.delete = (req, res) => {
    SaranaBantuPemandu.remove(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found SaranaBantuPemandu with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Could not delete SaranaBantuPemandu with id " + req.params.id
                });
            }
        } else res.send({ message: `SaranaBantuPemandu was deleted successfully!` });
    });
};


const AssetStasiunEquipment = require("../models/assetstasiunequipment.js");
const f = require('./function');

exports.create = (req, res) => {
    if (!req.fields) {
        res.status(400).send({
            message: "Content can not be empty!"
        });
    }

    var assetstasiunequipment = {
        nomor_asset: req.fields.nomor_asset,
        tipe_asset_id: req.fields.tipe_asset_id,
        nama: req.fields.nama,
        tahun_perolehan: req.fields.tahun_perolehan,
        nilai_perolehan: req.fields.nilai_perolehan,
        kondisi: req.fields.kondisi,
        approval_status_id: req.fields.approval_status_id,
        enable: req.fields.enable,
        cabang_id: req.fields.cabang_id,
        date: f.toDate(req.fields.date),
        item: req.fields.item,
        action: req.fields.action,
        user_id: req.fields.user_id,
        remark: req.fields.remark,
        koneksi: req.fields.koneksi,
        keterangan: req.fields.keterangan,
        alamat: req.fields.alamat,
        activity_keterangan: req.fields.activity_keterangan,
    };

    var used = {};
    for (var i in assetstasiunequipment) {
        if (assetstasiunequipment[i] == undefined) {
            delete assetstasiunequipment[i];
        }
    }

    AssetStasiunEquipment.create(assetstasiunequipment, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while creating the AssetStasiunEquipment."
            });
        else res.send(data);
    }, req.cabang_id, req.user_id);
};

exports.findAll = (req, res) => {
    AssetStasiunEquipment.getAll(req.query, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while retrieving assetstasiunequipmentnames."
            });
        else res.send(data);
    }, req.cabang_id);
};

exports.findOne = (req, res) => {
    AssetStasiunEquipment.findById(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found AssetStasiunEquipment with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Error retrieving AssetStasiunEquipment with id " + req.params.id
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


    AssetStasiunEquipment.updateById(
        req.params.id,
        req.fields,
        (err, data) => {
            if (err) {
                if (err.kind === "not_found") {
                    res.status(404).send({
                        message: `Not found AssetStasiunEquipment with id ${req.params.id}.`
                    });
                } else {
                    res.status(500).send({
                        message: "Error updating AssetStasiunEquipment with id " + req.params.id
                    });
                }
            } else res.send(data);
        },
        req.user_id
    );
};

exports.delete = (req, res) => {
    AssetStasiunEquipment.remove(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found AssetStasiunEquipment with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Could not delete AssetStasiunEquipment with id " + req.params.id
                });
            }
        } else res.send({ message: `AssetStasiunEquipment was deleted successfully!` });
    });
};


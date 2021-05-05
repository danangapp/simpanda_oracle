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
        tanggal_kadaluarsa: f.toDate(req.fields.tanggal_kadaluarsa),
        tanggal_terbit: f.toDate(req.fields.tanggal_terbit),
        nomor_sertifikat: req.fields.nomor_sertifikat,
        tempat_keluar: req.fields.tempat_keluar,
        sertifikat_equipment: req.fields.sertifikat_equipment,
        details: req.fields.details,
        lokasi_pemegang: req.fields.lokasi_pemegang,
        total_aktif: req.fields.total_aktif,
        kategori_equipment: req.fields.kategori_equipment,
    };

    var used = {};
    for (var i in assetstasiunequipment) {
        if (assetstasiunequipment[i] == undefined) {
            delete assetstasiunequipment[i];
        }
    }
    if (req.fields.sertifikat_equipment) {
        assetstasiunequipment.sertifikat_equipment = f.uploadFile64('assetstasiunequipment', req.fields.sertifikat_equipment);
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
    
    if (req.fields.tanggal_terbit)
        req.fields.tanggal_terbit = f.toDate(req.fields.tanggal_terbit);
    if (req.fields.tanggal_kadaluarsa)
        req.fields.tanggal_kadaluarsa = f.toDate(req.fields.tanggal_kadaluarsa);
    

    if (req.fields.sertifikat_equipment) {
        if (req.fields.sertifikat_equipment.substring(0, 4) == "data") {
            req.fields.sertifikat_equipment = f.uploadFile64('assetstasiunequipment', req.fields.sertifikat_equipment);
        } else {
            delete req.fields.sertifikat_equipment
        }
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


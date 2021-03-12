const SaranaBantuPemanduPersonil = require("../models/saranabantupemandupersonil.js");
const f = require('./function');

exports.create = (req, res) => {
    if (!req.fields) {
        res.status(400).send({
            message: "Content can not be empty!"
        });
    }

    var saranabantupemandupersonil = {
        sarana_bantu_pemandu_id: req.fields.sarana_bantu_pemandu_id,
        nama: req.fields.nama,
        jabatan: req.fields.jabatan,
        asset_kapal_id: req.fields.asset_kapal_id,
        tipe_asset_id: req.fields.tipe_asset_id,
        status_ijazah_id: req.fields.status_ijazah_id,
    };

	var used = {};
	for (var i in saranabantupemandupersonil) {
	    if (!saranabantupemandupersonil[i]) {
	        delete saranabantupemandupersonil[i];
	    }
	}

    SaranaBantuPemanduPersonil.create(saranabantupemandupersonil, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while creating the SaranaBantuPemanduPersonil."
            });
        else res.send(data);
    });
};

exports.findAll = (req, res) => {
    SaranaBantuPemanduPersonil.getAll(req.query, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while retrieving saranabantupemandupersonilnames."
            });
        else res.send(data);
    }, req.cabang_id);
};

exports.findOne = (req, res) => {
    SaranaBantuPemanduPersonil.findById(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found SaranaBantuPemanduPersonil with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Error retrieving SaranaBantuPemanduPersonil with id " + req.params.id
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


    SaranaBantuPemanduPersonil.updateById(
        req.params.id,
        req.fields,
        (err, data) => {
            if (err) {
                if (err.kind === "not_found") {
                    res.status(404).send({
                        message: `Not found SaranaBantuPemanduPersonil with id ${req.params.id}.`
                    });
                } else {
                    res.status(500).send({
                        message: "Error updating SaranaBantuPemanduPersonil with id " + req.params.id
                    });
                }
            } else res.send(data);
        }
    );
};

exports.delete = (req, res) => {
    SaranaBantuPemanduPersonil.remove(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found SaranaBantuPemanduPersonil with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Could not delete SaranaBantuPemanduPersonil with id " + req.params.id
                });
            }
        } else res.send({ message: `SaranaBantuPemanduPersonil was deleted successfully!` });
    });
};


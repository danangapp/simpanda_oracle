const StatusEvaluasiPelimpahan = require("../models/statusevaluasipelimpahan.js");
const f = require('./function');

exports.create = (req, res) => {
    if (!req.fields) {
        res.status(400).send({
            message: "Content can not be empty!"
        });
    }

    var statusevaluasipelimpahan = {
        nama: req.fields.nama,
    };

	var used = {};
	for (var i in statusevaluasipelimpahan) {
	    if (!statusevaluasipelimpahan[i]) {
	        delete statusevaluasipelimpahan[i];
	    }
	}

    StatusEvaluasiPelimpahan.create(statusevaluasipelimpahan, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while creating the StatusEvaluasiPelimpahan."
            });
        else res.send(data);
    }, req.cabang_id, req.user_id);
};

exports.findAll = (req, res) => {
    StatusEvaluasiPelimpahan.getAll(req.query, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while retrieving statusevaluasipelimpahannames."
            });
        else res.send(data);
    }, req.cabang_id);
};

exports.findOne = (req, res) => {
    StatusEvaluasiPelimpahan.findById(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found StatusEvaluasiPelimpahan with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Error retrieving StatusEvaluasiPelimpahan with id " + req.params.id
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


    StatusEvaluasiPelimpahan.updateById(
        req.params.id,
        req.fields,
        (err, data) => {
            if (err) {
                if (err.kind === "not_found") {
                    res.status(404).send({
                        message: `Not found StatusEvaluasiPelimpahan with id ${req.params.id}.`
                    });
                } else {
                    res.status(500).send({
                        message: "Error updating StatusEvaluasiPelimpahan with id " + req.params.id
                    });
                }
            } else res.send(data);
        },
        req.user_id
    );
};

exports.delete = (req, res) => {
    StatusEvaluasiPelimpahan.remove(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found StatusEvaluasiPelimpahan with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Could not delete StatusEvaluasiPelimpahan with id " + req.params.id
                });
            }
        } else res.send({ message: `StatusEvaluasiPelimpahan was deleted successfully!` });
    });
};


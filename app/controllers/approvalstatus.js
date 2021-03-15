const ApprovalStatus = require("../models/approvalstatus.js");
const f = require('./function');

exports.create = (req, res) => {
    if (!req.fields) {
        res.status(400).send({
            message: "Content can not be empty!"
        });
    }

    var approvalstatus = {
        nama: req.fields.nama,
    };

	var used = {};
	for (var i in approvalstatus) {
	    if (!approvalstatus[i]) {
	        delete approvalstatus[i];
	    }
	}

    ApprovalStatus.create(approvalstatus, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while creating the ApprovalStatus."
            });
        else res.send(data);
    }, req.cabang_id, req.user_id);
};

exports.findAll = (req, res) => {
    ApprovalStatus.getAll(req.query, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while retrieving approvalstatusnames."
            });
        else res.send(data);
    }, req.cabang_id);
};

exports.findOne = (req, res) => {
    ApprovalStatus.findById(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found ApprovalStatus with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Error retrieving ApprovalStatus with id " + req.params.id
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


    ApprovalStatus.updateById(
        req.params.id,
        req.fields,
        (err, data) => {
            if (err) {
                if (err.kind === "not_found") {
                    res.status(404).send({
                        message: `Not found ApprovalStatus with id ${req.params.id}.`
                    });
                } else {
                    res.status(500).send({
                        message: "Error updating ApprovalStatus with id " + req.params.id
                    });
                }
            } else res.send(data);
        },
        req.user_id
    );
};

exports.delete = (req, res) => {
    ApprovalStatus.remove(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found ApprovalStatus with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Could not delete ApprovalStatus with id " + req.params.id
                });
            }
        } else res.send({ message: `ApprovalStatus was deleted successfully!` });
    });
};


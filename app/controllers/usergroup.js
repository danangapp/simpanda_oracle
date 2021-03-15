const UserGroup = require("../models/usergroup.js");
const f = require('./function');

exports.create = (req, res) => {
    if (!req.fields) {
        res.status(400).send({
            message: "Content can not be empty!"
        });
    }

    var usergroup = {
        nama: req.fields.nama,
        keterangan: req.fields.keterangan,
        cabang_id: req.fields.cabang_id,
        user_access: req.fields.user_access,
    };

	var used = {};
	for (var i in usergroup) {
	    if (!usergroup[i]) {
	        delete usergroup[i];
	    }
	}

    UserGroup.create(usergroup, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while creating the UserGroup."
            });
        else res.send(data);
    }, req.cabang_id, req.user_id);
};

exports.findAll = (req, res) => {
    UserGroup.getAll(req.query, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while retrieving usergroupnames."
            });
        else res.send(data);
    }, req.cabang_id);
};

exports.findOne = (req, res) => {
    UserGroup.findById(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found UserGroup with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Error retrieving UserGroup with id " + req.params.id
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


    UserGroup.updateById(
        req.params.id,
        req.fields,
        (err, data) => {
            if (err) {
                if (err.kind === "not_found") {
                    res.status(404).send({
                        message: `Not found UserGroup with id ${req.params.id}.`
                    });
                } else {
                    res.status(500).send({
                        message: "Error updating UserGroup with id " + req.params.id
                    });
                }
            } else res.send(data);
        },
        req.user_id
    );
};

exports.delete = (req, res) => {
    UserGroup.remove(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found UserGroup with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Could not delete UserGroup with id " + req.params.id
                });
            }
        } else res.send({ message: `UserGroup was deleted successfully!` });
    });
};


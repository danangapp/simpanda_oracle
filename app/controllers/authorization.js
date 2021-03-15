const Authorization = require("../models/authorization.js");
const f = require('./function');

exports.create = (req, res) => {
    if (!req.fields) {
        res.status(400).send({
            message: "Content can not be empty!"
        });
    }

    var authorization = {
        user_id: req.fields.user_id,
        accessToken: req.fields.accessToken,
        refreshToken: req.fields.refreshToken,
        expired: req.fields.expired,
        cabang_id: req.fields.cabang_id,
    };

	var used = {};
	for (var i in authorization) {
	    if (!authorization[i]) {
	        delete authorization[i];
	    }
	}

    Authorization.create(authorization, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while creating the Authorization."
            });
        else res.send(data);
    }, req.cabang_id);
};

exports.findAll = (req, res) => {
    Authorization.getAll(req.query, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while retrieving authorizationnames."
            });
        else res.send(data);
    }, req.cabang_id);
};

exports.findOne = (req, res) => {
    Authorization.findById(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found Authorization with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Error retrieving Authorization with id " + req.params.id
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


    Authorization.updateById(
        req.params.id,
        req.fields,
        (err, data) => {
            if (err) {
                if (err.kind === "not_found") {
                    res.status(404).send({
                        message: `Not found Authorization with id ${req.params.id}.`
                    });
                } else {
                    res.status(500).send({
                        message: "Error updating Authorization with id " + req.params.id
                    });
                }
            } else res.send(data);
        }
    );
};

exports.delete = (req, res) => {
    Authorization.remove(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found Authorization with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Could not delete Authorization with id " + req.params.id
                });
            }
        } else res.send({ message: `Authorization was deleted successfully!` });
    });
};


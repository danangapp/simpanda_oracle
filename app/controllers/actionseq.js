const ActionSeq = require("../models/actionseq.js");
const f = require('./function');

exports.create = (req, res) => {
    if (!req.fields) {
        res.status(400).send({
            message: "Content can not be empty!"
        });
    }

    var actionseq = {
        next_not_cached_value: req.fields.next_not_cached_value,
        minimum_value: req.fields.minimum_value,
        maximum_value: req.fields.maximum_value,
        start_value: req.fields.start_value,
        increment: req.fields.increment,
        cache_size: req.fields.cache_size,
        cycle_option: req.fields.cycle_option,
        cycle_count: req.fields.cycle_count,
    };

	var used = {};
	for (var i in actionseq) {
	    if (!actionseq[i]) {
	        delete actionseq[i];
	    }
	}

    ActionSeq.create(actionseq, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while creating the ActionSeq."
            });
        else res.send(data);
    });
};

exports.findAll = (req, res) => {
    ActionSeq.getAll(req.query, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while retrieving actionseqnames."
            });
        else res.send(data);
    }, req.cabang_id);
};

exports.findOne = (req, res) => {
    ActionSeq.findById(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found ActionSeq with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Error retrieving ActionSeq with id " + req.params.id
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


    ActionSeq.updateById(
        req.params.id,
        req.fields,
        (err, data) => {
            if (err) {
                if (err.kind === "not_found") {
                    res.status(404).send({
                        message: `Not found ActionSeq with id ${req.params.id}.`
                    });
                } else {
                    res.status(500).send({
                        message: "Error updating ActionSeq with id " + req.params.id
                    });
                }
            } else res.send(data);
        }
    );
};

exports.delete = (req, res) => {
    ActionSeq.remove(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found ActionSeq with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Could not delete ActionSeq with id " + req.params.id
                });
            }
        } else res.send({ message: `ActionSeq was deleted successfully!` });
    });
};


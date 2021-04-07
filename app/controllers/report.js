const Report = require("../models/report.js");
const f = require('./function');
const fs = require('fs');
var XlsxTemplate = require('xlsx-template');

exports.saranabantupemandu = async (req, res) => {
    Report.saranabantupemandu(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found report with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Error retrieving report with id " + req.params.id
                });
            }
        } else {
            var filePath = './files/reports/saranabantupemandu' + data;
            res.download(filePath, function (err) {
                if (err) console.log(err);
                fs.unlink(filePath, function () {
                    console.log("File was deleted")
                });
            });

        }
    }, req.cabang_id);
};

exports.pemeriksaankapal = async (req, res) => {
    Report.pemeriksaankapal(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found report with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Error retrieving report with id " + req.params.id
                });
            }
        } else {
            var filePath = './files/reports/pemeriksaankapal' + data;
            res.download(filePath, function (err) {
                if (err) console.log(err);
                fs.unlink(filePath, function () {
                    console.log("File was deleted")
                });
            });

        }
    }, req.cabang_id);
};

exports.investigasiinsiden = async (req, res) => {
    Report.investigasiinsiden(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found report with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Error retrieving report with id " + req.params.id
                });
            }
        } else {
            var filePath = './files/reports/investigasiinsiden' + data;
            res.download(filePath, function (err) {
                if (err) console.log(err);
                // fs.unlink(filePath, function () {
                //     console.log("File was deleted")
                // });
            });

        }
    }, req.cabang_id);
};

exports.evaluasipelimpahan = async (req, res) => {
    Report.evaluasipelimpahan(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found report with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Error retrieving report with id " + req.params.id
                });
            }
        } else {
            var filePath = './files/reports/evaluasipelimpahan' + data;
            res.download(filePath, function (err) {
                if (err) console.log(err);
                fs.unlink(filePath, function () {
                    console.log("File was deleted")
                });
            });

        }
    }, req.cabang_id);
};


exports.crewlist = async (req, res) => {
    Report.crewlist(req, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found report with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Error retrieving report with id " + req.params.id
                });
            }
        } else {
            res.send(data);
        }
    }, req.cabang_id);
};


exports.pelaporanmanagement = async (req, res) => {
    Report.pelaporanmanagement(req, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found report with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Error retrieving report with id " + req.params.id
                });
            }
        } else {
            console.log("danang", data)
            var filePath = './files/reports/PelaporanManajemen' + data;
            res.download(filePath, function (err) {
                if (err) console.log(err);
                fs.unlink(filePath, function () {
                    console.log("File was deleted")
                });
            });
        }
    }, req.cabang_id);
};

exports.pelaporantunda = async (req, res) => {
    Report.pelaporantunda(req, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found report with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Error retrieving report with id " + req.params.id
                });
            }
        } else {
            var filePath = './files/reports/PelaporanTunda' + data;
            res.download(filePath, function (err) {
                if (err) console.log(err);
                fs.unlink(filePath, function () {
                    console.log("File was deleted")
                });
            });
        }
    }, req.cabang_id);
};

exports.pelaporanpandu = async (req, res) => {
    Report.pelaporanpandu(req, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found report with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Error retrieving report with id " + req.params.id
                });
            }
        } else {
            var filePath = './files/reports/PelaporanPandu' + data;
            res.download(filePath, function (err) {
                if (err) console.log(err);
                fs.unlink(filePath, function () {
                    console.log("File was deleted")
                });
            });
        }
    }, req.cabang_id);
};


exports.pilotship = async (req, res) => {
    Report.pilotship(req, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found report with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Error retrieving report with id " + req.params.id
                });
            }
        } else {
            res.send(data);
        }
    }, req.cabang_id);
};
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

exports.personelpeformance = async (req, res) => {
    Report.personelpeformance(req, (err, data) => {
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

exports.shippeformance = async (req, res) => {
    Report.shippeformance(req, (err, data) => {
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

exports.pandu = async (req, res) => {
    
    Report.pandu(req, (err, data) => {
        console.log(data)
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
            var filePath = './files/reports/pandu' + data;
            res.download(filePath, function (err) {
                if (err) console.log(err);
                fs.unlink(filePath, function () {
                    console.log("File was deleted")
                });
            });
        }
    }, req.cabang_id);
};

exports.pendukungpandu = async (req, res) => {
    
    Report.pendukungpandu(req, (err, data) => {
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
            var filePath = './files/reports/pendukungpandu' + data;
            res.download(filePath, function (err) {
                if (err) console.log(err);
                fs.unlink(filePath, function () {
                    console.log("File was deleted")
                });
            });
        }
    }, req.cabang_id);
};

exports.kapal = async (req, res) => {
    
    Report.kapal(req, (err, data) => {
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
            var filePath = './files/reports/kapal' + data;
            res.download(filePath, function (err) {
                if (err) console.log(err);
                fs.unlink(filePath, function () {
                    console.log("File was deleted")
                });
            });
        }
    }, req.cabang_id);
};

exports.stasiunpandu = async (req, res) => {
    
    Report.stasiunpandu(req, (err, data) => {
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
            var filePath = './files/reports/stasiunpandu' + data;
            res.download(filePath, function (err) {
                if (err) console.log(err);
                fs.unlink(filePath, function () {
                    console.log("File was deleted")
                });
            });
        }
    }, req.cabang_id);
};

exports.rumahdinas = async (req, res) => {
    
    Report.rumahdinas(req, (err, data) => {
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
            var filePath = './files/reports/rumahdinas' + data;
            res.download(filePath, function (err) {
                if (err) console.log(err);
                fs.unlink(filePath, function () {
                    console.log("File was deleted")
                });
            });
        }
    }, req.cabang_id);
};
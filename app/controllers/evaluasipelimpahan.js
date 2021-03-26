const EvaluasiPelimpahan = require("../models/evaluasipelimpahan.js");
const f = require('./function');

exports.create = (req, res) => {
    if (!req.fields) {
        res.status(400).send({
            message: "Content can not be empty!"
        });
    }

    var evaluasipelimpahan = {
        approval_status_id: req.fields.approval_status_id,
        enable: req.fields.enable,
        cabang_id: req.fields.cabang_id,
        bup: req.fields.bup,
        izin_bup: req.fields.izin_bup,
        penetapan_perairan_pandu: req.fields.penetapan_perairan_pandu,
        izin_pelimpahan: req.fields.izin_pelimpahan,
        pengawas_pemanduan: req.fields.pengawas_pemanduan,
        laporan_bulanan: req.fields.laporan_bulanan,
        bukti_pembayaran_pnpb: req.fields.bukti_pembayaran_pnpb,
        sispro: req.fields.sispro,
        tarif_jasa_pandu_tunda: req.fields.tarif_jasa_pandu_tunda,
        data_dukung: req.fields.data_dukung,
        file_pendukung: req.fields.file_pendukung,
        tanggal_sk: req.fields.tanggal_sk,
        file_sk_pelimpahan: req.fields.file_sk_pelimpahan,
        check_laporan_bulanan: req.fields.check_laporan_bulanan,
        check_bukti_pembayaran_pnpb: req.fields.check_bukti_pembayaran_pnpb,
        check_sispro: req.fields.check_sispro,
        check_tarif_jasa_pandu_tunda: req.fields.check_tarif_jasa_pandu_tunda,
        check_data_dukung: req.fields.check_data_dukung,
        date: f.toDate(req.fields.date),
        item: req.fields.item,
        action: req.fields.action,
        user_id: req.fields.user_id,
        remark: req.fields.remark,
        koneksi: req.fields.koneksi,
    };

	var used = {};
	for (var i in evaluasipelimpahan) {
	    if (evaluasipelimpahan[i] == undefined) {
	        delete evaluasipelimpahan[i];
	    }
	}

	if (req.fields.file_pendukung) {
	    evaluasipelimpahan.file_pendukung = f.uploadFile64('evaluasi_pelimpahan', req.fields.file_pendukung);
	}

	if (req.fields.file_sk_pelimpahan) {
	    evaluasipelimpahan.file_sk_pelimpahan = f.uploadFile64('evaluasi_pelimpahan', req.fields.file_sk_pelimpahan);
	}

    EvaluasiPelimpahan.create(evaluasipelimpahan, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while creating the EvaluasiPelimpahan."
            });
        else res.send(data);
    }, req.cabang_id, req.user_id);
};

exports.findAll = (req, res) => {
    EvaluasiPelimpahan.getAll(req.query, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while retrieving evaluasipelimpahannames."
            });
        else res.send(data);
    }, req.cabang_id);
};

exports.findOne = (req, res) => {
    EvaluasiPelimpahan.findById(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found EvaluasiPelimpahan with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Error retrieving EvaluasiPelimpahan with id " + req.params.id
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

	if (req.fields.file_pendukung) {
		if (req.fields.file_pendukung.substring(0, 4) == "data") {
		    req.fields.file_pendukung = f.uploadFile64('personil', req.fields.file_pendukung);
		} else {
		    delete req.fields.file_pendukung
		}
	}

	if (req.fields.file_sk_pelimpahan) {
		if (req.fields.file_sk_pelimpahan.substring(0, 4) == "data") {
		    req.fields.file_sk_pelimpahan = f.uploadFile64('personil', req.fields.file_sk_pelimpahan);
		} else {
		    delete req.fields.file_sk_pelimpahan
		}
	}


    EvaluasiPelimpahan.updateById(
        req.params.id,
        req.fields,
        (err, data) => {
            if (err) {
                if (err.kind === "not_found") {
                    res.status(404).send({
                        message: `Not found EvaluasiPelimpahan with id ${req.params.id}.`
                    });
                } else {
                    res.status(500).send({
                        message: "Error updating EvaluasiPelimpahan with id " + req.params.id
                    });
                }
            } else res.send(data);
        },
        req.user_id
    );
};

exports.delete = (req, res) => {
    EvaluasiPelimpahan.remove(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found EvaluasiPelimpahan with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Could not delete EvaluasiPelimpahan with id " + req.params.id
                });
            }
        } else res.send({ message: `EvaluasiPelimpahan was deleted successfully!` });
    });
};


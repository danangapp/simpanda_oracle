const Personil = require("../models/personil.js");
const f = require('./function');

exports.create = (req, res) => {
    if (!req.fields) {
        res.status(400).send({
            message: "Content can not be empty!"
        });
    }

    var personil = {
        tipe_personil_id: req.fields.tipe_personil_id,
        approval_status_id: req.fields.approval_status_id,
        simop_kd_pers_pandu: req.fields.simop_kd_pers_pandu,
        simop_kd_pers_pandu_cbg: req.fields.simop_kd_pers_pandu_cbg,
        enable: req.fields.enable,
        asset_kapal_id: req.fields.asset_kapal_id,
        nama: req.fields.nama,
        kelas: req.fields.kelas,
        tempat_lahir: req.fields.tempat_lahir,
        tanggal_lahir: f.toDate(req.fields.tanggal_lahir),
        nipp: req.fields.nipp,
        jabatan: req.fields.jabatan,
        status_kepegawaian_id: req.fields.status_kepegawaian_id,
        cv: req.fields.cv,
        cabang_id: req.fields.cabang_id,
        nomor_sk: req.fields.nomor_sk,
        tanggal_mulai: f.toDate(req.fields.tanggal_mulai),
        tanggal_selesai: f.toDate(req.fields.tanggal_selesai),
        sk: req.fields.sk,
        skpp: req.fields.skpp,
        surat_kesehatan: req.fields.surat_kesehatan,
        sertifikat_id: req.fields.sertifikat_id,
        sertifikat: req.fields.sertifikat,
        skpp_tanggal_mulai: f.toDate(req.fields.skpp_tanggal_mulai),
        skpp_tanggal_selesai: f.toDate(req.fields.skpp_tanggal_selesai),
        pandu_bandar_laut_id: req.fields.pandu_bandar_laut_id,
        date: f.toDate(req.fields.date),
        item: req.fields.item,
        action: req.fields.action,
        user_id: req.fields.user_id,
        remark: req.fields.remark,
        koneksi: req.fields.koneksi,
        keterangan: req.fields.keterangan,
    };

	var used = {};
	for (var i in personil) {
	    if (personil[i] == undefined) {
	        delete personil[i];
	    }
	}

	if (req.fields.cv) {
	    personil.cv = f.uploadFile64('personil', req.fields.cv);
	}

	if (req.fields.sk) {
	    personil.sk = f.uploadFile64('personil', req.fields.sk);
	}

	if (req.fields.skpp) {
	    personil.skpp = f.uploadFile64('personil', req.fields.skpp);
	}

	if (req.fields.surat_kesehatan) {
	    personil.surat_kesehatan = f.uploadFile64('personil', req.fields.surat_kesehatan);
	}

    Personil.create(personil, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while creating the Personil."
            });
        else res.send(data);
    }, req.cabang_id, req.user_id);
};

exports.findAll = (req, res) => {
    Personil.getAll(req.query, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while retrieving personilnames."
            });
        else res.send(data);
    }, req.cabang_id);
};

exports.findOne = (req, res) => {
    Personil.findById(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found Personil with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Error retrieving Personil with id " + req.params.id
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

	req.fields.tanggal_lahir = f.toDate(req.fields.tanggal_lahir);
	req.fields.tanggal_mulai = f.toDate(req.fields.tanggal_mulai);
	req.fields.tanggal_selesai = f.toDate(req.fields.tanggal_selesai);
	req.fields.skpp_tanggal_mulai = f.toDate(req.fields.skpp_tanggal_mulai);
	req.fields.skpp_tanggal_selesai = f.toDate(req.fields.skpp_tanggal_selesai);
	req.fields.date = f.toDate(req.fields.date);
	if (req.fields.cv) {
		if (req.fields.cv.substring(0, 4) == "data") {
		    req.fields.cv = f.uploadFile64('personil', req.fields.cv);
		} else {
		    delete req.fields.cv
		}
	}

	if (req.fields.sk) {
		if (req.fields.sk.substring(0, 4) == "data") {
		    req.fields.sk = f.uploadFile64('personil', req.fields.sk);
		} else {
		    delete req.fields.sk
		}
	}

	if (req.fields.skpp) {
		if (req.fields.skpp.substring(0, 4) == "data") {
		    req.fields.skpp = f.uploadFile64('personil', req.fields.skpp);
		} else {
		    delete req.fields.skpp
		}
	}

	if (req.fields.surat_kesehatan) {
		if (req.fields.surat_kesehatan.substring(0, 4) == "data") {
		    req.fields.surat_kesehatan = f.uploadFile64('personil', req.fields.surat_kesehatan);
		} else {
		    delete req.fields.surat_kesehatan
		}
	}


    Personil.updateById(
        req.params.id,
        req.fields,
        (err, data) => {
            if (err) {
                if (err.kind === "not_found") {
                    res.status(404).send({
                        message: `Not found Personil with id ${req.params.id}.`
                    });
                } else {
                    res.status(500).send({
                        message: "Error updating Personil with id " + req.params.id
                    });
                }
            } else res.send(data);
        },
        req.user_id
    );
};

exports.delete = (req, res) => {
    Personil.remove(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found Personil with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Could not delete Personil with id " + req.params.id
                });
            }
        } else res.send({ message: `Personil was deleted successfully!` });
    });
};


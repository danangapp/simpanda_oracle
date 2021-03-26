const InvestigasiInsiden = require("../models/investigasiinsiden.js");
const f = require('./function');

exports.create = (req, res) => {
    if (!req.fields) {
        res.status(400).send({
            message: "Content can not be empty!"
        });
    }

    var investigasiinsiden = {
        approval_status_id: req.fields.approval_status_id,
        enable: req.fields.enable,
        no_report: req.fields.no_report,
        unit_terkait: req.fields.unit_terkait,
        judul_report: req.fields.judul_report,
        kronologi_kejadian: req.fields.kronologi_kejadian,
        temuan_investigasi: req.fields.temuan_investigasi,
        bukti_temuan: req.fields.bukti_temuan,
        saksi_1: req.fields.saksi_1,
        saksi_2: req.fields.saksi_2,
        investigator: req.fields.investigator,
        rincian_kegiatan: req.fields.rincian_kegiatan,
        luka_sakit: req.fields.luka_sakit,
        wujud_cedera: req.fields.wujud_cedera,
        bagian_tubuh_cedera: req.fields.bagian_tubuh_cedera,
        mekanisme_cedera: req.fields.mekanisme_cedera,
        kerusakan_alat: req.fields.kerusakan_alat,
        uraian_kejadian: req.fields.uraian_kejadian,
        analisa_penyebab: req.fields.analisa_penyebab,
        peralatan_kelengkapan: req.fields.peralatan_kelengkapan,
        alat_pelindung_diri: req.fields.alat_pelindung_diri,
        perilaku: req.fields.perilaku,
        kebersihan_kerapihan: req.fields.kebersihan_kerapihan,
        peralatan_perlengkapan: req.fields.peralatan_perlengkapan,
        kemampuan_kondisi_fisik: req.fields.kemampuan_kondisi_fisik,
        pemeliharaan_perbaikan: req.fields.pemeliharaan_perbaikan,
        design: req.fields.design,
        tingkat_kemampuan: req.fields.tingkat_kemampuan,
        penjagaan: req.fields.penjagaan,
        tindakan_terkait: req.fields.tindakan_terkait,
        faktor_utama_insiden: req.fields.faktor_utama_insiden,
        rekomendasi_tindakan: req.fields.rekomendasi_tindakan,
        pihak_yang_bertanggungjawab: req.fields.pihak_yang_bertanggungjawab,
        pelaksana: req.fields.pelaksana,
        tanggal_pemeriksaan: req.fields.tanggal_pemeriksaan,
        nama: req.fields.nama,
        jabatan: req.fields.jabatan,
        status_investigasi_insiden_id: req.fields.status_investigasi_insiden_id,
        prepard_by: req.fields.prepard_by,
        prepard_tanggal: req.fields.prepard_tanggal,
        reviewed_by: req.fields.reviewed_by,
        reviewed_tanggal: req.fields.reviewed_tanggal,
        approved_by: req.fields.approved_by,
        approved_tanggal: req.fields.approved_tanggal,
        cabang_id: req.fields.cabang_id,
        peralatan_kelengkapan_lainnya: req.fields.peralatan_kelengkapan_lainnya,
        alat_pelindung_diri_lainnya: req.fields.alat_pelindung_diri_lainnya,
        perilaku_lainnya: req.fields.perilaku_lainnya,
        kebersihan_kerapihan_lainnya: req.fields.kebersihan_kerapihan_lainnya,
        rincian_kegiatan_lainnya: req.fields.rincian_kegiatan_lainnya,
        peralatan_perlengkapan_lainnya: req.fields.peralatan_perlengkapan_lainnya,
        pemeliharaan_perbaikan_lainnya: req.fields.pemeliharaan_perbaikan_lainnya,
        kemampuan_kondisi_fisik_lain: req.fields.kemampuan_kondisi_fisik_lain,
        kebersihan_kerapihan_lain: req.fields.kebersihan_kerapihan_lain,
        tingkat_kemampuan_lainnya: req.fields.tingkat_kemampuan_lainnya,
        penjagaan_lainnya: req.fields.penjagaan_lainnya,
        tindakan_terkait_lainnya: req.fields.tindakan_terkait_lainnya,
        date: f.toDate(req.fields.date),
        item: req.fields.item,
        action: req.fields.action,
        user_id: req.fields.user_id,
        remark: req.fields.remark,
        koneksi: req.fields.koneksi,
        investigasi_insiden_tim: req.fields.investigasi_insiden_tim,
    };

	var used = {};
	for (var i in investigasiinsiden) {
	    if (investigasiinsiden[i] == undefined) {
	        delete investigasiinsiden[i];
	    }
	}

	if (req.fields.bukti_temuan) {
	    investigasiinsiden.bukti_temuan = f.uploadFile64('investigasi_insiden', req.fields.bukti_temuan);
	}

    InvestigasiInsiden.create(investigasiinsiden, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while creating the InvestigasiInsiden."
            });
        else res.send(data);
    }, req.cabang_id, req.user_id);
};

exports.findAll = (req, res) => {
    InvestigasiInsiden.getAll(req.query, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while retrieving investigasiinsidennames."
            });
        else res.send(data);
    }, req.cabang_id);
};

exports.findOne = (req, res) => {
    InvestigasiInsiden.findById(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found InvestigasiInsiden with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Error retrieving InvestigasiInsiden with id " + req.params.id
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

	if (req.fields.bukti_temuan) {
		if (req.fields.bukti_temuan.substring(0, 4) == "data") {
		    req.fields.bukti_temuan = f.uploadFile64('personil', req.fields.bukti_temuan);
		} else {
		    delete req.fields.bukti_temuan
		}
	}


    InvestigasiInsiden.updateById(
        req.params.id,
        req.fields,
        (err, data) => {
            if (err) {
                if (err.kind === "not_found") {
                    res.status(404).send({
                        message: `Not found InvestigasiInsiden with id ${req.params.id}.`
                    });
                } else {
                    res.status(500).send({
                        message: "Error updating InvestigasiInsiden with id " + req.params.id
                    });
                }
            } else res.send(data);
        },
        req.user_id
    );
};

exports.delete = (req, res) => {
    InvestigasiInsiden.remove(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found InvestigasiInsiden with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Could not delete InvestigasiInsiden with id " + req.params.id
                });
            }
        } else res.send({ message: `InvestigasiInsiden was deleted successfully!` });
    });
};


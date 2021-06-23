const f = require('../controllers/function');
const fs = require('fs');
var moment = require('moment');
var XlsxTemplate = require('xlsx-template');
const createReport = require('docx-templates').default;
const axios = require('axios').default;
require('dotenv').config();
const Report = function (report) {
    this.nama = report.nama;
};

var auth = {
    username: 'vms_user',
    password: 'vms_user'
}

const queryPandu = function (cabang, date, dbCabang = "") {
    return `SELECT KD_PROSES, KD_PERS_PANDU, NM_PERS_PANDU, SUM( GERAKAN_DN ) AS GERAKAN_DN, SUM( GERAKAN_LN ) AS GERAKAN_LN, ( SUM( GERAKAN_DN ) + SUM( GERAKAN_LN ) ) AS TOTAL_GERAKAN, SUM( GT_DN ) AS GT_DN, SUM( GT_LN ) AS GT_LN, ( SUM( GT_DN ) + SUM( GT_LN ) ) AS TOTAL_GT, TRUNC( SUM( LAMA_PANDU_DN ) / 60 ) AS LAMA_PANDU_DN, TRUNC( SUM( LAMA_PANDU_LN ) / 60 ) AS LAMA_PANDU_LN, TRUNC( ( SUM( LAMA_PANDU_DN ) + SUM( LAMA_PANDU_LN ) ) / 60 ) AS TOTAL_LAMA_PANDU, TRUNC( SUM( WT_DN ) / 60 ) AS WT_DN, TRUNC( SUM( WT_LN ) / 60 ) AS WT_LN, TRUNC( ( SUM( WT_DN ) + SUM( WT_LN ) ) / 60 ) AS TOTAL_WT, SUM( PENDAPATAN_PANDU ) AS TOTAL_PENDAPATAN_PANDU, ROUND( 0.05 * SUM( PENDAPATAN_PANDU ), 0 ) AS PNBP_TOTAL_PENDAPATAN_PANDU FROM ${dbCabang}V_PRODUKSI_PEMANDUAN_KAPAL WHERE SUBSTR(KD_PPKB, 5, 2) = '${cabang}' AND TO_CHAR(TGL_PRODUKSI, 'YYYY-MM') = '${date}' GROUP BY KD_PERS_PANDU, KD_PROSES, NM_PERS_PANDU ORDER BY NM_PERS_PANDU`;
};

const queryTunda = function (cabang, date, dbCabang = "") {
    return `SELECT NM_KPL, MAX(HP_KPL) AS HP_KPL, SUM( GERAKAN_DN ) AS GERAKAN_DN, SUM( GERAKAN_LN ) AS GERAKAN_LN, SUM(TOTAL_GERAKAN) AS TOTAL_GERAKAN, SUM(LAMA_TUNDA_KPL) AS LAMA_TUNDA_KPL, SUM(PENDAPATAN_PER_HP) AS PENDAPATAN_PER_HP, SUM(PENDAPATAN_TOTAL_KPL) AS PENDAPATAN_TOTAL_KPL, SUM(PNBP_PER_HP) AS PNBP_PER_HP, SUM(PNBP_TOTAL_KPL) AS PNBP_TOTAL_KPL FROM (SELECT KD_PROSES, NM_KPL, HP_KPL, SUM( GERAKAN_DN ) AS GERAKAN_DN, SUM( GERAKAN_LN ) AS GERAKAN_LN, ( SUM( GERAKAN_DN ) + SUM( GERAKAN_LN ) ) AS TOTAL_GERAKAN, TRUNC( SUM( LAMA_TUNDA_KPL ) / 60 ) AS LAMA_TUNDA_KPL, NVL( SUM( PENDAPATAN_PER_HP ), 0 ) AS PENDAPATAN_PER_HP, NVL( SUM( PENDAPATAN_TOTAL_KPL ), 0 ) AS PENDAPATAN_TOTAL_KPL, ROUND( 0.05 * NVL( SUM( PENDAPATAN_PER_HP ), 0 ) ) AS PNBP_PER_HP, ROUND( 0.05 * NVL( SUM( PENDAPATAN_TOTAL_KPL ), 0 ) ) AS PNBP_TOTAL_KPL FROM ${dbCabang}V_PRODUKSI_KAPAL_TUNDA_CT WHERE SUBSTR(KD_PPKB, 5, 2) = '${cabang}' AND TO_CHAR(TGL_PRODUKSI, 'YYYY-MM') = '${date}' AND TO_NUMBER( KD_PROSES ) >= 3 GROUP BY KD_PROSES, NM_KPL, HP_KPL) a GROUP BY NM_KPL ORDER BY NM_KPL`;
    // return `SELECT NM_KPL, MAX(HP_KPL) AS HP_KPL, SUM( GERAKAN_DN ) AS GERAKAN_DN, SUM( GERAKAN_LN ) AS GERAKAN_LN, SUM(TOTAL_GERAKAN) AS TOTAL_GERAKAN, SUM(LAMA_TUNDA_KPL) AS LAMA_TUNDA_KPL, SUM(PENDAPATAN_PER_HP) AS PENDAPATAN_PER_HP, SUM(PENDAPATAN_TOTAL_KPL) AS PENDAPATAN_TOTAL_KPL, SUM(PNBP_PER_HP) AS PNBP_PER_HP, SUM(PNBP_TOTAL_KPL) AS PNBP_TOTAL_KPL FROM (SELECT KD_PROSES, NM_KPL, HP_KPL, SUM( GERAKAN_DN ) AS GERAKAN_DN, SUM( GERAKAN_LN ) AS GERAKAN_LN, ( SUM( GERAKAN_DN ) + SUM( GERAKAN_LN ) ) AS TOTAL_GERAKAN, TRUNC( SUM( LAMA_TUNDA_KPL ) / 60 ) AS LAMA_TUNDA_KPL, NVL( SUM( PENDAPATAN_PER_HP ), 0 ) AS PENDAPATAN_PER_HP, NVL( SUM( PENDAPATAN_TOTAL_KPL ), 0 ) AS PENDAPATAN_TOTAL_KPL, ROUND( 0.05 * NVL( SUM( PENDAPATAN_PER_HP ), 0 ) ) AS PNBP_PER_HP, ROUND( 0.05 * NVL( SUM( PENDAPATAN_TOTAL_KPL ), 0 ) ) AS PNBP_TOTAL_KPL FROM ${dbCabang}V_PRODUKSI_KAPAL_TUNDA_CT WHERE SUBSTR(KD_PPKB, 5, 2) = '${cabang}' AND TO_CHAR(TGL_PRODUKSI, 'YYYY-MM') = '${date}' AND TO_NUMBER( KD_PROSES ) >= 3 AND TO_NUMBER( KD_PROSES ) <= 6 GROUP BY KD_PROSES, NM_KPL, HP_KPL) a GROUP BY NM_KPL ORDER BY NM_KPL`;
};

const getCabang = async function (cabang) {
    const query = `SELECT "nama" FROM "cabang" WHERE "id" ='${cabang}'`;
    const output1 = await f.query(query);
    const output = output1.rows;
    // console.log(output[0].nama);
    return output[0].nama;
};


Report.saranabantupemandu = async (id, result, cabang_id, param) => {
    var query = `SELECT d."nama", e."nama" AS "nama_kkm", a."kkm_jabatan", a."jabatan", a."status_ijazah_id", a."tipe_asset_id", b."nama_asset", b."tahun_pembuatan",
        b."negara_pembuat", b."horse_power", b."kecepatan", c."nama" AS "cabang", a."pelaksana", a."tanggal_pemeriksaan" FROM "sarana_bantu_pemandu" a
        INNER JOIN "asset_kapal" b ON a."asset_kapal_id" = b."id" INNER JOIN "cabang" c ON a."cabang_id" = c."id" 
        LEFT JOIN "personil" d ON a."personil_id" = d."id" 
        LEFT JOIN "personil" e ON a."personil_id_kkm" = e."id"  WHERE a."id" = '${id}'`;
    var output1 = await f.query(query);
    var output = output1.rows;
    var arr = {}
    const jenis = output[0].tipe_asset_id;
    arr['nama'] = output[0].nama;
    arr['nama_kkm'] = output[0].nama_kkm;
    arr['kkm_jabatan'] = output[0].kkm_jabatan;
    arr['pelaksana'] = output[0].pelaksana;
    arr['cabang'] = output[0].cabang;
    arr['tanggal_pemeriksaan'] = f.toDate(output[0].tanggal_pemeriksaan, "DD MMM YYYY");
    arr['jabatan'] = output[0].jabatan;
    arr['as_nama'] = output[0].nama_asset;
    arr['as_tahun'] = output[0].tahun_pembuatan;
    arr['as_negara'] = output[0].negara_pembuat;
    arr['as_daya_kuda'] = output[0].horse_power;
    arr['as_bahan_utama'] = "test";
    arr['jarak_layanan'] = "";
    arr['lokasi_perairan'] = "";
    arr['jumlah_rata'] = "";
    arr['kondisi_perairan'] = "";
    arr["v" + "00"] = output[0].status_ijazah_id == 1 ? "" : "";
    arr["tv" + "00"] = output[0].status_ijazah_id == 2 ? "" : "";
    arr["ta" + "00"] = output[0].status_ijazah_id == 0 ? "" : "";
    arr["v" + "01"] = output[0].status_ijazah_id == 1 ? "" : "";
    arr["tv" + "01"] = output[0].status_ijazah_id == 2 ? "" : "";
    arr["ta" + "01"] = output[0].status_ijazah_id == 0 ? "" : "";
    // console.log(arr);

    query = `SELECT a.*, b."tipe_asset_id" FROM "sbp_data" a INNER JOIN "sarana_bantu_pemandu" b ON 
        a."sarana_bantu_pemandu_id" = b."id" WHERE a."sarana_bantu_pemandu_id" = '${id}' ORDER BY a."question_id"`;
    console.log(query);
    output1 = await f.query(query);
    output = output1.rows;
    for (var a in output) {
        arr["v" + a] = output[a].answer == 1 ? "" : "";
        arr["tv" + a] = output[a].answer == 2 ? "" : "";
        arr["ta" + a] = output[a].answer == 0 ? "" : "";
    }


    query = `SELECT "cabang_id" FROM "sarana_bantu_pemandu" WHERE "id"='${id}'`;
    output1 = await f.query(query);
    const cbg_id = output1.rows[0].cabang_id;

    query = `SELECT a."id", a."nama", a."jabatan", b."keterangan",
                    (CASE WHEN b."personil_id" IS NOT NULL THEN 1 ELSE 0 END) AS "valid",
                    (CASE WHEN b."personil_id" IS NOT NULL THEN 0 ELSE 1 END) AS "tidakvalid"
            FROM "personil" a
            LEFT JOIN
            (
                SELECT
                    "sertifikat"."personil_id",
                    "jenis_cert"."nama" AS "keterangan"
                FROM
                    "sertifikat"
                    LEFT JOIN "jenis_cert" ON "sertifikat"."jenis_cert_id" = "jenis_cert"."id"
                WHERE
                    "tanggal_expire" > SYSDATE
                    AND "personil_id" IS NOT NULL
            ) b ON a."id" = b."personil_id"
            WHERE a."tipe_personil_id" = '5'
                AND a."approval_status_id" = 1
                AND a."cabang_id" = '${cbg_id}'
                AND a."enable" ='1'`;
    output1 = await f.query(query);
    output = output1.rows;

    for (var a in output) {
        output[a].valid = output[a].valid == 1 ? "" : "";
        output[a].tidakvalid = output[a].tidakvalid == 1 ? "" : "";
        output[a].jabatan = "Radio Operator";
    }

    for (var a in output) {
        output[a]['no'] = parseInt(a) + 1;
    }
    arr['operator'] = output;

    var d = new Date();
    var t = d.getTime();
    fs.readFile('./report/Report-Inspection-Sarana Bantu Pemanduan ' + jenis + '.xlsx', function async(err, dt) {
        var template = new XlsxTemplate(dt);
        template.substitute(1, arr);
        template.substitute(2, arr);
        var out = template.generate();
        const fileName = './files/reports/saranabantupemandu' + t + '.xlsx';
        fs.writeFileSync(fileName, out, 'binary');
        result(null, t + '.xlsx');
    });
    result(null, "ok");
};

Report.pemeriksaankapal = async (id, result, cabang_id) => {
    var query = `SELECT ROWNUM AS
                    "NO",
                    a.*
                FROM
                    (
                    SELECT
                        a."pemeriksaan_kapal_id",
                        a."pemeriksaan_kapal_check_id",
                        (CASE WHEN b."gambar" IS NULL THEN '' ELSE  CONCAT( 'http://10.88.49.27:4000/', b."gambar" ) END) AS "gambar",
                        a."keterangan",
                        c."question",
                        ( CASE WHEN to_char( a."kondisi_id" ) = 1 THEN 'ü' ELSE '' END ) AS "baik",
                        ( CASE WHEN to_char( a."kondisi_id" ) = 2 THEN 'ü' ELSE '' END ) AS "rusak",
                        to_char(a."tanggal_awal", 'DD fmMonth YYYY') AS "tanggal_awal",
                        to_char(a."tanggal_akhir", 'DD fmMonth YYYY') AS "tanggal_akhir",
                        ( CASE WHEN to_char( a."status" ) = 0 THEN 'Close' ELSE 'Open' END ) AS "status"
                    FROM
                        "pemeriksaan_kapal_check_data" a
                        LEFT JOIN (
                        SELECT
                            a."id",
                            "pemeriksaan_kcd_id" AS "upload_id",
                            "gambar",
                            "keterangan",
                            "pemeriksaan_kapal_id",
                            "pemeriksaan_kapal_check_id"
                        FROM
                            "pemeriksaan_kapal_upload" a
                            INNER JOIN ( SELECT MAX( "id" ) AS "id" FROM "pemeriksaan_kapal_upload" GROUP BY "pemeriksaan_kapal_id", "pemeriksaan_kapal_check_id" ) b ON a."id" = b."id"
                        ) b ON a."id" = b."upload_id"
                        INNER JOIN "pemeriksaan_kapal_check" c ON a."pemeriksaan_kapal_check_id" = c."id"
                    ORDER BY
                        a."pemeriksaan_kapal_id",
                    a."pemeriksaan_kapal_check_id"
                    ) a WHERE a."pemeriksaan_kapal_id" = '${id}'`;

    var output1 = await f.query(query);
    var output = output1.rows;
    var rows = output1.rows;

    // query = `SELECT * FROM "pemeriksaan_kapal_upload" WHERE "pemeriksaan_kapal_id" = '${id}' ORDER BY "upd_date" DESC) a WHERE ROWNUM = 1`;
    // var output1 = await f.query(query);
    // var rows2 = output1.rows;
    // console.log(rows2[0])
    // for (var a in rows2) {
    //     rows[a].gambar
    // }

    query = `SELECT b."nama" as "nama", c."nama_asset" as "nama_asset", d."nama" as "tipe_asset"
            FROM "pemeriksaan_kapal" a 
            INNER JOIN "cabang" b ON a."cabang_id" = b."id" 
            INNER JOIN "asset_kapal" c ON a."asset_kapal_id" = c."id" 
            INNER JOIN "tipe_asset" d ON c."tipe_asset_id" = d."id" 
            WHERE a."id" = '${id}'
    `;
    output1 = await f.query(query);
    var arr = {};
    arr['cabang'] = output1.rows[0].nama;
    arr['kapal'] = output1.rows[0].nama_asset;
    arr['tipe_asset'] = output1.rows[0].tipe_asset;
    // console.log(cabang);
    arr['pk'] = output;

    // console.log(arr);

    var d = new Date();
    var t = d.getTime();
    fs.readFile('./report/Report-Inspection-Pemeriksaan kapal.xlsx', function async(err, dt) {
        var template = new XlsxTemplate(dt);
        template.substitute(1, arr);
        var out = template.generate();
        const fileName = './files/reports/pemeriksaankapal' + t + '.xlsx';
        fs.writeFileSync(fileName, out, 'binary');
        result(null, t + '.xlsx');
    });
};

Report.investigasiinsiden = async (id, result, cabang_id) => {
    var arr = {};
    var y = "x";
    var out = [];
    var tim = [];
    var wujud_cedera_array = [];
    var bagian_tubuh_cedera_array = [];
    var luka_sakit_array = [];
    var mekanisme_cedera_array = [];
    var peralatan_kelengkapan_array = [];
    var alat_pelindung_diri_array = [];
    var perilaku_array = [];
    var kebersihan_kerapihan_array = [];
    var peralatan_perlengkapan_array = [];
    var kemampuan_kondisi_fisik_array = [];
    var pemeliharaan_perbaikan_array = [];
    var design_array = [];
    var tingkat_kemampuan_array = [];
    var penjagaan_array = [];
    var tindakan_terkait_array = [];


    var checkin = 0;
    var query = "";


    var query = `SELECT ii.*, 
    TO_CHAR(ii."prepard_tanggal", 'DD fmMonth YYYY') AS "prepard_tanggal_nice",
    TO_CHAR(ii."reviewed_tanggal" , 'DD fmMonth YYYY') AS "reviewed_tanggal_nice",
    TO_CHAR(ii."approved_tanggal" , 'DD fmMonth YYYY') AS "approved_tanggal_nice",
    UPPER(ii."unit_terkait") AS "unit_terkait_nice",
    UPPER(ii."judul_report") AS "judul_report_nice"
    FROM "investigasi_insiden" ii
    WHERE ii."id"='${id}'`;
    var output1 = await f.query(query);
    var output = output1.rows;
    output = output[0];
    for (var a in output) {

        if (a == "wujud_cedera") {
            if (output[a]) {
                output['wujud_cedera_array'] = output[a].split(",");
                output['wujud_cedera_array'] = output['wujud_cedera_array'].filter(function (el) {
                    return el != null && el != "";
                });
                output['wujud_cedera_array'] = output['wujud_cedera_array'].filter(Number);
                wujud_cedera_array = output['wujud_cedera_array'];


                for (x in wujud_cedera_array) {
                    wujud_cedera_array[x] = "l" + wujud_cedera_array[x];
                }
                output['wujud_cedera_array'] = wujud_cedera_array;
                arr['wujud_cedera_array'] = wujud_cedera_array;
            } else {
                arr['wujud_cedera'] = "";
            }
        }

        if (a == "bagian_tubuh_cedera") {
            if (output[a]) {
                output['bagian_tubuh_cedera_array'] = output[a].split(",");
                output['bagian_tubuh_cedera_array'] = output['bagian_tubuh_cedera_array'].filter(function (el) {
                    return el != null && el != "";
                });
                output['bagian_tubuh_cedera_array'] = output['bagian_tubuh_cedera_array'].filter(Number);
                bagian_tubuh_cedera_array = output['bagian_tubuh_cedera_array'];


                for (x in bagian_tubuh_cedera_array) {
                    bagian_tubuh_cedera_array[x] = "m" + bagian_tubuh_cedera_array[x];
                }
                output['bagian_tubuh_cedera_array'] = bagian_tubuh_cedera_array;
                arr['bagian_tubuh_cedera_array'] = bagian_tubuh_cedera_array;
            } else {
                arr['bagian_tubuh_cedera'] = "";
            }
        }

        if (a == "luka_sakit") {
            if (output[a]) {
                output['luka_sakit_array'] = output[a].split(",");
                output['luka_sakit_array'] = output['luka_sakit_array'].filter(function (el) {
                    return el != null && el != "";
                });
                output['luka_sakit_array'] = output['luka_sakit_array'].filter(Number);
                luka_sakit_array = output['luka_sakit_array'];


                for (x in luka_sakit_array) {
                    luka_sakit_array[x] = "o" + luka_sakit_array[x];
                }
                output['luka_sakit_array'] = luka_sakit_array;
                arr['luka_sakit_array'] = luka_sakit_array;
            } else {
                arr['luka_sakit'] = "";
            }
        }

        if (a == "mekanisme_cedera") {
            if (output[a]) {
                output['mekanisme_cedera_array'] = output[a].split(",");
                output['mekanisme_cedera_array'] = output['mekanisme_cedera_array'].filter(function (el) {
                    return el != null && el != "";
                });
                output['mekanisme_cedera_array'] = output['mekanisme_cedera_array'].filter(Number);
                mekanisme_cedera_array = output['mekanisme_cedera_array'];


                for (x in mekanisme_cedera_array) {
                    mekanisme_cedera_array[x] = "n" + mekanisme_cedera_array[x];
                }
                output['mekanisme_cedera_array'] = mekanisme_cedera_array;
                arr['mekanisme_cedera_array'] = mekanisme_cedera_array;
            } else {
                arr['mekanisme_cedera'] = "";
            }
        }

        if (a == "peralatan_kelengkapan") {
            if (output[a]) {
                output['peralatan_kelengkapan_array'] = output[a].split(",");
                output['peralatan_kelengkapan_array'] = output['peralatan_kelengkapan_array'].filter(function (el) {
                    return el != null && el != "";
                });
                output['peralatan_kelengkapan_array'] = output['peralatan_kelengkapan_array'].filter(String);
                peralatan_kelengkapan_array = output['peralatan_kelengkapan_array'];


                for (x in peralatan_kelengkapan_array) {
                    peralatan_kelengkapan_array[x] = peralatan_kelengkapan_array[x];
                }
                output['peralatan_kelengkapan_array'] = peralatan_kelengkapan_array;
                arr['peralatan_kelengkapan_array'] = peralatan_kelengkapan_array;
            } else {
                arr['peralatan_kelengkapan'] = "";
            }
        }

        if (a == "alat_pelindung_diri") {
            if (output[a]) {
                output['alat_pelindung_diri_array'] = output[a].split(",");
                output['alat_pelindung_diri_array'] = output['alat_pelindung_diri_array'].filter(function (el) {
                    return el != null && el != "";
                });
                output['alat_pelindung_diri_array'] = output['alat_pelindung_diri_array'].filter(String);
                alat_pelindung_diri_array = output['alat_pelindung_diri_array'];


                for (x in alat_pelindung_diri_array) {
                    alat_pelindung_diri_array[x] = alat_pelindung_diri_array[x];
                }
                output['alat_pelindung_diri_array'] = alat_pelindung_diri_array;
                arr['alat_pelindung_diri_array'] = alat_pelindung_diri_array;
            } else {
                arr['alat_pelindung_diri'] = "";
            }
        }

        if (a == "perilaku") {
            if (output[a]) {
                output['perilaku_array'] = output[a].split(",");
                output['perilaku_array'] = output['perilaku_array'].filter(function (el) {
                    return el != null && el != "";
                });
                output['perilaku_array'] = output['perilaku_array'].filter(String);
                perilaku_array = output['perilaku_array'];


                for (x in perilaku_array) {
                    perilaku_array[x] = perilaku_array[x];
                }
                output['perilaku_array'] = perilaku_array;
                arr['perilaku_array'] = perilaku_array;
            } else {
                arr['perilaku'] = "";
            }
        }

        if (a == "kebersihan_kerapihan") {
            if (output[a]) {
                output['kebersihan_kerapihan_array'] = output[a].split(",");
                output['kebersihan_kerapihan_array'] = output['kebersihan_kerapihan_array'].filter(function (el) {
                    return el != null && el != "";
                });
                output['kebersihan_kerapihan_array'] = output['kebersihan_kerapihan_array'].filter(String);
                kebersihan_kerapihan_array = output['kebersihan_kerapihan_array'];


                for (x in kebersihan_kerapihan_array) {
                    kebersihan_kerapihan_array[x] = kebersihan_kerapihan_array[x];
                }
                output['kebersihan_kerapihan_array'] = kebersihan_kerapihan_array;
                arr['kebersihan_kerapihan_array'] = kebersihan_kerapihan_array;
            } else {
                arr['kebersihan_kerapihan'] = "";
            }
        }

        if (a == "peralatan_perlengkapan") {
            if (output[a]) {
                output['peralatan_perlengkapan_array'] = output[a].split(",");
                output['peralatan_perlengkapan_array'] = output['peralatan_perlengkapan_array'].filter(function (el) {
                    return el != null && el != "";
                });
                output['peralatan_perlengkapan_array'] = output['peralatan_perlengkapan_array'].filter(String);
                peralatan_perlengkapan_array = output['peralatan_perlengkapan_array'];


                for (x in peralatan_perlengkapan_array) {
                    peralatan_perlengkapan_array[x] = peralatan_perlengkapan_array[x];
                }
                output['peralatan_perlengkapan_array'] = peralatan_perlengkapan_array;
                arr['peralatan_perlengkapan_array'] = peralatan_perlengkapan_array;
            } else {
                arr['peralatan_perlengkapan'] = "";
            }
        }

        if (a == "kemampuan_kondisi_fisik") {
            if (output[a]) {
                output['kemampuan_kondisi_fisik_array'] = output[a].split(",");
                output['kemampuan_kondisi_fisik_array'] = output['kemampuan_kondisi_fisik_array'].filter(function (el) {
                    return el != null && el != "";
                });
                output['kemampuan_kondisi_fisik_array'] = output['kemampuan_kondisi_fisik_array'].filter(String);
                kemampuan_kondisi_fisik_array = output['kemampuan_kondisi_fisik_array'];


                for (x in kemampuan_kondisi_fisik_array) {
                    kemampuan_kondisi_fisik_array[x] = kemampuan_kondisi_fisik_array[x];
                }
                output['kemampuan_kondisi_fisik_array'] = kemampuan_kondisi_fisik_array;
                arr['kemampuan_kondisi_fisik_array'] = kemampuan_kondisi_fisik_array;
            } else {
                arr['kemampuan_kondisi_fisik'] = "";
            }
        }

        if (a == "pemeliharaan_perbaikan") {
            if (output[a]) {
                output['pemeliharaan_perbaikan_array'] = output[a].split(",");
                output['pemeliharaan_perbaikan_array'] = output['pemeliharaan_perbaikan_array'].filter(function (el) {
                    return el != null && el != "";
                });
                output['pemeliharaan_perbaikan_array'] = output['pemeliharaan_perbaikan_array'].filter(String);
                pemeliharaan_perbaikan_array = output['pemeliharaan_perbaikan_array'];


                for (x in pemeliharaan_perbaikan_array) {
                    pemeliharaan_perbaikan_array[x] = pemeliharaan_perbaikan_array[x];
                }
                output['pemeliharaan_perbaikan_array'] = pemeliharaan_perbaikan_array;
                arr['pemeliharaan_perbaikan_array'] = pemeliharaan_perbaikan_array;
            } else {
                arr['pemeliharaan_perbaikan'] = "";
            }
        }

        if (a == "design") {
            if (output[a]) {
                output['design_array'] = output[a].split(",");
                output['design_array'] = output['design_array'].filter(function (el) {
                    return el != null && el != "";
                });
                output['design_array'] = output['design_array'].filter(String);
                design_array = output['design_array'];


                for (x in design_array) {
                    design_array[x] = design_array[x];
                }
                output['design_array'] = design_array;
                arr['design_array'] = design_array;
            } else {
                arr['design'] = "";
            }
        }

        if (a == "tingkat_kemampuan") {
            if (output[a]) {
                output['tingkat_kemampuan_array'] = output[a].split(",");
                output['tingkat_kemampuan_array'] = output['tingkat_kemampuan_array'].filter(function (el) {
                    return el != null && el != "";
                });
                output['tingkat_kemampuan_array'] = output['tingkat_kemampuan_array'].filter(String);
                tingkat_kemampuan_array = output['tingkat_kemampuan_array'];


                for (x in tingkat_kemampuan_array) {
                    tingkat_kemampuan_array[x] = tingkat_kemampuan_array[x];
                }
                output['tingkat_kemampuan_array'] = tingkat_kemampuan_array;
                arr['tingkat_kemampuan_array'] = tingkat_kemampuan_array;
            } else {
                arr['tingkat_kemampuan'] = "";
            }
        }

        if (a == "penjagaan") {
            if (output[a]) {
                output['penjagaan_array'] = output[a].split(",");
                output['penjagaan_array'] = output['penjagaan_array'].filter(function (el) {
                    return el != null && el != "";
                });
                output['penjagaan_array'] = output['penjagaan_array'].filter(String);
                penjagaan_array = output['penjagaan_array'];


                for (x in penjagaan_array) {
                    penjagaan_array[x] = penjagaan_array[x];
                }
                output['penjagaan_array'] = penjagaan_array;
                arr['penjagaan_array'] = penjagaan_array;
            } else {
                arr['penjagaan'] = "";
            }
        }

        if (a == "tindakan_terkait") {
            if (output[a]) {
                output['tindakan_terkait_array'] = output[a].split(",");
                output['tindakan_terkait_array'] = output['tindakan_terkait_array'].filter(function (el) {
                    return el != null && el != "";
                });
                output['tindakan_terkait_array'] = output['tindakan_terkait_array'].filter(String);
                tindakan_terkait_array = output['tindakan_terkait_array'];


                for (x in tindakan_terkait_array) {
                    tindakan_terkait_array[x] = tindakan_terkait_array[x];
                }
                output['tindakan_terkait_array'] = tindakan_terkait_array;
                arr['tindakan_terkait_array'] = tindakan_terkait_array;
            } else {
                arr['tindakan_terkait'] = "";
            }
        }

        arr[a] = output[a] || "";
    }

    query = `SELECT * FROM "investigasi_insiden_check"`;
    output1 = await f.query(query);
    output = output1.rows;


    for (var x in output) {
        var jenis = output[x].jenis;
        var kode = output[x].kode;
        var nama = output[x].nama;

        if (jenis === "l") {
            if (wujud_cedera_array.includes(output[x].kode)) {
                checkin = 1;
            } else {
                checkin = 0;
            }
        }

        if (jenis === "m") {
            if (bagian_tubuh_cedera_array.includes(output[x].kode)) {
                checkin = 1;
            } else {
                checkin = 0;
            }
        }

        if (jenis === "o") {
            if (luka_sakit_array.includes(output[x].kode)) {
                checkin = 1;
            } else {
                checkin = 0;
            }
        }

        if (jenis === "n") {
            if (mekanisme_cedera_array.includes(output[x].kode)) {
                checkin = 1;
            } else {
                checkin = 0;
            }
        }

        if (jenis === "a") {
            if (peralatan_kelengkapan_array.includes(output[x].kode)) {
                checkin = 1;
            } else {
                checkin = 0;
            }
        }

        if (jenis === "b") {

            if (alat_pelindung_diri_array.includes(output[x].kode)) {
                checkin = 1;
            } else {
                checkin = 0;
            }
        }

        if (jenis === "c") {

            if (perilaku_array.includes(output[x].kode)) {
                checkin = 1;
            } else {
                checkin = 0;
            }
        }

        if (jenis === "d") {

            if (kebersihan_kerapihan_array.includes(output[x].kode)) {
                checkin = 1;
            } else {
                checkin = 0;
            }
        }

        if (jenis === "e") {

            if (peralatan_perlengkapan_array.includes(output[x].kode)) {
                checkin = 1;
            } else {
                checkin = 0;
            }
        }

        if (jenis === "f") {

            if (kemampuan_kondisi_fisik_array.includes(output[x].kode)) {
                checkin = 1;
            } else {
                checkin = 0;
            }
        }

        if (jenis === "g") {

            if (pemeliharaan_perbaikan_array.includes(output[x].kode)) {
                checkin = 1;
            } else {
                checkin = 0;
            }
        }

        if (jenis === "h") {

            if (design_array.includes(output[x].kode)) {
                checkin = 1;
            } else {
                checkin = 0;
            }
        }

        if (jenis === "i") {

            if (tingkat_kemampuan_array.includes(output[x].kode)) {
                checkin = 1;
            } else {
                checkin = 0;
            }
        }

        if (jenis === "j") {

            if (penjagaan_array.includes(output[x].kode)) {
                checkin = 1;
            } else {
                checkin = 0;
            }
        }

        if (jenis === "k") {

            if (tindakan_terkait_array.includes(output[x].kode)) {
                checkin = 1;
            } else {
                checkin = 0;
            }
        }

        if (jenis != y) {
            // console.log("lewat sini" + y)
            out = []
            y = jenis
            arr[jenis] = out;
        }
        out.push({ jenis: jenis, kode: kode, nama: nama, checkin: checkin });
    }

    arr['k'] = out;

    query = `SELECT iii.*, 
    TO_CHAR(iii."tgl", 'DD fmMonth YYYY') AS "tgl_nice"
    FROM "investigasi_insiden_tim" iii WHERE iii."investigasi_insiden_id"='${id}'`;
    output_tim = await f.query(query);
    output_tim = output_tim.rows;
    // output_tim = output_tim[0];
    for (var x in output_tim) {
        tim[x] = output_tim[x];
    }
    arr['tim'] = tim;


    const template = fs.readFileSync('./report/Report-Inspection-Investigasi Insiden.docx');
    var dataUrl = false;
    var extension = arr['bukti_temuan'].slice(-4);

    try {
        dataUrl = fs.readFileSync('./files/' + arr['bukti_temuan']);
    } catch (err) {
        dataUrl = false;
    }

    const buffer = await createReport({
        template,
        additionalJsContext: {
            gambar_temuan_investigasi: url => {
                if (arr['bukti_temuan'] && dataUrl) {
                    if (extension === '.png' || extension === '.jpg' || extension === '.jpeg' || extension === '.gif') {
                        return { width: 6, height: 6, data: dataUrl, extension: extension };
                    }
                }
            }
        },
        data: arr,
    });
    // console.log(JSON.stringify(arr));
    // console.log(buffer);

    var d = new Date();
    var t = d.getTime();
    const fileName = './files/reports/investigasiinsiden' + t + '.docx';
    fs.writeFileSync(fileName, buffer)
    result(null, t + '.docx');
};


Report.evaluasipelimpahan = async (id, result, cabang_id) => {
    var query = `SELECT * FROM "evaluasi_pelimpahan" WHERE "id" = '${id}'`;
    var output1 = await f.query(query);
    var output = output1.rows[0];
    const cabang = output.cabang_id;
    var arr = {}, personil = [], radio = [], tunda = [], kepil = [], pandu = [], EP = [];

    query = `SELECT a.*, b."nama" AS "cabang" FROM "evaluasi_pelimpahan" a INNER JOIN "cabang" b ON a."cabang_id" = b."id" WHERE a."id" = '${id}'`;
    output1 = await f.query(query);
    EP = output1.rows;

    // query = `SELECT ROWNUM no,
    //             a.*,
    //             b."nama",
    //             to_char(a."tanggal_expire",'DD-MM-YYYY')  as "tanggal_expires",
    //             '' AS "tingkat",
    //             '' AS "keterangan"
    //         FROM
    //             "sertifikat" a
    //             LEFT JOIN "personil" b ON a."personil_id" = b."id"
    //         WHERE
    //             b."cabang_id" = '${cabang}'`;
    query = ` SELECT ROWNUM no,
                a.*,
                b.*,
                a."nama",
                to_char(b."tanggal_expire",'DD-MM-YYYY')  as "tanggal_expires",
                a."kelas" AS "tingkat",
                c."nama" AS "keterangan",
                CASE WHEN b."jenis_cert_id" = '1' THEN b."no_sertifikat"
                ELSE ''
                END AS "coc",
                CASE WHEN b."jenis_cert_id" = '2' THEN b."no_sertifikat"
                ELSE ''
                END AS "coe"
            FROM
                "personil" a
                LEFT JOIN "sertifikat" b ON b."personil_id" = a."id" AND (b."jenis_cert_id" = '1' OR b."jenis_cert_id" = '2')
                LEFT JOIN "tipe_personil" c ON a."tipe_personil_id" = c."id"
            WHERE
                a."cabang_id" = '${cabang}' AND a."enable" = '1' AND a."tipe_personil_id" = '1' AND a."approval_status_id" = '1'
             `;
    output1 = await f.query(query);
    personil = output1.rows;

    query = `SELECT ROWNUM nos,
                a.*,
                b.*,
                to_char(b."tanggal_expire",'DD-MM-YYYY')  as "tanggal_expires",
                to_char(b."tanggal_keluar_sertifikat",'DD-MM-YYYY')  as "tanggal_keluar_sertifikats", 
                c."nama" AS "sertifikats",
                d."nama" AS "keterangan"
            FROM
                "personil" a
                LEFT JOIN "sertifikat" b ON b."personil_id" = a."id"
                LEFT JOIN "jenis_cert" c ON b."jenis_cert_id" = c."id"
                LEFT JOIN "tipe_personil" d ON a."tipe_personil_id" = d."id"
            WHERE
                a."cabang_id" = '${cabang}'
                AND a."tipe_personil_id" = '5' AND a."enable" = '1' AND a."approval_status_id" = '1'
            ORDER BY a."id" DESC
            `;
    output2 = await f.query(query);
    radio = output2.rows;

    // SELECT ROWNUM as no, z.*
    //     FROM (
    //     SELECT
    //             *
    //         FROM
    //             "asset_kapal"
    //         WHERE
    //             "cabang_id" = '1' AND "tipe_asset_id" = '1' AND "enable" = '1'
    //     ) z

    // query = `SELECT
    //             *
    //         FROM
    //             "asset_kapal"
    //         WHERE
    //             "cabang_id" = '${cabang}' 
    //         `;
    // output1 = await f.query(query);
    // const rows = output1.rows;

    var kepil = [], pandu = [], tunda = [];
    query = `SELECT ROWNUM as no, z.*
        FROM (
            SELECT a.*,
                    ( CASE WHEN to_char( a."kepemilikan_kapal_id" ) = 3 THEN 'Milik' ELSE 'Sewa' END ) AS "keterangan"
                FROM
                    "asset_kapal" a
                WHERE
                    a."cabang_id" = '${cabang}' AND a."tipe_asset_id" = '1' AND a."enable" = '1' AND a."approval_status_id" = '1'
            ) z
            `;
    kapal1 = await f.query(query);
    tunda = kapal1.rows;

    query = `SELECT ROWNUM as no, z.*
    FROM (
        SELECT a.*,
                ( CASE WHEN to_char( a."kepemilikan_kapal_id" ) = 3 THEN 'Milik' ELSE 'Sewa' END ) AS "keterangan"
            FROM
                "asset_kapal" a
            WHERE
                a."cabang_id" = '${cabang}' AND a."tipe_asset_id" = '2' AND a."enable" = '1' AND a."approval_status_id" = '1'
        ) z
            `;
    kapal1 = await f.query(query);
    pandu = kapal1.rows;

    query = `SELECT ROWNUM as no, z.*
    FROM (
        SELECT a.*,
                ( CASE WHEN to_char( a."kepemilikan_kapal_id" ) = 3 THEN 'Milik' ELSE 'Sewa' END ) AS "keterangan"
            FROM
                "asset_kapal" a
            WHERE
                a."cabang_id" = '${cabang}' AND a."tipe_asset_id" = '3' AND a."enable" = '1' AND a."approval_status_id" = '1'
        ) z
            `;
    kapal1 = await f.query(query);
    kepil = kapal1.rows;

    query = `SELECT CONCAT(to_char(NVL(COUNT(*), 0)),' UNIT') as "unit" FROM "asset_stasiun_equipment" 
            WHERE "cabang_id" = '${cabang}' AND "tipe_asset_id" = '4' AND "approval_status_id" = '1' AND "enable" = 1
            `;
    stasiun1 = await f.query(query);
    stasiun = stasiun1.rows;

    query = `SELECT CONCAT(to_char(NVL(COUNT(*), 0)),' UNIT') as "unit" FROM "asset_stasiun_equipment" 
            WHERE "cabang_id" = '${cabang}' AND "tipe_asset_id" = '5' AND "kategori_equipment" = '1' AND "approval_status_id" = '1' AND "enable" = 1
            `;
    vhf1 = await f.query(query);
    vhf = vhf1.rows;

    query = `SELECT CONCAT(to_char(NVL(COUNT(*), 0)),' UNIT') as "unit" FROM "asset_stasiun_equipment" 
            WHERE "cabang_id" = '${cabang}' AND "tipe_asset_id" = '5' AND "kategori_equipment" = '2' AND "approval_status_id" = '1' AND "enable" = 1
            `;
    ht1 = await f.query(query);
    ht = ht1.rows;

    query = `SELECT CONCAT(to_char(NVL(COUNT(*), 0)),' UNIT') as "unit" FROM "asset_stasiun_equipment" 
            WHERE "cabang_id" = '${cabang}' AND "tipe_asset_id" = '5' AND "kategori_equipment" = '3' AND "approval_status_id" = '1' AND "enable" = 1
            `;
    jacket1 = await f.query(query);
    jacket = jacket1.rows;

    query = `SELECT CONCAT(to_char(NVL(COUNT(*), 0)),' UNIT') as "unit" FROM "asset_stasiun_equipment" 
            WHERE "cabang_id" = '${cabang}' AND "tipe_asset_id" = '5' AND "kategori_equipment" = '4' AND "approval_status_id" = '1' AND "enable" = 1
            `;
    kendaraan1 = await f.query(query);
    kendaraan = kendaraan1.rows;

    query = `SELECT CONCAT(to_char(NVL(COUNT(*), 0)),' UNIT') as "unit" FROM "asset_stasiun_equipment" 
            WHERE "cabang_id" = '${cabang}' AND "tipe_asset_id" = '5' AND "kategori_equipment" = '5' AND "approval_status_id" = '1' AND "enable" = 1
            `;
    ais1 = await f.query(query);
    ais = ais1.rows;

    query = `SELECT CONCAT(to_char(NVL(SUM("satuan"), 0)),' UNIT') AS "unit"
            FROM "asset_rumah_dinas" WHERE "cabang_id" = '${cabang}' AND "approval_status_id" = '1' AND "enable" = 1    
            `;
    rumah1 = await f.query(query);
    rumah = rumah1.rows;

    console.log(rumah1);




    // for (var a in rows) {
    //     if (rows[a].tipe_asset_id == "1") {
    //         tunda.push(rows[a]);
    //     }
    //     if (rows[a].tipe_asset_id == "2") {
    //         pandu.push(rows[a]);
    //     }
    //     if (rows[a].tipe_asset_id == "3") {
    //         kepil.push(rows[a]);
    //     }
    // }

    var ep = EP[0];
    ep['cek1'] = ep.check_laporan_bulanan == 1 ? "V" : "";
    ep['uncek1'] = ep.check_laporan_bulanan == 0 ? "V" : "";
    ep['cek2'] = ep.check_bukti_pembayaran_pnpb == 1 ? "V" : "";
    ep['uncek2'] = ep.check_bukti_pembayaran_pnpb == 0 ? "V" : "";
    ep['cek3'] = ep.check_sispro == 1 ? "V" : "";
    ep['uncek3'] = ep.check_sispro == 0 ? "V" : "";
    ep['cek4'] = ep.check_tarif_jasa_pandu_tunda == 1 ? "V" : "";
    ep['uncek4'] = ep.check_tarif_jasa_pandu_tunda == 0 ? "V" : "";
    ep['cek5'] = ep.check_data_dukung == 1 ? "V" : "";
    ep['uncek5'] = ep.check_data_dukung == 0 ? "V" : "";
    ep['cabang'] = ep.cabang;

    arr['ep'] = ep;
    arr['personil'] = personil;
    arr['radio'] = radio;
    arr['tunda'] = tunda;
    arr['pandu'] = pandu;
    arr['kepil'] = kepil;
    arr['stasiun'] = stasiun;
    arr['vhf'] = vhf;
    arr['ht'] = ht;
    arr['jacket'] = jacket;
    arr['kendaraan'] = kendaraan;
    arr['ais'] = ais;
    arr['rumah'] = rumah;


    var d = new Date();
    var t = d.getTime();
    fs.readFile('./report/Report-Inspection-Evaluasi Pelimpahan.xlsx', function async(err, dt) {
        var template = new XlsxTemplate(dt);
        template.substitute(1, arr);
        template.substitute(2, arr);
        template.substitute(3, arr);
        template.substitute(4, arr);
        template.substitute(5, arr);
        template.substitute(6, arr);
        template.substitute(7, arr);
        var out = template.generate();
        const fileName = './files/reports/evaluasipelimpahan' + t + '.xlsx';
        fs.writeFileSync(fileName, out, 'binary');
        result(null, t + '.xlsx');
    });
};



Report.crewlist = async (req, result, cabang_id) => {
    // if (req.fields.cabang_id) {
    // const date = req.fields.date;
    // const date1 = date.split("-");
    var where = ''
    var arr = {};
    if (req.fields.cabang_id === undefined || req.fields.cabang_id === 0 || req.fields.cabang_id === '') {
        where = ''
    } else {
        where = 'AND a."cabang_id" = ' + req.fields.cabang_id || cabang_id + ''
    }
    var query = `
        SELECT ROWNUM as no, z.*
        FROM (
            SELECT 
            b."nama_asset" AS "nama_asset",
            a."nipp" AS "nipp",
            a."nama" AS "personil",
            a."jabatan" AS "jabatan",
            a."nomor_hp" AS "nomor_hp",
            e."nama" AS "manning",
            a."agency" AS "agency",
            c."nama" AS "cabang",
            a."tipe_personil_id",
            d."nama" AS "fleet"
            from "personil" a 
            INNER JOIN "asset_kapal" b ON a."asset_kapal_id" = b."id" 
            INNER JOIN "cabang" c ON a."cabang_id" = c."id"
            INNER JOIN "tipe_asset" d ON b."tipe_asset_id" = d."id"
            INNER JOIN "manning" e ON a."manning" = e."id"
            where a."tipe_personil_id" IN (2,3,4) 
            AND a."approval_status_id" = '1' 
            AND a."enable" = '1' 
            ${where}
        ) z
            
        `;
    console.log(query)
    var output1 = await f.query(query);
    var output = output1.rows;

    var query = `
            SELECT (CASE WHEN "id" = 0 THEN 'SEMUA CABANG' ELSE CONCAT('CABANG ',"nama") END) as "cabang" FROM "cabang" WHERE "id" = '${req.fields.cabang_id || cabang_id}'
            
        `;
    console.log(query)
    var output2 = await f.query(query);
    var cabang = output2.rows;

    arr['pandu'] = output;
    arr['cabang'] = output2.rows[0].cabang;

    console.log(arr)

    var d = new Date();
    var t = d.getTime();
    fs.readFile('./report/Report-Customize Report-Crew List.xlsx', function async(err, dt) {
        var template = new XlsxTemplate(dt);
        template.substitute(1, arr);
        var out = template.generate();
        const fileName = './files/reports/crewlist' + t + '.xlsx';
        fs.writeFileSync(fileName, out, 'binary');
        result(null, t + '.xlsx');
    });

    // result(null, output);
    // } else {
    //     result(null, { "status": "error no data" });
    // }
};


Report.pelaporanmanagement = async (req, result, cabang_id) => {
    if (req.fields.date) {
        const date = req.fields.date;
        var arr = {};
        const url = `${process.env.ESB}restv2/simpanda/managementReport/cabang`;
        var dta = await axios({
            method: 'POST',
            headers: { 'content-type': 'application/json' },
            auth: auth,
            data: JSON.stringify({
                "opSelectManagementReportCabangRequest": {
                    "esbBody": {
                        "jamPanduNaik": date
                    }
                }
            }),
            url,
        })

        const rows = dta.data.opSelectManagementReportCabangResponse.esbBody.results;
        var no = 0, cabang = "", merge = [], unitUln = 0, unitUdn = 0, unitKln = 0, unitKdn = 0, gerakanUln = 0, gerakanUdn = 0, gerakanKln = 0, gerakanKdn = 0, gtUln = 0, gtUdn = 0, gtKln = 0, gtKdn = 0, pendapatanUln = 0, pendapatanUdn = 0, pendapatanKln = 0, pendapatanKdn = 0;
        for (var a in rows) {
            if (rows[a].dermaga == "Umum" && rows[a].pelayaran == "ln") {
                unitUln = rows[a].unit;
                gerakanUln = rows[a].gerakan;
                gtUln = rows[a].gt;
                pendapatanUln = rows[a].pendapatan_pandu + rows[a].pendapatan_tunda || 0;
            }
            if (rows[a].dermaga == "Umum" && rows[a].pelayaran == "dn") {
                unitUdn = rows[a].unit;
                gerakanUdn = rows[a].gerakan;
                gtUdn = rows[a].gt;
                pendapatanUdn = rows[a].pendapatan_pandu + rows[a].pendapatan_tunda || 0;
            }
            if (rows[a].dermaga == "Khusus" && rows[a].pelayaran == "ln") {
                unitKln = rows[a].unit;
                gerakanKln = rows[a].gerakan;
                gtKln = rows[a].gt;
                pendapatanKln = rows[a].pendapatan_pandu + rows[a].pendapatan_tunda || 0;
            }
            if (rows[a].dermaga == "Khusus" && rows[a].pelayaran == "dn") {
                unitKdn = rows[a].unit;
                gerakanKdn = rows[a].gerakan;
                gtKdn = rows[a].gt;
                pendapatanKdn = rows[a].pendapatan_pandu + rows[a].pendapatan_tunda || 0;
            }

            if (cabang != rows[a].nmCabang) {
                cabang = rows[a].nmCabang
                no++;
                const arr1 = { no, cabang, unitUln, unitUdn, unitKln, unitKdn, gerakanUln, gerakanUdn, gerakanKln, gerakanKdn, gtUln, gtUdn, gtKln, gtKdn, pendapatanUln, pendapatanUdn, pendapatanKln, pendapatanKdn }
                merge.push(arr1)
                unitUln = 0;
                unitUdn = 0;
                unitKln = 0;
                unitKdn = 0;
                gerakanUln = 0;
                gerakanUdn = 0;
                gerakanKln = 0;
                gerakanKdn = 0;
                gtUln = 0;
                gtUdn = 0;
                gtKln = 0;
                gtKdn = 0;
                pendapatanUln = 0;
                pendapatanUdn = 0;
                pendapatanKln = 0;
                pendapatanKdn = 0;
            }
        }

        arr['global'] = merge;
        arr['bulan'] = f.toDate(date, "MMM");
        arr['tahun'] = f.toDate(date, "YYYY");

        var d = new Date();
        var t = d.getTime();
        fs.readFile('./report/Report-Pelaporan Manajemen- Laporan produksi Global.xlsx', function async(err, dt) {
            var template = new XlsxTemplate(dt);
            template.substitute(1, arr);
            var out = template.generate();
            const fileName = './files/reports/PelaporanManajemen' + t + '.xlsx';
            fs.writeFileSync(fileName, out, 'binary');
            result(null, t + '.xlsx');
        });

        result(null, rows);
    } else {
        result(null, { "status": "error no data" });
    }
};


Report.pelaporantunda = async (req, result, cabang_id) => {

    if (req.fields.date) {
        const date = req.fields.date, cabang = req.fields.cabang_id < 10 ? "0" + req.fields.cabang_id.toString() : req.fields.cabang_id;
        var arr = {};
        const url = cabang == "01" ? `${process.env.ESB}restv2/simpanda/produksiTunda/prod` : `${process.env.ESB}restv2/simpanda/produksiTunda/cabang`;
        var dataBody;
        if (cabang == "01") {no
            dataBody = {
                "opSelectProduksiTundaProdRequest": {
                    "esbBody": {
                        "tglProduksi": date
                    }
                }
            }

        } else {
            dataBody = {
                "opSelectProduksiTundaCabangRequest": {
                    "esbBody": {
                        "kdPpkb": cabang,
                        "tglProduksi": date
                    }
                }
            }
        }
        var dta = await axios({
            method: 'POST',
            headers: { 'content-type': 'application/json' },
            auth: auth,
            data: JSON.stringify(dataBody),
            url,
        })

        var globalResult;
        if (cabang == "01") {
            globalResult = dta.data.opSelectProduksiTundaProdResponse.esbBody.results ? dta.data.opSelectProduksiTundaProdResponse.esbBody.results : [];
        } else {
            globalResult = dta.data.opSelectProduksiTundaCabangResponse.esbBody.results ? dta.data.opSelectProduksiTundaCabangResponse.esbBody.results : [];
        }

        arr['global'] = globalResult;
        arr['cabang'] = await getCabang(parseInt(cabang));
        arr['date'] = moment().month(parseInt(date.substring(5, 7)) - 1).format("MMMM") + " " + date.substring(0, 4);

        var d = new Date();
        var t = d.getTime();
        fs.readFile('./report/Report-Pelaporan Manajemen-Laporan Produksi dan Pendapatan Tunda.xlsx', function async(err, dt) {
            var template = new XlsxTemplate(dt);
            template.substitute(1, arr);
            var out = template.generate();
            const fileName = './files/reports/PelaporanTunda' + t + '.xlsx';
            fs.writeFileSync(fileName, out, 'binary');
            result(null, t + '.xlsx');
        });

        result(null, arr['global']);
    } else {
        result(null, { "status": "error no data" });
    }

};


Report.pelaporanpandu = async (req, result, cabang_id) => {
    if (req.fields.date) {
        const date = req.fields.date, cabang = req.fields.cabang_id < 10 ? "0" + req.fields.cabang_id.toString() : req.fields.cabang_id;;
        var arr = {}
        const url = cabang == "01" ? `${process.env.ESB}restv2/simpanda/produksiPandu/prod` : `${process.env.ESB}restv2/simpanda/produksiPandu/cabang`;

        var dataBody;
        if (cabang == "01") {
            dataBody = {
                "opSelectProduksiPanduProdRequest": {
                    "esbBody": {
                        "tglProduksi": date
                    }
                }
            }
        } else {
            dataBody = {
                "opSelectProduksiPanduCabangRequest": {
                    "esbBody": {
                        "kdPpkb": cabang,
                        "tglProduksi": date
                    }
                }
            }
        }
        console.log("cabang", dataBody)

        var dta = await axios({
            method: 'POST',
            headers: { 'content-type': 'application/json' },
            auth: auth,
            data: JSON.stringify(dataBody),
            url,
        })

        var globalResult;
        if (cabang == "01") {
            globalResult = dta.data.opSelectProduksiPanduProdResponse.esbBody ? dta.data.opSelectProduksiPanduProdResponse.esbBody.results : [];
        } else {
            globalResult = dta.data.opSelectProduksiPanduCabangResponse.esbBody.results ? dta.data.opSelectProduksiPanduCabangResponse.esbBody.results : [];
        }
        arr['global'] = globalResult;
        arr['cabang'] = await getCabang(parseInt(cabang));
        arr['date'] = moment().month(parseInt(date.substring(5, 7)) - 1).format("MMMM") + " " + date.substring(0, 4);

        var d = new Date();
        var t = d.getTime();
        fs.readFile('./report/Report-Pelaporan Manajemen- Laporan Produksi dan Pendapatan Pandu.xlsx', function async(err, dt) {
            var template = new XlsxTemplate(dt);
            template.substitute(1, arr);
            var out = template.generate();
            const fileName = './files/reports/PelaporanPandu' + t + '.xlsx';
            fs.writeFileSync(fileName, out, 'binary');
            result(null, t + '.xlsx');
        });

        result(null, arr['global']);
    } else {
        result(null, { "status": "error no data" });
    }
};


Report.pilotship = async (req, result, cabang_id) => {
    if (req.fields.date) {
        const date = req.fields.date, cabang = req.fields.cabang_id < 10 ? "0" + req.fields.cabang_id.toString() : req.fields.cabang_id;;
        var arr = {};
        query = `
            SELECT
                a."day", a."date", b."personil", b."bandar", b."keterangan"
            FROM
                (
                SELECT
                    TO_CHAR( TRUNC( TO_DATE( '${req.fields.date}', 'YYYY-MM' ), 'MM' ) + LEVEL - 1, 'YYYY-MM-DD' ) AS "date",
                    LEVEL AS "day"
                FROM
                    dual CONNECT BY TRUNC( TRUNC( TO_DATE( '${req.fields.date}', 'YYYY-MM' ), 'MM' ) + LEVEL - 1, 'MM' ) = TRUNC( TO_DATE( '${req.fields.date}', 'YYYY-MM' ), 'MM' ) 
                ) a
                LEFT JOIN (
                    SELECT
                        TO_CHAR( a."from", 'YYYY-MM-DD' ) AS "date", c."nama" AS "personil", MAX(d."nama") as "bandar", MAX(a."keterangan") AS "keterangan"
                    FROM
                        "pandu_jaga" a
                    INNER JOIN "pandu_schedule" b ON a."pandu_schedule_id" = b."id"
                    INNER JOIN "personil" c ON a."personil_id" = c."id"
                    INNER JOIN "pandu_bandar_laut" d ON c."pandu_bandar_laut_id" = d."id"
                    WHERE
                        b."cabang_id" = '${req.fields.cabang_id}' 
                        AND TO_CHAR(a."from", 'YYYY-MM') = '${req.fields.date}'
                    GROUP BY
                        TO_CHAR( a."from", 'YYYY-MM-DD' ), c."nama", a."kehadiran"
            ) b ON a."date" = b."date"
                ORDER BY a."day"
        `;

        query_get_kapal = `
            SELECT
                c."nama_asset" as "armada",
                a."jam_operasi",
                NVL( ROUND( a."jam_operasi" / 24 * 100, 2 ), '' ) AS "availability",
                a."keterangan",
                d."nama" AS "tipe_kapal",
                e."date"
            FROM (
                SELECT
                    MAX(a."keterangan") AS "keterangan",
                    24 - SUM(ROUND( ( a."to" - a."from" ) * 24, 2 )) AS "jam_operasi",
                    TO_CHAR(MAX(a."from"), 'YYYY-MM-DD') as "date",
                    a."armada_schedule_id",
                    a."asset_kapal_id"
                FROM
                    "armada_jaga" a
                LEFT JOIN "armada_schedule" f ON a."armada_schedule_id" = f."id"
                WHERE a."available" = '0'
                AND TO_CHAR( a."from", 'YYYY-MM' ) = '${req.fields.date}'
                AND f."cabang_id" = '${req.fields.cabang_id}'
                GROUP BY a."armada_schedule_id",
                    a."asset_kapal_id"
            ) a
            INNER JOIN (
                SELECT
                    TO_CHAR(MAX(a."from"), 'YYYY-MM-DD') as "date", a."armada_schedule_id"
                FROM
                    "armada_jaga" a 
                LEFT JOIN "armada_schedule" f ON a."armada_schedule_id" = f."id"
                WHERE a."available" = '0'
                AND TO_CHAR( a."from", 'YYYY-MM' ) = '${req.fields.date}'
                AND f."cabang_id" = '${req.fields.cabang_id}'
                    GROUP BY a."armada_schedule_id"
            ) b
            ON a."date" = b."date" AND a."armada_schedule_id" = b."armada_schedule_id"
            INNER JOIN "asset_kapal" c ON a."asset_kapal_id" = c."id"
            INNER JOIN "tipe_asset" d ON c."tipe_asset_id" = d."id"
            RIGHT JOIN (
                SELECT
                        TO_CHAR( TRUNC( TO_DATE( '${req.fields.date}', 'YYYY-MM' ), 'MM' ) + LEVEL - 1, 'YYYY-MM-DD' ) AS "date",
                        LEVEL AS "day" 
                FROM
                        dual CONNECT BY TRUNC( TRUNC( TO_DATE( '${req.fields.date}', 'YYYY-MM' ), 'MM' ) + LEVEL - 1, 'MM' ) = TRUNC( TO_DATE( '${req.fields.date}', 'YYYY-MM' ), 'MM' )
            ) e ON a."date" = e."date"
            ORDER BY
                e."date",
                d."nama"
        `;

        // console.log(query);
        var output1 = await f.query(query_get_kapal);
        var output2 = await f.query(query);
        var output_kapal = output1.rows;
        var output_pandu = output2.rows;
        var date1 = "";

        for (var a in output_kapal) {
            if (date1 != output_kapal[a].date) {
                date1 = output_kapal[a].date;
            } else {
                output_kapal[a].date = "";
                output_kapal[a].day = "";
            }
        }

        date1 = "";
        for (var a in output_pandu) {
            if (date1 != output_pandu[a].date) {
                date1 = output_pandu[a].date;
            } else {
                output_pandu[a].date = "";
                output_pandu[a].day = "";
            }
        }


        const rowCabang = await f.getOneRowById("cabang", req.fields.cabang_id);
        console.log("rowCabang", rowCabang);
        arr['global'] = output_kapal;
        arr['pandu'] = output_pandu;
        arr['cabang'] = req.fields.cabang_id == 0 ? `SEMUA CABANG` : `CABANG ${rowCabang.nama}`;

        var d = new Date();
        var t = d.getTime();
        fs.readFile('./report/Report-Pilot & Ship Availability.xlsx', function async(err, dt) {
            var template = new XlsxTemplate(dt);
            template.substitute(1, arr);
            template.substitute(2, arr);
            var out = template.generate();
            const fileName = './files/reports/PilotShip' + t + '.xlsx';
            fs.writeFileSync(fileName, out, 'binary');
            result(null, t + '.xlsx');
        });

        result(null, output1.rows);
    } else {
        result(null, { "status": "error no data" });
    }
};


Report.personelpeformance = async (req, result, cabang_id) => {
    if (req.fields.date) {
        const date = req.fields.date;
        const cabang = req.fields.cabang_id;
        var query = queryPandu(cabang, date, cabang == "01" ? "KAPAL_PROD." : "");
        query = `SELECT 

                a.KD_PERS_PANDU AS "kd_pers_pandu",
                a.NM_PERS_PANDU AS "nm_pers_pandu",
                SUM(a.TOTAL_GERAKAN) AS "gerakan",
                SUM(a.TOTAL_GT) AS "total_gt",
                SUM(a.TOTAL_LAMA_PANDU) AS "waiting_time"
                FROM (${query}) a WHERE a.KD_PROSES IN (3, 4, 5, 6) GROUP BY a.KD_PERS_PANDU, a.NM_PERS_PANDU`;

        var output1 = await f.querySimop(query);
        var output = output1.rows;
        result(null, output);
    } else {
        result(null, { "status": "error no data" });
    }
};


Report.shippeformance = async (req, result, cabang_id) => {
    if (req.fields.date) {
        const date = req.fields.date;
        const cabang = req.fields.cabang_id;
        var query = queryTunda(cabang, date, cabang == "01" ? "KAPAL_PROD." : "");
        query = `SELECT ROWNUM NO, 
                a.NM_KPL AS "nm_kapal", 
                a.TOTAL_GERAKAN AS "gerakan", 
                a.LAMA_TUNDA_KPL AS "total_waktu" 
                FROM (${query}) a`;
        console.log("pilotship", query);

        var output1 = await f.querySimop(query);
        var output = output1.rows;

        result(null, output);
    } else {
        result(null, { "status": "error no data" });
    }
};

Report.pandu = async (req, result, cabang_id) => {

    if (req.fields) {
        const cabang = req.fields.cabang_id;


        var query = `
        SELECT ROWNUM as no, z.*
        FROM (
            SELECT
            a."nama" as nama,
            b."nama" as tipe_personil,
            c."nama" as cabang,
            d."nama" as approval_status,
            e."nama" as pandu_bandar_laut,
            f."nama" as status_kepegawaian,
            g."nama" as ena,
            h."no_sertifikat" as no_sertifikat,
            h."issuer" as lembaga,
            i."nama" as jeniscert,
            j."nama" as tipecert,
            a.*,
            to_char(a."tanggal_lahir",'DD-MM-YYYY') as tanggal_lahir,
            to_char(a."tanggal_mulai",'DD-MM-YYYY') as tanggal_mulai,
            to_char(a."tanggal_selesai",'DD-MM-YYYY') as tanggal_selesai,
            to_char(a."skpp_tanggal_mulai",'DD-MM-YYYY') as skpp_tanggal_mulai,
            to_char(a."skpp_tanggal_selesai",'DD-MM-YYYY') as skpp_tanggal_selesai,
            to_char(h."tanggal_keluar_sertifikat",'DD-MM-YYYY') as tanggalterbit,
            to_char(h."tanggal_expire",'DD-MM-YYYY') as expired

            from "personil" a
            LEFT JOIN "tipe_personil" b ON a."tipe_personil_id" = b."id"
            LEFT JOIN "cabang" c ON a."cabang_id" = c."id"
            LEFT JOIN "approval_status" d ON a."approval_status_id" = d."id"
            LEFT JOIN "pandu_bandar_laut" e ON a."pandu_bandar_laut_id" = e."id"
            LEFT JOIN "status_kepegawaian" f ON a."status_kepegawaian_id" = f."id"
            LEFT JOIN "enable" g ON a."enable" = g."id"
            LEFT JOIN "sertifikat" h ON a."id" = h."personil_id"
            LEFT JOIN "jenis_cert" i ON i."id" = h."jenis_cert_id"
            LEFT JOIN "tipe_cert" j ON j."id" = h."tipe_cert_id"
            WHERE a."id" IN (${cabang})
            ORDER BY c."nama" asc
        ) z
        
        
        `;

        var output1 = await f.query(query);
        var output = output1.rows;
        // console.log(f.toDate(output[6].tanggal_lahir, "DD-MMM-YYYY"))
        var arr = {};
        arr['pk'] = output;

        var d = new Date();
        var t = d.getTime();
        fs.readFile('./report/Custom Report - Personil Pandu.xlsx', function async(err, dt) {
            var template = new XlsxTemplate(dt);
            template.substitute(1, arr);
            var out = template.generate();
            const fileName = './files/reports/pandu' + t + '.xlsx';
            fs.writeFileSync(fileName, out, 'binary');
            result(null, t + '.xlsx');
        });
    } else {
        result(null, { "status": "error no data" });
    }
}

Report.pendukungpandu = async (req, result, cabang_id) => {

    if (req.fields) {
        const cabang = req.fields.cabang_id;

        var query = `
        SELECT ROWNUM as no, z.*
        FROM (
            SELECT
            a."nama" as nama,
            b."nama" as tipe_personil,
            c."nama" as cabang,
            d."nama" as approval_status,
            e."nama" as pandu_bandar_laut,
            f."nama" as status_kepegawaian,
            g."nama" as ena,
            h."no_sertifikat" as no_sertifikat,
            h."issuer" as lembaga,
            i."nama" as jeniscert,
            j."nama" as tipecert,
            k."nama_asset" as kapal,
            l."nama" as manning,
            a.*,
            to_char(a."tanggal_lahir",'DD-MM-YYYY') as tanggal_lahir,
            to_char(a."tanggal_mulai",'DD-MM-YYYY') as tanggal_mulai,
            to_char(a."tanggal_selesai",'DD-MM-YYYY') as tanggal_selesai,
            to_char(a."skpp_tanggal_mulai",'DD-MM-YYYY') as skpp_tanggal_mulai,
            to_char(a."skpp_tanggal_selesai",'DD-MM-YYYY') as skpp_tanggal_selesai,
            to_char(h."tanggal_keluar_sertifikat",'DD-MM-YYYY') as tanggalterbit,
            to_char(h."tanggal_expire",'DD-MM-YYYY') as expired

            from "personil" a
            LEFT JOIN "tipe_personil" b ON a."tipe_personil_id" = b."id"
            LEFT JOIN "cabang" c ON a."cabang_id" = c."id"
            LEFT JOIN "approval_status" d ON a."approval_status_id" = d."id"
            LEFT JOIN "pandu_bandar_laut" e ON a."pandu_bandar_laut_id" = e."id"
            LEFT JOIN "status_kepegawaian" f ON a."status_kepegawaian_id" = f."id"
            LEFT JOIN "enable" g ON a."enable" = g."id"
            LEFT JOIN "sertifikat" h ON a."id" = h."personil_id"
            LEFT JOIN "jenis_cert" i ON i."id" = h."jenis_cert_id"
            LEFT JOIN "tipe_cert" j ON j."id" = h."tipe_cert_id"
            LEFT JOIN "asset_kapal" k ON k."id" = a."asset_kapal_id"
            LEFT JOIN "manning" l ON l."id" = a."manning"
            WHERE a."id" IN (${cabang})
            ORDER BY c."id" asc
            ) z
        `;

        var output1 = await f.query(query);
        var output = output1.rows;
        var arr = {};
        arr['pk'] = output;

        var d = new Date();
        var t = d.getTime();
        fs.readFile('./report/Custom Report - Personil Pendukung Pandu.xlsx', function async(err, dt) {
            var template = new XlsxTemplate(dt);
            template.substitute(1, arr);
            var out = template.generate();
            const fileName = './files/reports/pendukungpandu' + t + '.xlsx';
            fs.writeFileSync(fileName, out, 'binary');
            result(null, t + '.xlsx');
        });
    } else {
        result(null, { "status": "error no data" });
    }
}

Report.kapal = async (req, result, cabang_id) => {

    // -- NVL(a."gross_tonnage", 0) as gross_tonnage || ton,
    // -- a."gross_tonnage" as gross_tonnage || ton,
    if (req.fields) {
        const cabang = req.fields.cabang_id;

        // CONCAT(to_char(NVL(a."loa", 0)),' m') as loa,
        // CONCAT(to_char(NVL(a."breadth", 0)),' m') as breadth,
        // CONCAT(to_char(NVL(a."gross_tonnage", 0)),' ton') as gross_tonnage,
        // CONCAT(to_char(NVL(a."kecepatan", 0)),' knot') as kecepatan,
        // CONCAT(to_char(NVL(a."bolard_pull", 0)),' ton') as bolard_pull,

        var query = `
        SELECT ROWNUM as no, z.*
        FROM (
            SELECT
            c."nama" as cabang,
            a."nama_asset" as nama_asset,
            a."kontruksi" as konstruksi,
            a."horse_power" as hp,
            a."tahun_perolehan" as tahun_peroleh,
            b."nama" as jenis_asset,
            a."nilai_perolehan" as nilai,
            CONCAT(to_char(NVL(a."loa", 0)),' m') as loa,
            CONCAT(to_char(NVL(a."breadth", 0)),' m') as breadth,
            CONCAT(to_char(NVL(a."depth", 0)),' m') as depth,
            CONCAT(to_char(NVL(a."draft_max", 0)),' m') as draft,
            a."tahun_pembuatan" as tahun_buat,
            a."negara_pembuat" as negara,
            a."no_registrasi" as no_registrasi,
            a."port_of_registration" as port_of_registration,
            
            a."gross_tonnage" as gross_tonnage,
            a."kecepatan" as kecepatan,
            a."bolard_pull" as bolard_pull,

            h."no_sertifikat" as no_sertifikat,
            h."issuer" as lembaga,
            i."nama" as jeniscert,
            j."nama" as tipecert,
            k."nama" as kepemilikan,
            a."klas",
            
            to_char(h."tanggal_keluar_sertifikat",'DD-MM-YYYY') as tanggalterbit,
            to_char(h."tanggal_expire",'DD-MM-YYYY') as expired
        
            from "asset_kapal" a
            LEFT JOIN "tipe_asset" b ON a."tipe_asset_id" = b."id"
            LEFT JOIN "cabang" c ON a."cabang_id" = c."id"
            LEFT JOIN "sertifikat" h ON a."id" = h."asset_kapal_id"
            LEFT JOIN "jenis_cert" i ON i."id" = h."jenis_cert_id"
            LEFT JOIN "tipe_cert" j ON j."id" = h."tipe_cert_id"
            LEFT JOIN "kepemilikan_kapal" k ON k."id" = a."kepemilikan_kapal_id"
            WHERE a."id" IN (${cabang})
            ORDER BY a."nama_asset" asc
        ) z
        `;

        var output1 = await f.query(query);
        var output = output1.rows;
        var arr = {};
        arr['pk'] = output;

        var d = new Date();
        var t = d.getTime();
        fs.readFile('./report/Custom Report - Asset Kapal.xlsx', function async(err, dt) {
            var template = new XlsxTemplate(dt);
            template.substitute(1, arr);
            var out = template.generate();
            const fileName = './files/reports/kapal' + t + '.xlsx';
            fs.writeFileSync(fileName, out, 'binary');
            result(null, t + '.xlsx');
        });
    } else {
        result(null, { "status": "error no data" });
    }
}

Report.stasiunpandu_and_equipment = async (req, result, cabang_id) => {

    if (req.fields) {
        const cabang = req.fields.cabang_id;

        var query = `SELECT ROWNUM as no, z.*
        FROM (SELECT c."nama" as cabang,
            b."nama" as jenis_asset,
            a."nama" as nama_asset,
            a."nomor_asset" as nomor_asset,
            a."tahun_perolehan" as tahun_peroleh,
            a."kondisi" as kondisi,
            a."nilai_perolehan" as nilai
            
            FROM "asset_stasiun_equipment" a
            LEFT JOIN "tipe_asset" b ON a."tipe_asset_id" = b."id"
            LEFT JOIN "cabang" c ON a."cabang_id" = c."id"
            WHERE a."id" IN (${cabang})
            ) z
        `;

        var output1 = await f.query(query);
        var output = output1.rows;
        var arr = {};
        arr['pk'] = output;

        var d = new Date();
        var t = d.getTime();
        fs.readFile('./report/Custom Report - Asset Stasiun Pandu.xlsx', function async(err, dt) {
            var template = new XlsxTemplate(dt);
            template.substitute(1, arr);
            var out = template.generate();
            const fileName = './files/reports/stasiunpandu' + t + '.xlsx';
            fs.writeFileSync(fileName, out, 'binary');
            result(null, t + '.xlsx');
        });
    } else {
        result(null, { "status": "error no data" });
    }
}

Report.rumahdinas = async (req, result, cabang_id) => {

    if (req.fields) {
        const cabang = req.fields.cabang_id;

        var query = `SELECT rownum as no,
            a."nama_asset" as nama_asset,
            a."no_asset" as nomor_asset,
            a."tahun_perolehan" as tahun_peroleh,
            a."alamat" as alamat,
            b."nama" as wilayah,
            a."satuan" as satuan,
            a."status_kepemilikan" as status_kepemilikan,
            a."nilai_perolehan" as nilai_peroleh,
            a."keterangan_rumah_dinas" as keterangan,
            a."nilai_buku" as nilai_buku,
            a."nilai" as nilai_perawatan,
            a."catatan" as catatan_perawatan,
            
            to_char(a."tanggal",'DD-MM-YYYY') as tanggal_perawatan
        
            from "asset_rumah_dinas" a
            INNER JOIN "cabang" b ON a."cabang_id" = b."id"
            WHERE a."id" IN (${cabang})
        `;

        var output1 = await f.query(query);
        var output = output1.rows;
        var arr = {};
        arr['pk'] = output;

        var d = new Date();
        var t = d.getTime();
        fs.readFile('./report/Custom Report - Asset Rumah Dinas.xlsx', function async(err, dt) {
            var template = new XlsxTemplate(dt);
            template.substitute(1, arr);
            var out = template.generate();
            const fileName = './files/reports/rumahdinas' + t + '.xlsx';
            fs.writeFileSync(fileName, out, 'binary');
            result(null, t + '.xlsx');
        });
    } else {
        result(null, { "status": "error no data" });
    }
}

module.exports = Report;


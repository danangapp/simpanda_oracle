const f = require('../controllers/function');
const fs = require('fs');
var moment = require('moment');
var XlsxTemplate = require('xlsx-template');
const createReport = require('docx-templates').default;
var query_asli = `SELECT a.*, round( 0.05 * pendapatan_pandu, 0 ) pnbp_pandu, round( 0.05 * pendapatan_tunda, 0 ) pnbp_tunda, round( 0.05 * pendapatan_pandu, 0 ) + round( 0.05 * pendapatan_tunda, 0 ) jumlah_pnbp FROM (SELECT c.kd_cabang, c.nm_cabang, bkt_pandu.kd_ppkb, to_char( bkt_pandu.jam_pandu_naik, 'mm-yyyy' ) periode, bkt_pandu.no_ukk, bkt_pandu.no_bkt_pandu, pkk.tgl_jam_tiba, bkt_pandu.ppkb_ke, bkt_pandu.draft_depan, bkt_pandu.draft_belakang, (SELECT mst_kapal.nm_kapal FROM pkk, mst_kapal_agen, mst_kapal WHERE pkk.no_ukk = bkt_pandu.no_ukk1 AND pkk.kd_kapal_agen = mst_kapal_agen.kd_kapal_agen AND mst_kapal_agen.kd_kapal = mst_kapal.kd_kapal ) nm_tugboat1, (SELECT mst_kapal.kp_grt FROM pkk, mst_kapal_agen, mst_kapal WHERE pkk.no_ukk = bkt_pandu.no_ukk1 AND pkk.kd_kapal_agen = mst_kapal_agen.kd_kapal_agen AND mst_kapal_agen.kd_kapal = mst_kapal.kd_kapal ) kp_grt_tugboat1, (SELECT mst_kapal.kp_loa FROM pkk, mst_kapal_agen, mst_kapal WHERE pkk.no_ukk = bkt_pandu.no_ukk1 AND pkk.kd_kapal_agen = mst_kapal_agen.kd_kapal_agen AND mst_kapal_agen.kd_kapal = mst_kapal.kd_kapal ) kp_loa_tugboat1, (SELECT mst_kapal.kd_bendera FROM pkk, mst_kapal_agen, mst_kapal WHERE pkk.no_ukk = bkt_pandu.no_ukk1 AND pkk.kd_kapal_agen = mst_kapal_agen.kd_kapal_agen AND mst_kapal_agen.kd_kapal = mst_kapal.kd_kapal ) flag_tugboat1, (SELECT pkk.draft_depan FROM pkk, mst_kapal_agen, mst_kapal WHERE pkk.no_ukk = bkt_pandu.no_ukk1 AND pkk.kd_kapal_agen = mst_kapal_agen.kd_kapal_agen AND mst_kapal_agen.kd_kapal = mst_kapal.kd_kapal ) draft_depan_tugboat1, (SELECT pkk.draft_belakang FROM pkk, mst_kapal_agen, mst_kapal WHERE pkk.no_ukk = bkt_pandu.no_ukk1 AND pkk.kd_kapal_agen = mst_kapal_agen.kd_kapal_agen AND mst_kapal_agen.kd_kapal = mst_kapal.kd_kapal ) draft_belakang_tugboat1, (SELECT mst_kapal.nm_kapal FROM pkk, mst_kapal_agen, mst_kapal WHERE pkk.no_ukk = bkt_pandu.no_ukk2 AND pkk.kd_kapal_agen = mst_kapal_agen.kd_kapal_agen AND mst_kapal_agen.kd_kapal = mst_kapal.kd_kapal ) nm_tugboat2, (SELECT mst_kapal.kp_grt FROM pkk, mst_kapal_agen, mst_kapal WHERE pkk.no_ukk = bkt_pandu.no_ukk2 AND pkk.kd_kapal_agen = mst_kapal_agen.kd_kapal_agen AND mst_kapal_agen.kd_kapal = mst_kapal.kd_kapal ) kp_grt_tugboat2, (SELECT mst_kapal.kp_grt FROM pkk, mst_kapal_agen, mst_kapal WHERE pkk.no_ukk = bkt_pandu.no_ukk2 AND pkk.kd_kapal_agen = mst_kapal_agen.kd_kapal_agen AND mst_kapal_agen.kd_kapal = mst_kapal.kd_kapal ) kp_loa_tugboat2, (SELECT mst_kapal.kd_bendera FROM pkk, mst_kapal_agen, mst_kapal WHERE pkk.no_ukk = bkt_pandu.no_ukk2 AND pkk.kd_kapal_agen = mst_kapal_agen.kd_kapal_agen AND mst_kapal_agen.kd_kapal = mst_kapal.kd_kapal ) flag_tugboat2, (SELECT pkk.draft_depan FROM pkk, mst_kapal_agen, mst_kapal WHERE pkk.no_ukk = bkt_pandu.no_ukk2 AND pkk.kd_kapal_agen = mst_kapal_agen.kd_kapal_agen AND mst_kapal_agen.kd_kapal = mst_kapal.kd_kapal ) draft_depan_tugboat2, (SELECT pkk.draft_belakang FROM pkk, mst_kapal_agen, mst_kapal WHERE pkk.no_ukk = bkt_pandu.no_ukk2 AND pkk.kd_kapal_agen = mst_kapal_agen.kd_kapal_agen AND mst_kapal_agen.kd_kapal = mst_kapal.kd_kapal ) draft_belakang_tugboat2, mst_kapal.nm_kapal, mst_kapal.jn_kapal, mst_kapal.kp_grt, mst_kapal.kp_loa, mst_kapal.kd_bendera, mst_agen.kd_agen, mst_pers_pandu.nm_pers_pandu, to_char( pkk.tgl_jam_tiba, 'dd-mm-yyyy' ) tgl_tiba, to_char( pkk.tgl_jam_tiba, 'hh24:mi' ) jam_tiba, to_char( ppkb_pandu.tgl_jam_pmt_pandu_d, 'dd-mm-yyyy' ) tgl_pmt, to_char( ppkb_pandu.tgl_jam_pmt_pandu_d, 'hh24:mi' ) jam_pmt, to_char( bkt_pandu.jam_pandu_naik, 'hh24:mi' ) pnk, to_char( bkt_pandu.jam_kapal_gerak, 'hh24:mi' ) kb, bkt_pandu.jam_pandu_naik,  to_char( bkt_pandu.jam_pandu_naik, 'dd-mm-yyyy hh24:mi' ) mulai_pelaksanaan, to_char( bkt_pandu.jam_pandu_turun, 'dd-mm-yyyy hh24:mi' ) selesai_pelaksanaan, f_selisih_jam ( bkt_pandu.jam_pandu_naik, bkt_pandu.jam_pandu_turun ) pnd, round((bkt_pandu.jam_pandu_turun - bkt_pandu.jam_pandu_naik) * 24*60) pnd_minute, ( CASE WHEN bkt_pandu.jam_pandu_naik > ppkb_pandu.tgl_jam_pmt_pandu_d THEN f_selisih_jam ( ppkb_pandu.tgl_jam_pmt_pandu_d, bkt_pandu.jam_pandu_naik ) ELSE '00:00' END ) wt, round( ( bkt_pandu.jam_pandu_naik - ppkb_pandu.tgl_jam_pmt_pandu_d ) * 24 * 60 ) wt_minute,(CASE WHEN bkt_pandu.kd_gerakan = 1 AND ppkb_pandu.tgl_jam_pmt_pandu_d > pkk.tgl_jam_tiba THEN trunc( ( ppkb_pandu.tgl_jam_pmt_pandu_d - pkk.tgl_jam_tiba ) * 24 ) || ':' || trunc(( ( ppkb_pandu.tgl_jam_pmt_pandu_d - pkk.tgl_jam_tiba ) * 24 - trunc( ( ppkb_pandu.tgl_jam_pmt_pandu_d - pkk.tgl_jam_tiba ) * 24 ) ) * 60 ) ELSE '00:00'END ) pt, (CASE WHEN bkt_pandu.kd_gerakan = 3 AND bkt_pandu.jam_pandu_turun > pkk.tgl_jam_tiba THEN trunc( ( bkt_pandu.jam_pandu_turun - pkk.tgl_jam_tiba ) * 24 ) || ':' || trunc(( ( bkt_pandu.jam_pandu_turun - pkk.tgl_jam_tiba ) * 24 - trunc( ( bkt_pandu.jam_pandu_turun - pkk.tgl_jam_tiba ) * 24 ) ) * 60 ) ELSE '00:00'END ) trt, f_selisih_jam ( bkt_pandu.jam_pandu_naik, bkt_pandu.jam_pandu_turun ) at_jam, (CASE bkt_pandu.pandu_dari WHEN '9999' THEN ( SELECT mst_pelabuhan.nm_pelabuhan FROM mst_pelabuhan WHERE mst_pelabuhan.kd_pelabuhan = pkk.pelabuhan_sebelum ) ELSE bkt_pandu.pandu_dari END ) pandu_dari, (CASE bkt_pandu.pandu_ke WHEN '9999' THEN ( SELECT mst_pelabuhan.nm_pelabuhan FROM mst_pelabuhan WHERE mst_pelabuhan.kd_pelabuhan = pkk.pelabuhan_berikut ) ELSE bkt_pandu.pandu_ke END ) pandu_ke, bkt_pandu.kd_gerakan, mst_gerakan.gerakan, bkt_pandu.tgl_mpandu, mst_agen.nm_agen, ( SELECT mst_fasilitas.nm_fas FROM mst_fasilitas WHERE bkt_tunda.kd_kapal_1 = mst_fasilitas.kd_fas ) nm_kapal_1, ( SELECT mst_fasilitas.daya FROM mst_fasilitas WHERE bkt_tunda.kd_kapal_1 = mst_fasilitas.kd_fas ) hp_kapal_1, ( SELECT mst_fasilitas.nm_fas FROM mst_fasilitas WHERE bkt_tunda.kd_kapal_2 = mst_fasilitas.kd_fas ) nm_kapal_2, ( SELECT mst_fasilitas.daya FROM mst_fasilitas WHERE bkt_tunda.kd_kapal_2 = mst_fasilitas.kd_fas ) hp_kapal_2, to_char( bkt_tunda.tgl_jam_tiba_kpl1, 'hh24:mi' ) mulai_tunda, to_char( bkt_tunda.tgl_jam_brngkt_kpl1, 'hh24:mi' ) selesai_tunda, f_selisih_jam ( bkt_tunda.tgl_jam_tiba_kpl1, bkt_tunda.tgl_jam_brngkt_kpl1 ) lama_tunda, bkt_pandu.ket_pandu, mst_keterangan_pandu.keterangan || ', ' || ( SELECT keterangan FROM kapal_prod.mst_ket_pandu_khusus WHERE kd_keterangan_pandu = bkt_pandu.ket_pandu ) AS keterangan_pandu, decode( pkk.kd_pelayaran, '1', 'ln', '2', 'dn', '3', 'rkyt', '4', 'prnts' ) AS pelayaran, nvl((SELECT sum( nvl( amount, 0 ) ) FROM kapal_cabang.simkeu_data_nota_tmp a WHERE a.no_ukk = pkk.no_ukk AND a.no_bukti = bkt_pandu.no_bkt_pandu AND a.type_pelayanan = 'pandu'), 0 ) pendapatan_pandu, nvl((SELECT sum( nvl( amount, 0 ) ) FROM kapal_cabang.simkeu_data_nota_tmp a WHERE a.no_ukk = pkk.no_ukk AND a.no_bukti = bkt_pandu.no_bkt_pandu AND a.type_pelayanan = 'tunda'), 0 ) pendapatan_tunda, mst_dermaga.dermaga FROM bkt_pandu, bkt_tunda, ppkb_detail, ppkb_pandu, ppkb, pkk, mst_kapal_agen, mst_kapal, mst_pers_pandu, mst_gerakan, mst_agen, mst_keterangan_pandu, mst_cabang c, mst_kade, mst_dermaga WHERE bkt_pandu.no_bkt_pandu = bkt_tunda.no_bkt_tunda ( + ) AND mst_kapal_agen.kd_cabang = c.kd_cabang AND bkt_pandu.kd_ppkb = ppkb_detail.kd_ppkb AND bkt_pandu.ppkb_ke = ppkb_detail.ppkb_ke AND bkt_pandu.kd_ppkb = ppkb_pandu.kd_ppkb AND bkt_pandu.ppkb_ke = ppkb_pandu.ppkb_ke AND bkt_pandu.kd_ppkb = ppkb.kd_ppkb AND ppkb.no_ukk = pkk.no_ukk AND pkk.kd_kapal_agen = mst_kapal_agen.kd_kapal_agen AND mst_kapal_agen.kd_kapal = mst_kapal.kd_kapal AND ( bkt_pandu.kd_pers_pandu = mst_pers_pandu.kd_pers_pandu AND SUBSTR( bkt_pandu.kd_ppkb, 5, 2 ) = mst_pers_pandu.KD_CABANG ) AND bkt_pandu.kd_gerakan = mst_gerakan.kd_gerakan AND mst_kapal_agen.kd_agen = mst_agen.kd_agen AND bkt_pandu.ket_pandu = mst_keterangan_pandu.kd_keterangan_pandu AND ppkb_detail.kade_tujuan = mst_kade.kd_kade AND mst_kade.kd_dermaga = mst_dermaga.kd_dermaga ) a`;
const Report = function (report) {
    this.nama = report.nama;
};

const queryPandu = function (cabang, date, dbCabang = "") {
    return `SELECT KD_PROSES, NM_PERS_PANDU, SUM( GERAKAN_DN ) AS GERAKAN_DN, SUM( GERAKAN_LN ) AS GERAKAN_LN, ( SUM( GERAKAN_DN ) + SUM( GERAKAN_LN ) ) AS TOTAL_GERAKAN, SUM( GT_DN ) AS GT_DN, SUM( GT_LN ) AS GT_LN, ( SUM( GT_DN ) + SUM( GT_LN ) ) AS TOTAL_GT, TRUNC( SUM( LAMA_PANDU_DN ) / 60 ) AS LAMA_PANDU_DN, TRUNC( SUM( LAMA_PANDU_LN ) / 60 ) AS LAMA_PANDU_LN, TRUNC( ( SUM( LAMA_PANDU_DN ) + SUM( LAMA_PANDU_LN ) ) / 60 ) AS TOTAL_LAMA_PANDU, TRUNC( SUM( WT_DN ) / 60 ) AS WT_DN, TRUNC( SUM( WT_LN ) / 60 ) AS WT_LN, TRUNC( ( SUM( WT_DN ) + SUM( WT_LN ) ) / 60 ) AS TOTAL_WT, SUM( PENDAPATAN_PANDU ) AS TOTAL_PENDAPATAN_PANDU, ROUND( 0.05 * SUM( PENDAPATAN_PANDU ), 0 ) AS PNBP_TOTAL_PENDAPATAN_PANDU FROM ${dbCabang}V_PRODUKSI_PEMANDUAN_KAPAL WHERE SUBSTR(KD_PPKB, 5, 2) = '${cabang}' AND TO_CHAR(TGL_PRODUKSI, 'YYYY-MM') = '${date}' AND TO_NUMBER( KD_PROSES ) >= 3 AND TO_NUMBER( KD_PROSES ) <= 6 GROUP BY KD_PERS_PANDU, KD_PROSES, NM_PERS_PANDU ORDER BY NM_PERS_PANDU`;
};

const queryTunda = function (cabang, date, dbCabang = "") {
    return `SELECT KD_PROSES, NM_KPL, HP_KPL, SUM( GERAKAN_DN ) AS GERAKAN_DN, SUM( GERAKAN_LN ) AS GERAKAN_LN, ( SUM( GERAKAN_DN ) + SUM( GERAKAN_LN ) ) AS TOTAL_GERAKAN, TRUNC( SUM( LAMA_TUNDA_KPL ) / 60 ) AS LAMA_TUNDA_KPL, NVL( SUM( PENDAPATAN_PER_HP ), 0 ) AS PENDAPATAN_PER_HP, NVL( SUM( PENDAPATAN_TOTAL_KPL ), 0 ) AS PENDAPATAN_TOTAL_KPL, ROUND( 0.05 * NVL( SUM( PENDAPATAN_PER_HP ), 0 ) ) AS PNBP_PER_HP, ROUND( 0.05 * NVL( SUM( PENDAPATAN_TOTAL_KPL ), 0 ) ) AS PNBP_TOTAL_KPL FROM ${dbCabang}V_PRODUKSI_KAPAL_TUNDA_CT WHERE SUBSTR(KD_PPKB, 5, 2) = '${cabang}' AND TO_CHAR(TGL_PRODUKSI, 'YYYY-MM') = '${date}' AND TO_NUMBER( KD_PROSES ) >= 3 AND TO_NUMBER( KD_PROSES ) <= 6 GROUP BY KD_PROSES, NM_KPL, HP_KPL ORDER BY NM_KPL`;
};

const getCabang = async function (cabang) {
    const query = `SELECT "nama" FROM "cabang" WHERE "id" ='${cabang}'`;
    const output1 = await f.query(query);
    const output = output1.rows;
    console.log(output[0].nama);
    return output[0].nama;
};


Report.saranabantupemandu = async (id, result, cabang_id) => {
    var query = `SELECT a."nama", a."jabatan", a."status_ijazah_id", a."tipe_asset_id", b."nama_asset", b."tahun_pembuatan",
        b."negara_pembuat", b."horse_power", b."kecepatan", c."nama" AS "cabang", a."pelaksana", a."tanggal_pemeriksaan" FROM "sarana_bantu_pemandu" a
        INNER JOIN "asset_kapal" b ON a."asset_kapal_id" = b."id" INNER JOIN "cabang" c ON a."cabang_id" = c."id" WHERE a."id" = '${id}'`;
    var output1 = await f.query(query);
    var output = output1.rows;
    var arr = {}
    const jenis = output[0].tipe_asset_id;
    arr['nama'] = output[0].nama;
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
    console.log(arr);

    query = `SELECT a.*, b."tipe_asset_id" FROM "sbp_data" a INNER JOIN "sarana_bantu_pemandu" b ON 
        a."sarana_bantu_pemandu_id" = b."id" WHERE a."sarana_bantu_pemandu_id" = '${id}' ORDER BY a."question_id"`;
    output1 = await f.query(query);
    output = output1.rows;
    for (var a in output) {
        arr["v" + a] = output[a].answer == 1 ? "" : "";
        arr["tv" + a] = output[a].answer == 2 ? "" : "";
        arr["ta" + a] = output[a].answer == 0 ? "" : "";
    }


    query = `SELECT "nama", "jabatan" FROM "personil" WHERE "tipe_personil_id" = '3' AND "cabang_id" = '${id}'`;
    output1 = await f.query(query);
    output = output1.rows;
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
    var query = `SELECT
                    b."question",
                    ( CASE WHEN to_char( a."kondisi_id" ) = 1 THEN 'ü' ELSE '' END ) AS "baik",
                    ( CASE WHEN to_char( a."kondisi_id" ) = 2 THEN 'ü' ELSE '' END ) AS "rusak",
                    a."tanggal_awal",
                    a."tanggal_akhir",
                    a."keterangan",
                    ( CASE WHEN to_char( a."status" ) = 0 THEN 'Close' ELSE 'Open' END ) AS "status"
                FROM
                    "pemeriksaan_kapal_check_data" a
                INNER JOIN "pemeriksaan_kapal_check" b ON a."pemeriksaan_kapal_check_id" = b."id"
                WHERE
                    a."pemeriksaan_kapal_id" = '${id}'
                ORDER BY
                    b."id"`;

    var output1 = await f.query(query);
    var output = output1.rows;
    var arr = {};
    arr['pk'] = output;

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
    var query = `SELECT * FROM "investigasi_insiden_check"`;

    var output1 = await f.query(query);
    var output = output1.rows;
    var arr = {};
    var y = "x";
    var out = [];
    for (var x in output) {
        var jenis = output[x].jenis;
        var kode = output[x].kode;
        var nama = output[x].nama;
        if (jenis != y) {
            // console.log("lewat sini" + y)
            out = []
            y = jenis
            arr[jenis] = out;
        }
        out.push({ jenis: jenis, kode: kode, nama: nama });
    }
    arr['k'] = out;

    query = `SELECT * FROM "investigasi_insiden" WHERE "id"='${id}'`;
    output1 = await f.query(query);
    output = output1.rows;
    output = output[0];
    for (var a in output) {
        arr[a] = output[a] || "";
    }

    const template = fs.readFileSync('./report/Report-Inspection-Investigasi Insiden.docx');

    const buffer = await createReport({
        template,
        data: arr,
    });

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
    var arr = {}, personil = [], radio = [], tunda = [], kepil = [], pandu = [];

    query = `SELECT
                a.*,
                b."nama",
                '' AS "tingkat",
                '' AS "keterangan"
            FROM
                "sertifikat" a
                INNER JOIN "personil" b ON a."personil_id" = b."id"
            WHERE
                b."cabang_id" = '${cabang}'`;
    output1 = await f.query(query);
    personil = output1.rows;
    radio = output1.rows;


    query = `SELECT
                *
            FROM
                "asset_kapal"
            WHERE
                "cabang_id" = '${cabang}'`;
    output1 = await f.query(query);
    const rows = output1.rows;
    var kepil = [], pandu = [], tunda = [];
    for (var a in rows) {
        if (rows[a].tipe_asset_id == "1") {
            tunda.push(rows[a]);
        }
        if (rows[a].tipe_asset_id == "2") {
            pandu.push(rows[a]);
        }
        if (rows[a].tipe_asset_id == "3") {
            kepil.push(rows[a]);
        }
    }

    arr['personil'] = personil;
    arr['radio'] = radio;
    arr['tunda'] = tunda;
    arr['pandu'] = pandu;
    arr['kepil'] = kepil;


    var d = new Date();
    var t = d.getTime();
    fs.readFile('./report/Report-Inspection-Evaluasi Pelimpahan.xlsx', function async(err, dt) {
        var template = new XlsxTemplate(dt);
        template.substitute(1, arr);
        template.substitute(2, arr);
        template.substitute(3, arr);
        template.substitute(4, arr);
        template.substitute(5, arr);
        var out = template.generate();
        const fileName = './files/reports/evaluasipelimpahan' + t + '.xlsx';
        fs.writeFileSync(fileName, out, 'binary');
        result(null, t + '.xlsx');
    });
};



Report.crewlist = async (req, result, cabang_id) => {
    if (req.fields.date) {
        const date = req.fields.date;
        const date1 = date.split("-");
        var arr = {};

        var query = `SELECT
                b."nama_asset" AS "nama_asset",
                e."nipp" AS "nipp",
                e."nama" AS "personil",
                e."jabatan" AS "jabatan",
                e."nomor_hp" AS "nomor_hp",
                e."manning" AS "manning",
                e."agency" AS "agency",
                c."nama" AS "cabang",
                d."nama" AS "fleet",
                a."keterangan" AS "keterangan_sarana_bantu"
            FROM
                "sarana_bantu_pemandu" a
                INNER JOIN "asset_kapal" b ON a."asset_kapal_id" = b."id"
                INNER JOIN "cabang" c ON a."cabang_id" = c."id"
                INNER JOIN "tipe_asset" d ON b."tipe_asset_id" = d."id"
                LEFT JOIN "personil" e ON a."personil_id" = e."id"
            WHERE a."cabang_id" = '${req.fields.cabang_id || cabang_id}'
                AND e."approval_status_id" = '1'
                AND e."tipe_personil_id" IN ('2', '3', '4')
                AND to_char(a."tanggal_pemeriksaan",'MM')='${date1[1]}' AND to_char(a."tanggal_pemeriksaan",'YYYY')='${date1[0]}'
        `;
        console.log(query);

        var output1 = await f.query(query);
        var output = output1.rows;

        result(null, output);
    } else {
        result(null, { "status": "error no data" });
    }
};


Report.pelaporanmanagement = async (req, result, cabang_id) => {
    console.log(req.fields)
    if (req.fields.date) {
        const date = req.fields.date;
        // const cabang_id = req.fields.cabang_id;
        // var query = `select a.*, round(0.05*pendapatan_pandu,0) pnbp_pandu, round(0.05*pendapatan_tunda,0) pnbp_tunda, round(0.05*pendapatan_pandu,0) + round(0.05*pendapatan_tunda,0) jumlah_pnbp from ( select c.nm_cabang, bkt_pandu.kd_ppkb, to_char(bkt_pandu.jam_pandu_naik,'mm-yyyy') periode, bkt_pandu.no_ukk, bkt_pandu.no_bkt_pandu, pkk.tgl_jam_tiba, bkt_pandu.ppkb_ke, bkt_pandu.draft_depan, bkt_pandu.draft_belakang, ( select mst_kapal.nm_kapal from pkk, mst_kapal_agen, mst_kapal where pkk.no_ukk = bkt_pandu.no_ukk1 and pkk.kd_kapal_agen = mst_kapal_agen.kd_kapal_agen and mst_kapal_agen.kd_kapal = mst_kapal.kd_kapal ) nm_tugboat1, ( select mst_kapal.kp_grt from pkk, mst_kapal_agen, mst_kapal where pkk.no_ukk = bkt_pandu.no_ukk1 and pkk.kd_kapal_agen = mst_kapal_agen.kd_kapal_agen and mst_kapal_agen.kd_kapal = mst_kapal.kd_kapal ) kp_grt_tugboat1, ( select mst_kapal.kp_loa from pkk, mst_kapal_agen, mst_kapal where pkk.no_ukk = bkt_pandu.no_ukk1 and pkk.kd_kapal_agen = mst_kapal_agen.kd_kapal_agen and mst_kapal_agen.kd_kapal = mst_kapal.kd_kapal ) kp_loa_tugboat1, ( select mst_kapal.kd_bendera from pkk, mst_kapal_agen, mst_kapal where pkk.no_ukk = bkt_pandu.no_ukk1 and pkk.kd_kapal_agen = mst_kapal_agen.kd_kapal_agen and mst_kapal_agen.kd_kapal = mst_kapal.kd_kapal ) flag_tugboat1, ( select pkk.draft_depan from pkk, mst_kapal_agen, mst_kapal where pkk.no_ukk = bkt_pandu.no_ukk1 and pkk.kd_kapal_agen = mst_kapal_agen.kd_kapal_agen and mst_kapal_agen.kd_kapal = mst_kapal.kd_kapal ) draft_depan_tugboat1, ( select pkk.draft_belakang from pkk, mst_kapal_agen, mst_kapal where pkk.no_ukk = bkt_pandu.no_ukk1 and pkk.kd_kapal_agen = mst_kapal_agen.kd_kapal_agen and mst_kapal_agen.kd_kapal = mst_kapal.kd_kapal ) draft_belakang_tugboat1, ( select mst_kapal.nm_kapal from pkk, mst_kapal_agen, mst_kapal where pkk.no_ukk = bkt_pandu.no_ukk2 and pkk.kd_kapal_agen = mst_kapal_agen.kd_kapal_agen and mst_kapal_agen.kd_kapal = mst_kapal.kd_kapal ) nm_tugboat2, ( select mst_kapal.kp_grt from pkk, mst_kapal_agen, mst_kapal where pkk.no_ukk = bkt_pandu.no_ukk2 and pkk.kd_kapal_agen = mst_kapal_agen.kd_kapal_agen and mst_kapal_agen.kd_kapal = mst_kapal.kd_kapal ) kp_grt_tugboat2, ( select mst_kapal.kp_grt from pkk, mst_kapal_agen, mst_kapal where pkk.no_ukk = bkt_pandu.no_ukk2 and pkk.kd_kapal_agen = mst_kapal_agen.kd_kapal_agen and mst_kapal_agen.kd_kapal = mst_kapal.kd_kapal ) kp_loa_tugboat2, ( select mst_kapal.kd_bendera from pkk, mst_kapal_agen, mst_kapal where pkk.no_ukk = bkt_pandu.no_ukk2 and pkk.kd_kapal_agen = mst_kapal_agen.kd_kapal_agen and mst_kapal_agen.kd_kapal = mst_kapal.kd_kapal ) flag_tugboat2, ( select pkk.draft_depan from pkk, mst_kapal_agen, mst_kapal where pkk.no_ukk = bkt_pandu.no_ukk2 and pkk.kd_kapal_agen = mst_kapal_agen.kd_kapal_agen and mst_kapal_agen.kd_kapal = mst_kapal.kd_kapal ) draft_depan_tugboat2, ( select pkk.draft_belakang from pkk, mst_kapal_agen, mst_kapal where pkk.no_ukk = bkt_pandu.no_ukk2 and pkk.kd_kapal_agen = mst_kapal_agen.kd_kapal_agen and mst_kapal_agen.kd_kapal = mst_kapal.kd_kapal ) draft_belakang_tugboat2, mst_kapal.nm_kapal, mst_kapal.jn_kapal, mst_kapal.kp_grt, mst_kapal.kp_loa, mst_kapal.kd_bendera, mst_agen.kd_agen, mst_pers_pandu.nm_pers_pandu, to_char (pkk.tgl_jam_tiba, 'dd-mm-yyyy') tgl_tiba, to_char (pkk.tgl_jam_tiba, 'hh24:mi') jam_tiba, to_char (ppkb_pandu.tgl_jam_pmt_pandu_d, 'dd-mm-yyyy') tgl_pmt, to_char (ppkb_pandu.tgl_jam_pmt_pandu_d, 'hh24:mi') jam_pmt, to_char (bkt_pandu.jam_pandu_naik, 'hh24:mi') pnk, to_char (bkt_pandu.jam_kapal_gerak, 'hh24:mi') kb, to_char (bkt_pandu.jam_pandu_naik, 'dd-mm-yyyy hh24:mi') mulai_pelaksanaan, to_char (bkt_pandu.jam_pandu_turun, 'dd-mm-yyyy hh24:mi') selesai_pelaksanaan, f_selisih_jam (bkt_pandu.jam_pandu_naik, bkt_pandu.jam_pandu_turun) pnd, ( case when bkt_pandu.jam_pandu_naik > ppkb_pandu.tgl_jam_pmt_pandu_d then f_selisih_jam (ppkb_pandu.tgl_jam_pmt_pandu_d, bkt_pandu.jam_pandu_naik) else '00:00' end ) wt, ( case when bkt_pandu.kd_gerakan = 1 and ppkb_pandu.tgl_jam_pmt_pandu_d > pkk.tgl_jam_tiba then trunc((ppkb_pandu.tgl_jam_pmt_pandu_d - pkk.tgl_jam_tiba) * 24) || ':' || trunc(((ppkb_pandu.tgl_jam_pmt_pandu_d-pkk.tgl_jam_tiba)* 24 - trunc((ppkb_pandu.tgl_jam_pmt_pandu_d-pkk.tgl_jam_tiba)* 24))* 60) else '00:00' end ) pt, ( case when bkt_pandu.kd_gerakan = 3 and bkt_pandu.jam_pandu_turun > pkk.tgl_jam_tiba then trunc((bkt_pandu.jam_pandu_turun - pkk.tgl_jam_tiba) * 24) || ':' || trunc(((bkt_pandu.jam_pandu_turun - pkk.tgl_jam_tiba)* 24 - trunc((bkt_pandu.jam_pandu_turun-pkk.tgl_jam_tiba) * 24)) * 60) else '00:00' end ) trt, f_selisih_jam (bkt_pandu.jam_pandu_naik, bkt_pandu.jam_pandu_turun) at_jam, ( case bkt_pandu.pandu_dari when '9999' then ( select mst_pelabuhan.nm_pelabuhan from mst_pelabuhan where mst_pelabuhan.kd_pelabuhan = pkk.pelabuhan_sebelum) else bkt_pandu.pandu_dari end ) pandu_dari, ( case bkt_pandu.pandu_ke when '9999' then (select mst_pelabuhan.nm_pelabuhan from mst_pelabuhan where mst_pelabuhan.kd_pelabuhan = pkk.pelabuhan_berikut) else bkt_pandu.pandu_ke end ) pandu_ke, bkt_pandu.kd_gerakan, mst_gerakan.gerakan, bkt_pandu.tgl_mpandu, mst_agen.nm_agen, ( select mst_fasilitas.nm_fas from mst_fasilitas where bkt_tunda.kd_kapal_1 = mst_fasilitas.kd_fas ) nm_kapal_1, ( select mst_fasilitas.nm_fas from mst_fasilitas where bkt_tunda.kd_kapal_2 = mst_fasilitas.kd_fas ) nm_kapal_2, to_char (bkt_tunda.tgl_jam_tiba_kpl1, 'hh24:mi') mulai_tunda, to_char (bkt_tunda.tgl_jam_brngkt_kpl1, 'hh24:mi') selesai_tunda, f_selisih_jam (bkt_tunda.tgl_jam_tiba_kpl1, bkt_tunda.tgl_jam_brngkt_kpl1) lama_tunda, bkt_pandu.ket_pandu, mst_keterangan_pandu.keterangan || ', ' || (select keterangan from kapal_prod.mst_ket_pandu_khusus where kd_keterangan_pandu = bkt_pandu.ket_pandu) as keterangan_pandu, decode ( pkk.kd_pelayaran, '1', 'ln', '2', 'dn', '3', 'rkyt', '4', 'prnts' ) as pelayaran, nvl ( ( select sum(nvl(amount,0)) from kapal_cabang.simkeu_data_nota_tmp a where a.no_ukk = pkk.no_ukk and a.no_bukti = bkt_pandu.no_bkt_pandu and a.type_pelayanan = 'pandu' ), 0 ) pendapatan_pandu, nvl ( ( select sum(nvl(amount,0)) from kapal_cabang.simkeu_data_nota_tmp a where a.no_ukk = pkk.no_ukk and a.no_bukti = bkt_pandu.no_bkt_pandu and a.type_pelayanan = 'tunda' ), 0 ) pendapatan_tunda, mst_dermaga.dermaga from bkt_pandu, bkt_tunda, ppkb_detail, ppkb_pandu, ppkb, pkk, mst_kapal_agen, mst_kapal, mst_pers_pandu, mst_gerakan, mst_agen, mst_keterangan_pandu, mst_cabang c, mst_kade, mst_dermaga WHERE bkt_pandu.no_bkt_pandu = bkt_tunda.no_bkt_tunda(+) and mst_kapal_agen.kd_cabang = c.kd_cabang and bkt_pandu.kd_ppkb = ppkb_detail.kd_ppkb and bkt_pandu.ppkb_ke = ppkb_detail.ppkb_ke and bkt_pandu.kd_ppkb = ppkb_pandu.kd_ppkb and bkt_pandu.ppkb_ke = ppkb_pandu.ppkb_ke and bkt_pandu.kd_ppkb = ppkb.kd_ppkb and ppkb.no_ukk = pkk.no_ukk and pkk.kd_kapal_agen = mst_kapal_agen.kd_kapal_agen and mst_kapal_agen.kd_kapal = mst_kapal.kd_kapal and (bkt_pandu.kd_pers_pandu = mst_pers_pandu.kd_pers_pandu and SUBSTR(bkt_pandu.kd_ppkb, 5, 2) = mst_pers_pandu.KD_CABANG) and bkt_pandu.kd_gerakan = mst_gerakan.kd_gerakan and mst_kapal_agen.kd_agen = mst_agen.kd_agen and bkt_pandu.ket_pandu = mst_keterangan_pandu.kd_keterangan_pandu and ppkb_detail.kade_tujuan = mst_kade.kd_kade and mst_kade.kd_dermaga=mst_dermaga.kd_dermaga and to_char(bkt_pandu.jam_pandu_naik,'YYYY-MM') in ('${date}') and  c.kd_cabang in ('${cabang_id}') ) a order by a.kd_ppkb`;
        var query = `SELECT NM_CABANG FROM MST_CABANG`;
        var output1 = await f.querySimop(query);
        var brow = output1.rows
        var no = 1;
        for (var a in brow) {
            brow[a]['no'] = no;
            brow[a]['gr_k_dn'] = 0;
            brow[a]['gr_k_ln'] = 0;
            brow[a]['gr_u_dn'] = 0;
            brow[a]['u_k_dn'] = 0;
            brow[a]['u_k_ln'] = 0;
            brow[a]['u_u_dn'] = 0;
            brow[a]['u_u_ln'] = 0;
            brow[a]['pd_k_dn'] = 0;
            brow[a]['pd_k_ln'] = 0;
            brow[a]['pd_u_dn'] = 0;
            brow[a]['pd_u_ln'] = 0;
            brow[a]['gt_k_dn'] = 0;
            brow[a]['gt_k_ln'] = 0;
            brow[a]['gt_u_dn'] = 0;
            brow[a]['gt_u_ln'] = 0;
            no++;
        }


        query = `SELECT NM_CABANG, PELAYARAN, DERMAGA, COUNT(KD_PPKB) AS JUMLAH_PELAYARAN FROM (
                ${query_asli}                
            ) a GROUP BY NM_CABANG, PELAYARAN, DERMAGA                
            ORDER BY NM_CABANG, PELAYARAN`;
        var gr_u_dn = 0, gr_u_ln = 0, gr_k_dn = 0, gr_k_ln = 0, u_k_dn = 0, u_k_ln = 0, u_u_dn = 0, u_u_ln = 0, pd_k_dn = 0, pd_k_ln = 0, pd_u_dn = 0, pd_u_ln = 0, gt_k_dn = 0, gt_k_ln = 0, gt_u_dn = 0, gt_u_ln = 0;
        output1 = await f.querySimop(query);
        var arr = {};
        var getRow = output1.rows;
        var cb = "";
        for (var a in getRow) {
            const cabang = getRow[a].NM_CABANG;
            const pelayaran = getRow[a].PELAYARAN;
            const dermaga = getRow[a].DERMAGA;
            if (cb != cabang) {
                var arr_hor = {};
                for (var b in brow) {
                    if (brow[b].NM_CABANG == cabang) {
                        brow[b]['gr_k_dn'] = gr_k_dn;
                        brow[b]['gr_k_ln'] = gr_k_ln;
                        brow[b]['gr_u_dn'] = gr_u_dn;
                        brow[b]['gr_u_ln'] = gr_u_ln;
                    }
                }

                cb = cabang;
            }

            if (pelayaran == "dn" && dermaga == "Khusus") {
                gr_k_dn = getRow[a].JUMLAH_PELAYARAN;
            }

            if (pelayaran == "ln" && dermaga == "Khusus") {
                gr_k_ln = getRow[a].JUMLAH_PELAYARAN;
            }

            if (pelayaran == "dn" && dermaga == "Umum") {
                gr_u_ln = getRow[a].JUMLAH_PELAYARAN;
            }

            if (pelayaran == "ln" && dermaga == "Umum") {
                gr_u_ln = getRow[a].JUMLAH_PELAYARAN;
            }
        }

        query = `SELECT NM_CABANG, PELAYARAN, DERMAGA, COUNT(KD_PPKB) AS JUMLAH_PELAYARAN FROM (
                SELECT NM_CABANG, PELAYARAN, DERMAGA, KD_PPKB FROM (
                    ${query_asli}                
                ) a
                GROUP BY NM_CABANG, PELAYARAN, DERMAGA, KD_PPKB
            ) a GROUP BY NM_CABANG, PELAYARAN, DERMAGA
            ORDER BY NM_CABANG, PELAYARAN, DERMAGA`;
        output1 = await f.querySimop(query);
        getRow = output1.rows;
        cb = "";
        for (var a in getRow) {
            const cabang = getRow[a].NM_CABANG;
            const pelayaran = getRow[a].PELAYARAN;
            const dermaga = getRow[a].DERMAGA;
            if (cb != cabang) {
                var arr_hor = {};
                for (var b in brow) {
                    if (brow[b].NM_CABANG == cabang) {
                        brow[b]['u_k_dn'] = u_k_dn;
                        brow[b]['u_k_ln'] = u_k_ln;
                        brow[b]['u_u_dn'] = u_u_dn;
                        brow[b]['u_u_ln'] = u_u_ln;
                    }
                }

                cb = cabang;
            }

            if (pelayaran == "dn" && dermaga == "Khusus") {
                u_k_dn = getRow[a].JUMLAH_PELAYARAN;
            }

            if (pelayaran == "ln" && dermaga == "Khusus") {
                u_k_ln = getRow[a].JUMLAH_PELAYARAN;
            }

            if (pelayaran == "dn" && dermaga == "Umum") {
                u_u_ln = getRow[a].JUMLAH_PELAYARAN;
            }

            if (pelayaran == "ln" && dermaga == "Umum") {
                u_u_ln = getRow[a].JUMLAH_PELAYARAN;
            }
        }


        query = `SELECT NM_CABANG, PELAYARAN, DERMAGA, SUM(pendapatan_pandu) + SUM(pendapatan_tunda) AS JUMLAH_PELAYARAN FROM (
                    ${query_asli}                
             ) a
            GROUP BY NM_CABANG, PELAYARAN, DERMAGA`;
        output1 = await f.querySimop(query);
        getRow = output1.rows;
        cb = "";
        for (var a in getRow) {
            const cabang = getRow[a].NM_CABANG;
            const pelayaran = getRow[a].PELAYARAN;
            const dermaga = getRow[a].DERMAGA;
            if (cb != cabang) {
                var arr_hor = {};
                for (var b in brow) {
                    if (brow[b].NM_CABANG == cabang) {
                        brow[b]['pd_k_dn'] = pd_k_dn;
                        brow[b]['pd_k_ln'] = pd_k_ln;
                        brow[b]['pd_u_dn'] = pd_u_dn;
                        brow[b]['pd_u_ln'] = pd_u_ln;
                    }
                }

                cb = cabang;
            }

            if (pelayaran == "dn" && dermaga == "Khusus") {
                pd_k_dn = getRow[a].JUMLAH_PELAYARAN;
            }

            if (pelayaran == "ln" && dermaga == "Khusus") {
                pd_k_ln = getRow[a].JUMLAH_PELAYARAN;
            }

            if (pelayaran == "dn" && dermaga == "Umum") {
                pd_u_ln = getRow[a].JUMLAH_PELAYARAN;
            }

            if (pelayaran == "ln" && dermaga == "Umum") {
                pd_u_ln = getRow[a].JUMLAH_PELAYARAN;
            }
        }

        query = `SELECT NM_CABANG, PELAYARAN, DERMAGA, COUNT(KP_GRT) AS JUMLAH_PELAYARAN FROM (
                ${query_asli}                
                ) a GROUP BY NM_CABANG, PELAYARAN, DERMAGA                
                ORDER BY NM_CABANG, PELAYARAN`;
        output1 = await f.querySimop(query);
        getRow = output1.rows;
        cb = "";
        for (var a in getRow) {
            const cabang = getRow[a].NM_CABANG;
            const pelayaran = getRow[a].PELAYARAN;
            const dermaga = getRow[a].DERMAGA;
            if (cb != cabang) {
                var arr_hor = {};
                for (var b in brow) {
                    if (brow[b].NM_CABANG == cabang) {
                        brow[b]['gt_k_dn'] = gt_k_dn;
                        brow[b]['gt_k_ln'] = gt_k_ln;
                        brow[b]['gt_u_dn'] = gt_u_dn;
                        brow[b]['gt_u_ln'] = gt_u_ln;
                    }
                }

                cb = cabang;
            }

            if (pelayaran == "dn" && dermaga == "Khusus") {
                gt_k_dn = getRow[a].JUMLAH_PELAYARAN;
            }

            if (pelayaran == "ln" && dermaga == "Khusus") {
                gt_k_ln = getRow[a].JUMLAH_PELAYARAN;
            }

            if (pelayaran == "dn" && dermaga == "Umum") {
                gt_u_ln = getRow[a].JUMLAH_PELAYARAN;
            }

            if (pelayaran == "ln" && dermaga == "Umum") {
                gt_u_ln = getRow[a].JUMLAH_PELAYARAN;
            }
        }


        arr['global'] = brow;

        // console.log(brow)

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

        // result(null, output1.rows);
    } else {
        result(null, { "status": "error no data" });
    }
};


Report.pelaporantunda = async (req, result, cabang_id) => {

    if (req.fields.date) {
        const date = req.fields.date, cabang = req.fields.cabang_id < 10 ? "0" + req.fields.cabang_id.toString() : req.fields.cabang_id;;
        var arr = {}, query = queryTunda(cabang, date, cabang == "01" ? "KAPAL_PROD." : "");
        query = `SELECT ROWNUM NO, a.* FROM (${query}) a`;
        console.log(query);
        var output1 = await f.querySimop(query);

        arr['global'] = output1.rows;
        arr['cabang'] = await getCabang(parseInt(cabang));
        arr['date'] = moment().month(date.substring(0, 4)).format("MMMM") + " " + moment().month(date.substring(5, 7)).format("YYYY");

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

        result(null, output1.rows);
    } else {
        result(null, { "status": "error no data" });
    }

};


Report.pelaporanpandu = async (req, result, cabang_id) => {
    if (req.fields.date) {
        const date = req.fields.date, cabang = req.fields.cabang_id < 10 ? "0" + req.fields.cabang_id.toString() : req.fields.cabang_id;;
        var arr = {}, query = queryPandu(cabang, date, cabang == "01" ? "KAPAL_PROD." : "");
        query = `SELECT ROWNUM NO, a.* FROM (${query}) a`;
        var output1 = await f.querySimop(query);

        arr['global'] = output1.rows;
        arr['cabang'] = await getCabang(parseInt(cabang));
        arr['date'] = moment().month(date.substring(0, 4)).format("MMMM") + " " + moment().month(date.substring(5, 7)).format("YYYY");

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

        result(null, output1.rows);
    } else {
        result(null, { "status": "error no data" });
    }
};


Report.pilotship = async (req, result, cabang_id) => {
    if (req.fields.date) {
        const date = req.fields.date;
        const date1 = date.split("-");

        var query = `SELECT a."date", a."id", b."tunda", c."pandu", d."kepil" FROM (
                        SELECT MAX(c."nama") as "nama", a."date", MAX(a."id") AS "id" FROM "armada_schedule" a
                        INNER JOIN "armada_jaga" b ON a."id" = b."armada_schedule_id"
                        INNER JOIN "personil" c ON c."asset_kapal_id" = b."asset_kapal_id"
                        WHERE a."cabang_id" = '5'
                        GROUP BY c."id", a."date"
                    ) a
                    LEFT JOIN (
                        SELECT c."nama_asset" AS "tunda", a."id" FROM "armada_schedule" a
                        INNER JOIN "armada_jaga" b ON a."id" = b."armada_schedule_id"
                        INNER JOIN "asset_kapal" c ON c."id" = b."asset_kapal_id"
                        WHERE a."tipe_asset_id" = '1' --tunda
                        AND a."cabang_id" = '5'
                    ) b ON a."id" = b."id"
                    LEFT JOIN (
                        SELECT c."nama_asset" AS "pandu", a."id" FROM "armada_schedule" a
                        INNER JOIN "armada_jaga" b ON a."id" = b."armada_schedule_id"
                        INNER JOIN "asset_kapal" c ON c."id" = b."asset_kapal_id"
                        WHERE a."tipe_asset_id" = '2' --kepil
                        AND a."cabang_id" = '5'
                    ) c ON a."id" = c."id"
                    LEFT JOIN (
                        SELECT c."nama_asset" AS "kepil", a."id" FROM "armada_schedule" a
                        INNER JOIN "armada_jaga" b ON a."id" = b."armada_schedule_id"
                        INNER JOIN "asset_kapal" c ON c."id" = b."asset_kapal_id"
                        WHERE a."tipe_asset_id" = '3' --kepil
                        AND a."cabang_id" = '5'
                    ) d ON a."id" = d."id"
        `;

        var output1 = await f.query(query);
        var output = output1.rows;

        result(null, output);
    } else {
        result(null, { "status": "error no data" });
    }
};


Report.personelpeformance = async (req, result, cabang_id) => {
    console.log(req.fields)
    if (req.fields.date) {
        const date = req.fields.date;
        const cabang = req.fields.cabang_id;

        var query = `
            SELECT NM_PERS_PANDU AS "nm_pers_pandu", COUNT(NM_PERS_PANDU) AS "gerakan", '2000' AS "total_gt", '1500' AS "waiting_time" FROM (
                ${query_asli}
            ) a
            WHERE a.kd_cabang='${cabang}'
            GROUP BY NM_PERS_PANDU
        `;

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

        var query = `
            SELECT a.NM_KAPAL AS "nm_kapal", COUNT(a.NM_KAPAL) AS "gerakan", '1500' AS "total_waktu" FROM (
                ${query_asli}
            ) a
            WHERE a.kd_cabang='${cabang}'
            GROUP BY a.NM_KAPAL
        `;

        var output1 = await f.querySimop(query);
        var output = output1.rows;

        result(null, output);
    } else {
        result(null, { "status": "error no data" });
    }
};

module.exports = Report;


const f = require('../controllers/function');
const fs = require('fs');
var moment = require('moment');
var XlsxTemplate = require('xlsx-template');
const createReport = require('docx-templates').default;
const { version } = require('moment');
var query_asli = `SELECT a.*, round( 0.05 * pendapatan_pandu, 0 ) pnbp_pandu, round( 0.05 * pendapatan_tunda, 0 ) pnbp_tunda, round( 0.05 * pendapatan_pandu, 0 ) + round( 0.05 * pendapatan_tunda, 0 ) jumlah_pnbp FROM (SELECT c.kd_cabang, c.nm_cabang, bkt_pandu.kd_ppkb, to_char( bkt_pandu.jam_pandu_naik, 'mm-yyyy' ) periode, bkt_pandu.no_ukk, bkt_pandu.no_bkt_pandu, pkk.tgl_jam_tiba, bkt_pandu.ppkb_ke, bkt_pandu.draft_depan, bkt_pandu.draft_belakang, (SELECT mst_kapal.nm_kapal FROM pkk, mst_kapal_agen, mst_kapal WHERE pkk.no_ukk = bkt_pandu.no_ukk1 AND pkk.kd_kapal_agen = mst_kapal_agen.kd_kapal_agen AND mst_kapal_agen.kd_kapal = mst_kapal.kd_kapal ) nm_tugboat1, (SELECT mst_kapal.kp_grt FROM pkk, mst_kapal_agen, mst_kapal WHERE pkk.no_ukk = bkt_pandu.no_ukk1 AND pkk.kd_kapal_agen = mst_kapal_agen.kd_kapal_agen AND mst_kapal_agen.kd_kapal = mst_kapal.kd_kapal ) kp_grt_tugboat1, (SELECT mst_kapal.kp_loa FROM pkk, mst_kapal_agen, mst_kapal WHERE pkk.no_ukk = bkt_pandu.no_ukk1 AND pkk.kd_kapal_agen = mst_kapal_agen.kd_kapal_agen AND mst_kapal_agen.kd_kapal = mst_kapal.kd_kapal ) kp_loa_tugboat1, (SELECT mst_kapal.kd_bendera FROM pkk, mst_kapal_agen, mst_kapal WHERE pkk.no_ukk = bkt_pandu.no_ukk1 AND pkk.kd_kapal_agen = mst_kapal_agen.kd_kapal_agen AND mst_kapal_agen.kd_kapal = mst_kapal.kd_kapal ) flag_tugboat1, (SELECT pkk.draft_depan FROM pkk, mst_kapal_agen, mst_kapal WHERE pkk.no_ukk = bkt_pandu.no_ukk1 AND pkk.kd_kapal_agen = mst_kapal_agen.kd_kapal_agen AND mst_kapal_agen.kd_kapal = mst_kapal.kd_kapal ) draft_depan_tugboat1, (SELECT pkk.draft_belakang FROM pkk, mst_kapal_agen, mst_kapal WHERE pkk.no_ukk = bkt_pandu.no_ukk1 AND pkk.kd_kapal_agen = mst_kapal_agen.kd_kapal_agen AND mst_kapal_agen.kd_kapal = mst_kapal.kd_kapal ) draft_belakang_tugboat1, (SELECT mst_kapal.nm_kapal FROM pkk, mst_kapal_agen, mst_kapal WHERE pkk.no_ukk = bkt_pandu.no_ukk2 AND pkk.kd_kapal_agen = mst_kapal_agen.kd_kapal_agen AND mst_kapal_agen.kd_kapal = mst_kapal.kd_kapal ) nm_tugboat2, (SELECT mst_kapal.kp_grt FROM pkk, mst_kapal_agen, mst_kapal WHERE pkk.no_ukk = bkt_pandu.no_ukk2 AND pkk.kd_kapal_agen = mst_kapal_agen.kd_kapal_agen AND mst_kapal_agen.kd_kapal = mst_kapal.kd_kapal ) kp_grt_tugboat2, (SELECT mst_kapal.kp_grt FROM pkk, mst_kapal_agen, mst_kapal WHERE pkk.no_ukk = bkt_pandu.no_ukk2 AND pkk.kd_kapal_agen = mst_kapal_agen.kd_kapal_agen AND mst_kapal_agen.kd_kapal = mst_kapal.kd_kapal ) kp_loa_tugboat2, (SELECT mst_kapal.kd_bendera FROM pkk, mst_kapal_agen, mst_kapal WHERE pkk.no_ukk = bkt_pandu.no_ukk2 AND pkk.kd_kapal_agen = mst_kapal_agen.kd_kapal_agen AND mst_kapal_agen.kd_kapal = mst_kapal.kd_kapal ) flag_tugboat2, (SELECT pkk.draft_depan FROM pkk, mst_kapal_agen, mst_kapal WHERE pkk.no_ukk = bkt_pandu.no_ukk2 AND pkk.kd_kapal_agen = mst_kapal_agen.kd_kapal_agen AND mst_kapal_agen.kd_kapal = mst_kapal.kd_kapal ) draft_depan_tugboat2, (SELECT pkk.draft_belakang FROM pkk, mst_kapal_agen, mst_kapal WHERE pkk.no_ukk = bkt_pandu.no_ukk2 AND pkk.kd_kapal_agen = mst_kapal_agen.kd_kapal_agen AND mst_kapal_agen.kd_kapal = mst_kapal.kd_kapal ) draft_belakang_tugboat2, mst_kapal.nm_kapal, mst_kapal.jn_kapal, mst_kapal.kp_grt, mst_kapal.kp_loa, mst_kapal.kd_bendera, mst_agen.kd_agen, mst_pers_pandu.nm_pers_pandu, to_char( pkk.tgl_jam_tiba, 'dd-mm-yyyy' ) tgl_tiba, to_char( pkk.tgl_jam_tiba, 'hh24:mi' ) jam_tiba, to_char( ppkb_pandu.tgl_jam_pmt_pandu_d, 'dd-mm-yyyy' ) tgl_pmt, to_char( ppkb_pandu.tgl_jam_pmt_pandu_d, 'hh24:mi' ) jam_pmt, to_char( bkt_pandu.jam_pandu_naik, 'hh24:mi' ) pnk, to_char( bkt_pandu.jam_kapal_gerak, 'hh24:mi' ) kb, bkt_pandu.jam_pandu_naik,  to_char( bkt_pandu.jam_pandu_naik, 'dd-mm-yyyy hh24:mi' ) mulai_pelaksanaan, to_char( bkt_pandu.jam_pandu_turun, 'dd-mm-yyyy hh24:mi' ) selesai_pelaksanaan, f_selisih_jam ( bkt_pandu.jam_pandu_naik, bkt_pandu.jam_pandu_turun ) pnd, round((bkt_pandu.jam_pandu_turun - bkt_pandu.jam_pandu_naik) * 24*60) pnd_minute, ( CASE WHEN bkt_pandu.jam_pandu_naik > ppkb_pandu.tgl_jam_pmt_pandu_d THEN f_selisih_jam ( ppkb_pandu.tgl_jam_pmt_pandu_d, bkt_pandu.jam_pandu_naik ) ELSE '00:00' END ) wt, round( ( bkt_pandu.jam_pandu_naik - ppkb_pandu.tgl_jam_pmt_pandu_d ) * 24 * 60 ) wt_minute,(CASE WHEN bkt_pandu.kd_gerakan = 1 AND ppkb_pandu.tgl_jam_pmt_pandu_d > pkk.tgl_jam_tiba THEN trunc( ( ppkb_pandu.tgl_jam_pmt_pandu_d - pkk.tgl_jam_tiba ) * 24 ) || ':' || trunc(( ( ppkb_pandu.tgl_jam_pmt_pandu_d - pkk.tgl_jam_tiba ) * 24 - trunc( ( ppkb_pandu.tgl_jam_pmt_pandu_d - pkk.tgl_jam_tiba ) * 24 ) ) * 60 ) ELSE '00:00'END ) pt, (CASE WHEN bkt_pandu.kd_gerakan = 3 AND bkt_pandu.jam_pandu_turun > pkk.tgl_jam_tiba THEN trunc( ( bkt_pandu.jam_pandu_turun - pkk.tgl_jam_tiba ) * 24 ) || ':' || trunc(( ( bkt_pandu.jam_pandu_turun - pkk.tgl_jam_tiba ) * 24 - trunc( ( bkt_pandu.jam_pandu_turun - pkk.tgl_jam_tiba ) * 24 ) ) * 60 ) ELSE '00:00'END ) trt, f_selisih_jam ( bkt_pandu.jam_pandu_naik, bkt_pandu.jam_pandu_turun ) at_jam, (CASE bkt_pandu.pandu_dari WHEN '9999' THEN ( SELECT mst_pelabuhan.nm_pelabuhan FROM mst_pelabuhan WHERE mst_pelabuhan.kd_pelabuhan = pkk.pelabuhan_sebelum ) ELSE bkt_pandu.pandu_dari END ) pandu_dari, (CASE bkt_pandu.pandu_ke WHEN '9999' THEN ( SELECT mst_pelabuhan.nm_pelabuhan FROM mst_pelabuhan WHERE mst_pelabuhan.kd_pelabuhan = pkk.pelabuhan_berikut ) ELSE bkt_pandu.pandu_ke END ) pandu_ke, bkt_pandu.kd_gerakan, mst_gerakan.gerakan, bkt_pandu.tgl_mpandu, mst_agen.nm_agen, ( SELECT mst_fasilitas.nm_fas FROM mst_fasilitas WHERE bkt_tunda.kd_kapal_1 = mst_fasilitas.kd_fas ) nm_kapal_1, ( SELECT mst_fasilitas.daya FROM mst_fasilitas WHERE bkt_tunda.kd_kapal_1 = mst_fasilitas.kd_fas ) hp_kapal_1, ( SELECT mst_fasilitas.nm_fas FROM mst_fasilitas WHERE bkt_tunda.kd_kapal_2 = mst_fasilitas.kd_fas ) nm_kapal_2, ( SELECT mst_fasilitas.daya FROM mst_fasilitas WHERE bkt_tunda.kd_kapal_2 = mst_fasilitas.kd_fas ) hp_kapal_2, to_char( bkt_tunda.tgl_jam_tiba_kpl1, 'hh24:mi' ) mulai_tunda, to_char( bkt_tunda.tgl_jam_brngkt_kpl1, 'hh24:mi' ) selesai_tunda, f_selisih_jam ( bkt_tunda.tgl_jam_tiba_kpl1, bkt_tunda.tgl_jam_brngkt_kpl1 ) lama_tunda, bkt_pandu.ket_pandu, mst_keterangan_pandu.keterangan || ', ' || ( SELECT keterangan FROM kapal_prod.mst_ket_pandu_khusus WHERE kd_keterangan_pandu = bkt_pandu.ket_pandu ) AS keterangan_pandu, decode( pkk.kd_pelayaran, '1', 'ln', '2', 'dn', '3', 'rkyt', '4', 'prnts' ) AS pelayaran, nvl((SELECT sum( nvl( amount, 0 ) ) FROM kapal_cabang.simkeu_data_nota_tmp a WHERE a.no_ukk = pkk.no_ukk AND a.no_bukti = bkt_pandu.no_bkt_pandu AND a.type_pelayanan = 'pandu'), 0 ) pendapatan_pandu, nvl((SELECT sum( nvl( amount, 0 ) ) FROM kapal_cabang.simkeu_data_nota_tmp a WHERE a.no_ukk = pkk.no_ukk AND a.no_bukti = bkt_pandu.no_bkt_pandu AND a.type_pelayanan = 'tunda'), 0 ) pendapatan_tunda, mst_dermaga.dermaga FROM bkt_pandu, bkt_tunda, ppkb_detail, ppkb_pandu, ppkb, pkk, mst_kapal_agen, mst_kapal, mst_pers_pandu, mst_gerakan, mst_agen, mst_keterangan_pandu, mst_cabang c, mst_kade, mst_dermaga WHERE bkt_pandu.no_bkt_pandu = bkt_tunda.no_bkt_tunda ( + ) AND mst_kapal_agen.kd_cabang = c.kd_cabang AND bkt_pandu.kd_ppkb = ppkb_detail.kd_ppkb AND bkt_pandu.ppkb_ke = ppkb_detail.ppkb_ke AND bkt_pandu.kd_ppkb = ppkb_pandu.kd_ppkb AND bkt_pandu.ppkb_ke = ppkb_pandu.ppkb_ke AND bkt_pandu.kd_ppkb = ppkb.kd_ppkb AND ppkb.no_ukk = pkk.no_ukk AND pkk.kd_kapal_agen = mst_kapal_agen.kd_kapal_agen AND mst_kapal_agen.kd_kapal = mst_kapal.kd_kapal AND ( bkt_pandu.kd_pers_pandu = mst_pers_pandu.kd_pers_pandu AND SUBSTR( bkt_pandu.kd_ppkb, 5, 2 ) = mst_pers_pandu.KD_CABANG ) AND bkt_pandu.kd_gerakan = mst_gerakan.kd_gerakan AND mst_kapal_agen.kd_agen = mst_agen.kd_agen AND bkt_pandu.ket_pandu = mst_keterangan_pandu.kd_keterangan_pandu AND ppkb_detail.kade_tujuan = mst_kade.kd_kade AND mst_kade.kd_dermaga = mst_dermaga.kd_dermaga ) a`;
const Report = function (report) {
    this.nama = report.nama;
};

const queryPandu = function (cabang, date, dbCabang = "") {
    return `SELECT KD_PROSES, NM_PERS_PANDU, SUM( GERAKAN_DN ) AS GERAKAN_DN, SUM( GERAKAN_LN ) AS GERAKAN_LN, ( SUM( GERAKAN_DN ) + SUM( GERAKAN_LN ) ) AS TOTAL_GERAKAN, SUM( GT_DN ) AS GT_DN, SUM( GT_LN ) AS GT_LN, ( SUM( GT_DN ) + SUM( GT_LN ) ) AS TOTAL_GT, TRUNC( SUM( LAMA_PANDU_DN ) / 60 ) AS LAMA_PANDU_DN, TRUNC( SUM( LAMA_PANDU_LN ) / 60 ) AS LAMA_PANDU_LN, TRUNC( ( SUM( LAMA_PANDU_DN ) + SUM( LAMA_PANDU_LN ) ) / 60 ) AS TOTAL_LAMA_PANDU, TRUNC( SUM( WT_DN ) / 60 ) AS WT_DN, TRUNC( SUM( WT_LN ) / 60 ) AS WT_LN, TRUNC( ( SUM( WT_DN ) + SUM( WT_LN ) ) / 60 ) AS TOTAL_WT, SUM( PENDAPATAN_PANDU ) AS TOTAL_PENDAPATAN_PANDU, ROUND( 0.05 * SUM( PENDAPATAN_PANDU ), 0 ) AS PNBP_TOTAL_PENDAPATAN_PANDU FROM ${dbCabang}V_PRODUKSI_PEMANDUAN_KAPAL WHERE SUBSTR(KD_PPKB, 5, 2) = '${cabang}' AND TO_CHAR(TGL_PRODUKSI, 'YYYY-MM') = '${date}' AND TO_NUMBER( KD_PROSES ) >= 3 AND TO_NUMBER( KD_PROSES ) <= 6 GROUP BY KD_PERS_PANDU, KD_PROSES, NM_PERS_PANDU ORDER BY NM_PERS_PANDU`;
};

const queryTunda = function (cabang, date, dbCabang = "") {
    return `SELECT NM_KPL, SUM( GERAKAN_DN ) AS GERAKAN_DN, SUM( GERAKAN_LN ) AS GERAKAN_LN, SUM(TOTAL_GERAKAN) AS TOTAL_GERAKAN, SUM(LAMA_TUNDA_KPL) AS LAMA_TUNDA_KPL, SUM(PENDAPATAN_PER_HP) AS PENDAPATAN_PER_HP, SUM(PENDAPATAN_TOTAL_KPL) AS PENDAPATAN_TOTAL_KPL, SUM(PNBP_PER_HP) AS PNBP_PER_HP, SUM(PNBP_TOTAL_KPL) AS PNBP_TOTAL_KPL FROM (SELECT KD_PROSES, NM_KPL, HP_KPL, SUM( GERAKAN_DN ) AS GERAKAN_DN, SUM( GERAKAN_LN ) AS GERAKAN_LN, ( SUM( GERAKAN_DN ) + SUM( GERAKAN_LN ) ) AS TOTAL_GERAKAN, TRUNC( SUM( LAMA_TUNDA_KPL ) / 60 ) AS LAMA_TUNDA_KPL, NVL( SUM( PENDAPATAN_PER_HP ), 0 ) AS PENDAPATAN_PER_HP, NVL( SUM( PENDAPATAN_TOTAL_KPL ), 0 ) AS PENDAPATAN_TOTAL_KPL, ROUND( 0.05 * NVL( SUM( PENDAPATAN_PER_HP ), 0 ) ) AS PNBP_PER_HP, ROUND( 0.05 * NVL( SUM( PENDAPATAN_TOTAL_KPL ), 0 ) ) AS PNBP_TOTAL_KPL FROM ${dbCabang}V_PRODUKSI_KAPAL_TUNDA_CT WHERE SUBSTR(KD_PPKB, 5, 2) = '${cabang}' AND TO_CHAR(TGL_PRODUKSI, 'YYYY-MM') = '${date}' AND TO_NUMBER( KD_PROSES ) >= 3 AND TO_NUMBER( KD_PROSES ) <= 6 GROUP BY KD_PROSES, NM_KPL, HP_KPL) a GROUP BY NM_KPL ORDER BY NM_KPL`;
};

const getCabang = async function (cabang) {
    const query = `SELECT "nama" FROM "cabang" WHERE "id" ='${cabang}'`;
    const output1 = await f.query(query);
    const output = output1.rows;
    // console.log(output[0].nama);
    return output[0].nama;
};


Report.saranabantupemandu = async (id, result, cabang_id) => {
    var query = `SELECT d."nama", a."jabatan", a."status_ijazah_id", a."tipe_asset_id", b."nama_asset", b."tahun_pembuatan",
        b."negara_pembuat", b."horse_power", b."kecepatan", c."nama" AS "cabang", a."pelaksana", a."tanggal_pemeriksaan" FROM "sarana_bantu_pemandu" a
        INNER JOIN "asset_kapal" b ON a."asset_kapal_id" = b."id" INNER JOIN "cabang" c ON a."cabang_id" = c."id" INNER JOIN "personil" d ON a."personil_id" = d."id" WHERE a."id" = '${id}'`;
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
                    ROWNUM "NO",
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

    query = `SELECT b."nama", c."nama_asset" FROM "pemeriksaan_kapal" a INNER JOIN "cabang" b ON a."cabang_id" = b."id" INNER JOIN "asset_kapal" c ON a."asset_kapal_id" = c."id" WHERE a."id" = '${id}'`;
    output1 = await f.query(query);
    var arr = {};
    arr['cabang'] = output1.rows[0].nama;
    arr['kapal'] = output1.rows[0].nama_asset;
    // console.log(cabang);
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

    query = `SELECT * FROM "evaluasi_pelimpahan" WHERE "id" = '${id}'`;
    output1 = await f.query(query);
    EP = output1.rows;

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
    arr['ep'] = ep;
    arr['personil'] = personil;
    arr['radio'] = radio;
    arr['tunda'] = tunda;
    arr['pandu'] = pandu;
    arr['kepil'] = kepil;
    // console.log(arr.tunda);


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
    if (req.fields.cabang_id) {
        // const date = req.fields.date;
        // const date1 = date.split("-");
        var arr = {};

        var query = `
        SELECT ROWNUM as no, z.*
        FROM (
            SELECT 
            b."nama_asset" AS "nama_asset",
            a."nipp" AS "nipp",
            a."nama" AS "personil",
            a."jabatan" AS "jabatan",
            a."nomor_hp" AS "nomor_hp",
            a."manning" AS "manning",
            a."agency" AS "agency",
            c."nama" AS "cabang",
            a."tipe_personil_id",
            d."nama" AS "fleet"
            
            from "personil" a 
            INNER JOIN "asset_kapal" b ON a."asset_kapal_id" = b."id" 
            INNER JOIN "cabang" c ON a."cabang_id" = c."id"
            INNER JOIN "tipe_asset" d ON b."tipe_asset_id" = d."id"
            where a."tipe_personil_id" IN (2,3,4) 
            AND a."approval_status_id" = '1' 
            AND a."cabang_id" = '${req.fields.cabang_id || cabang_id}'
        ) z
            
        `;

        var output1 = await f.query(query);
        var output = output1.rows;
        arr['pandu'] = output;

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
    } else {
        result(null, { "status": "error no data" });
    }
};


Report.pelaporanmanagement = async (req, result, cabang_id) => {
    if (req.fields.date) {
        const date = req.fields.date;

        var arr = {};
        query = `SELECT a.*, b.GERAKAN, c.PENDAPATAN_PANDU, d.PENDAPATAN_TUNDA FROM (
                    SELECT NM_CABANG, DERMAGA, PELAYARAN, COUNT(UNIT) AS UNIT, SUM(GT) AS GT FROM (
                        SELECT
                            NM_CABANG, KD_PPKB AS UNIT, DERMAGA, PELAYARAN, COUNT(KD_PPKB), SUM(KP_GRT) AS GT
                        FROM
                            V_SIMPANDA_PEL_MANAJEMEN
                        WHERE
                            TO_CHAR(JAM_PANDU_NAIK, 'YYYY-MM') = '${date}'
                            AND PELAYARAN IN ('dn', 'ln')
                            GROUP BY NM_CABANG,KD_PPKB, DERMAGA, PELAYARAN
                    ) a
                    GROUP BY NM_CABANG, DERMAGA, PELAYARAN
                    ORDER BY NM_CABANG, DERMAGA, PELAYARAN
                ) a
                LEFT JOIN (
                    SELECT
                        NM_CABANG, DERMAGA, PELAYARAN, COUNT(KD_PPKB) AS GERAKAN
                    FROM
                        V_SIMPANDA_PEL_MANAJEMEN
                    WHERE
                        TO_CHAR(JAM_PANDU_NAIK, 'YYYY-MM') = '${date}'
                        AND PELAYARAN IN ('dn', 'ln')
                    GROUP BY NM_CABANG, DERMAGA, PELAYARAN
                    ORDER BY NM_CABANG, PELAYARAN
                ) b ON a.NM_CABANG = b.NM_CABANG AND a.DERMAGA = b.DERMAGA AND a.PELAYARAN = b.PELAYARAN
                LEFT JOIN (
                    SELECT
                        NM_CABANG, DERMAGA, PELAYARAN, SUM(PENDAPATAN_PANDU) AS PENDAPATAN_PANDU
                    FROM
                        V_SIMPANDA_PEL_MANAJEMEN
                    WHERE
                        TO_CHAR(JAM_PANDU_NAIK, 'YYYY-MM') = '${date}'
                        AND PELAYARAN IN ('dn', 'ln')
                    GROUP BY NM_CABANG, DERMAGA, PELAYARAN
                    ORDER BY NM_CABANG, PELAYARAN
                ) c ON a.NM_CABANG = c.NM_CABANG AND a.DERMAGA = c.DERMAGA AND a.PELAYARAN = c.PELAYARAN
                LEFT JOIN (
                    SELECT
                        NM_CABANG, DERMAGA, PELAYARAN, SUM(PENDAPATAN_TUNDA) AS PENDAPATAN_TUNDA
                    FROM
                        V_SIMPANDA_PEL_MANAJEMEN
                    WHERE
                        TO_CHAR(JAM_PANDU_NAIK, 'YYYY-MM') = '${date}'
                        AND PELAYARAN IN ('dn', 'ln')
                    GROUP BY NM_CABANG, DERMAGA, PELAYARAN
                    ORDER BY NM_CABANG, PELAYARAN
                ) d ON a.NM_CABANG = d.NM_CABANG AND a.DERMAGA = d.DERMAGA AND a.PELAYARAN = d.PELAYARAN`;

        const output1 = await f.querySimop(query);
        const rows = output1.rows;
        var no = 0, cabang = "", merge = [], unitUln = 0, unitUdn = 0, unitKln = 0, unitKdn = 0, gerakanUln = 0, gerakanUdn = 0, gerakanKln = 0, gerakanKdn = 0, gtUln = 0, gtUdn = 0, gtKln = 0, gtKdn = 0, pendapatanUln = 0, pendapatanUdn = 0, pendapatanKln = 0, pendapatanKdn = 0;
        for (var a in rows) {
            if (rows[a].DERMAGA == "Umum" && rows[a].PELAYARAN == "ln") {
                unitUln = rows[a].UNIT;
                gerakanUln = rows[a].GERAKAN;
                gtUln = rows[a].GT;
                pendapatanUln = rows[a].PENDAPATAN_PANDU + rows[a].PENDAPATAN_TUNDA;
            }
            if (rows[a].DERMAGA == "Umum" && rows[a].PELAYARAN == "dn") {
                unitUdn = rows[a].UNIT;
                gerakanUdn = rows[a].GERAKAN;
                gtUdn = rows[a].GT;
                pendapatanUdn = rows[a].PENDAPATAN_PANDU + rows[a].PENDAPATAN_TUNDA;
            }
            if (rows[a].DERMAGA == "Khusus" && rows[a].PELAYARAN == "ln") {
                unitKln = rows[a].UNIT;
                gerakanKln = rows[a].GERAKAN;
                gtKln = rows[a].GT;
                pendapatanKln = rows[a].PENDAPATAN_PANDU + rows[a].PENDAPATAN_TUNDA;
            }
            if (rows[a].DERMAGA == "Khusus" && rows[a].PELAYARAN == "dn") {
                unitKdn = rows[a].UNIT;
                gerakanKdn = rows[a].GERAKAN;
                gtKdn = rows[a].GT;
                pendapatanKdn = rows[a].PENDAPATAN_PANDU + rows[a].PENDAPATAN_TUNDA;
            }

            if (cabang != rows[a].NM_CABANG) {
                cabang = rows[a].NM_CABANG
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

        // console.log("danang", merge)

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

        result(null, output1.rows);
    } else {
        result(null, { "status": "error no data" });
    }
};


Report.pelaporantunda = async (req, result, cabang_id) => {

    if (req.fields.date) {
        const date = req.fields.date, cabang = req.fields.cabang_id < 10 ? "0" + req.fields.cabang_id.toString() : req.fields.cabang_id;;
        var arr = {}, query = queryTunda(cabang, date, cabang == "01" ? "KAPAL_PROD." : "");
        query = `SELECT ROWNUM NO, a.* FROM (${query}) a`;
        var output1 = await f.querySimop(query);

        arr['global'] = output1.rows;
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

        result(null, output1.rows);
    } else {
        result(null, { "status": "error no data" });
    }

};


Report.pelaporanpandu = async (req, result, cabang_id) => {
    if (req.fields.date) {
        const date = req.fields.date, cabang = req.fields.cabang_id < 10 ? "0" + req.fields.cabang_id.toString() : req.fields.cabang_id;;
        var arr = {}, query = queryPandu(cabang, date, cabang == "01" ? "KAPAL_PROD." : "");
        query = `SELECT MAX(KD_PROSES) AS KD_PROSES, MAX(NM_PERS_PANDU) AS NM_PERS_PANDU, SUM(GERAKAN_DN) AS GERAKAN_DN, SUM(GERAKAN_LN) AS GERAKAN_LN, SUM(TOTAL_GERAKAN) AS TOTAL_GERAKAN, SUM(GT_DN) AS GT_DN, SUM(GT_LN) AS GT_LN, SUM(TOTAL_GT) AS TOTAL_GT, SUM(LAMA_PANDU_DN) AS LAMA_PANDU_DN, SUM(LAMA_PANDU_LN) AS LAMA_PANDU_LN, SUM(TOTAL_LAMA_PANDU) AS TOTAL_LAMA_PANDU, SUM(WT_DN) AS WT_DN, SUM(WT_LN) AS WT_LN, SUM(TOTAL_WT) AS TOTAL_WT, SUM(TOTAL_PENDAPATAN_PANDU) AS TOTAL_PENDAPATAN_PANDU, SUM(PNBP_TOTAL_PENDAPATAN_PANDU) AS PNBP_TOTAL_PENDAPATAN_PANDU FROM (${query}) a GROUP BY NM_PERS_PANDU ORDER BY NM_PERS_PANDU`;
        query = `SELECT ROWNUM NO, a.* FROM (${query}) a`;
        console.log(query);
        var output1 = await f.querySimop(query);

        arr['global'] = output1.rows;
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

        result(null, output1.rows);
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
                NVL(a."day", '') AS "day",
                NVL(a."date", '') AS "date",
                NVL(b."nama_asset", '') AS "armada",
                NVL(b."jam_operasi", '') AS "jam_operasi",
                NVL(ROUND( b."jam_operasi" / 24 * 100, 2 ), '') AS "availability",
                NVL(b."keterangan", '') AS "keterangan",
                NVL(b."tipe_asset", '') AS "tipe_kapal"
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
                    TO_CHAR( a."from", 'YYYY-MM-DD' ) AS "date",
                    b."nama_asset",
                    MAX( a."keterangan" ) AS "keterangan",
                    SUM( ROUND( ( a."to" - a."from" ) * 24, 2 ) ) AS "jam_operasi",
                    MAX( d."nama" ) AS "tipe_asset" 
                FROM
                    "armada_jaga" a
                    INNER JOIN "asset_kapal" b ON a."asset_kapal_id" = b."id"
                    INNER JOIN "armada_schedule" c ON a."armada_schedule_id" = c."id"
                    INNER JOIN "tipe_asset" d ON b."tipe_asset_id" = d."id" 
                WHERE
                    a."available" = '1' 
                    AND c."cabang_id" = '${req.fields.cabang_id}' 
                    AND TO_CHAR( c."date", 'YYYY-MM' ) = '${req.fields.date}'
                GROUP BY
                    TO_CHAR( a."from", 'YYYY-MM-DD' ),
                    b."nama_asset"
                ) b ON a."date" = b."date"
            ORDER BY
                a."date",
                b."tipe_asset"
        `;

        console.log(query);
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


        arr['global'] = output_kapal;
        arr['pandu'] = output_pandu;

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
        query = `SELECT ROWNUM NO, 
                a.NM_PERS_PANDU AS "nm_pers_pandu",
                a.TOTAL_GERAKAN AS "gerakan",
                a.TOTAL_GT AS "total_gt",
                a.TOTAL_LAMA_PANDU AS "waiting_time"
                FROM (${query}) a`;

        var output1 = await f.querySimop(query);
        // console.log(req.fields);
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
            ORDER BY c."id" asc
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
            ORDER BY c."id" asc
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

Report.stasiunpandu = async (req, result, cabang_id) => {

    if (req.fields) {
        const cabang = req.fields.cabang_id;

        var query = `SELECT rownum as no,
            c."nama" as cabang,
            b."nama" as jenis_asset,
            a."nama" as nama_asset,
            a."nomor_asset" as nomor_asset,
            a."tahun_perolehan" as tahun_peroleh,
            d."nama" as kondisi,
            a."nilai_perolehan" as nilai
            
            from "asset_stasiun_equipment" a
            LEFT JOIN "tipe_asset" b ON a."tipe_asset_id" = b."id"
            LEFT JOIN "cabang" c ON a."cabang_id" = c."id"
            LEFT JOIN "kondisi" d ON d."id" = a."kondisi"
            WHERE a."id" IN (${cabang})
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
            a."wilayah" as wilayah,
            a."satuan" as satuan,
            a."nilai_perolehan" as nilai_peroleh,
            a."nilai_buku" as nilai_buku,
            a."nilai" as nilai_perawatan,
            a."catatan" as catatan_perawatan,
            
            to_char(a."tanggal",'DD-MM-YYYY') as tanggal_perawatan
        
            from "asset_rumah_dinas" a
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


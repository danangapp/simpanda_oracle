const f = require('../controllers/function');
const fs = require('fs');
var XlsxTemplate = require('xlsx-template');
const createReport = require('docx-templates').default;
// constructor
const Report = function (report) {
    this.nama = report.nama;
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
                AND to_char(a."tanggal_pemeriksaan",'MM')='${date1[1]}' AND to_char(a."tanggal_pemeriksaan",'YYYY')='${date1[0]}'
        `;

        var output1 = await f.query(query);
        arr['pandu'] = output1.rows;
        console.log(arr.pandu);

        var d = new Date();
        var t = d.getTime();
        fs.readFile('./report/crewList.xlsx', function async(err, dt) {
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
        const date1 = date.split("-");

        var query = `SELECT
                MAX(b."nama_asset") AS "nama_asset",
                MAX(e."nipp") AS "nipp",
                MAX(e."nama") AS "personil",
                MAX(e."jabatan") AS "jabatan",
                MAX(e."nomor_hp") AS "nomor_hp",
                MAX(e."manning") AS "manning",
                MAX(e."agency") AS "agency",
                MAX(c."nama") AS "cabang",
                MAX(d."nama") AS "fleet",
                MAX(a."keterangan") AS "keterangan_sarana_bantu"
            FROM
                "sarana_bantu_pemandu" a
                INNER JOIN "asset_kapal" b ON a."asset_kapal_id" = b."id"
                INNER JOIN "cabang" c ON a."cabang_id" = c."id"
                INNER JOIN "tipe_asset" d ON b."tipe_asset_id" = d."id"
                LEFT JOIN "personil" e ON a."personil_id" = e."id"
            WHERE a."cabang_id" = '${req.fields.cabang_id || cabang_id}'
                AND to_char(a."tanggal_pemeriksaan",'MM')='${date1[1]}' AND to_char(a."tanggal_pemeriksaan",'YYYY')='${date1[0]}'
            GROUP BY a."asset_kapal_id"
        `;

        var output1 = await f.query(query);
        var output = output1.rows;

        result(null, output);
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

module.exports = Report;


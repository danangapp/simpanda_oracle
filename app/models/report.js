const f = require('../controllers/function');
const fs = require('fs');
var XlsxTemplate = require('xlsx-template');
// constructor
const Report = function (report) {
    this.nama = report.nama;
};

Report.rekapsaranabantu = async (id, result, cabang_id) => {
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

    fs.readFile('./report/Report-Inspection-Sarana Bantu Pemanduan ' + jenis + '.xlsx', function async(err, dt) {
        var template = new XlsxTemplate(dt);
        template.substitute(1, arr);
        template.substitute(2, arr);
        var out = template.generate();
        fs.writeFileSync('d:/danang1.xlsx', out, 'binary');
    });
    result(null, "ok");
};


module.exports = Report;


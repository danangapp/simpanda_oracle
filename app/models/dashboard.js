const f = require('../controllers/function');

// constructor
const Dashboard = function (dashboard) {
    this.nama = dashboard.nama;
};

Dashboard.statisticresume = async (param, result) => {
    var queryText
    if (param.cabang_id == 0) {
        queryText = `SELECT max(b."id") as "id", max(b."nama") as "nama", COUNT( a."cabang_id" ) AS "total" FROM "asset_kapal" a INNER JOIN "cabang" b ON a."cabang_id" = b."id" WHERE a."enable" = 1 AND a."approval_status_id" = 1 AND a."tipe_asset_id" = 2`;
    } else {
        queryText = ` AND a."cabang_id" = '${param.cabang_id}'`;
    }
    queryText += ` GROUP BY a."cabang_id"`;
    // console.log(queryText);
    const exec = f.query(queryText);
    const res = await exec;
    result(null, res.rows);
};


Dashboard.cetivicatevalidity = async (param, result) => {
    var evaluasi = `SELECT ADD_MONTHS("tanggal_sk", 24) AS tanggal_expire FROM "evaluasi_pelimpahan" WHERE ADD_MONTHS("tanggal_sk", 24) > SYSDATE AND "approval_status_id" = 1 `;
    var queryText = `SELECT "tanggal_expire", "personil_id", "personil"."tipe_personil_id", "sertifikat"."asset_kapal_id" FROM "sertifikat" LEFT JOIN "personil" ON "sertifikat"."personil_id" = "personil"."id" LEFT JOIN "asset_kapal" ON "sertifikat"."asset_kapal_id" = "asset_kapal"."id" WHERE "tanggal_expire" > SYSDATE`;

    var personil = queryText += ` AND "personil"."enable" = 1 AND "personil"."approval_status_id" = 1`;
    var assetKapal = queryText += ` AND "asset_kapal"."enable" = 1 AND "asset_kapal"."approval_status_id" = 1`;

    if (param.cabang_id > 0) {
        queryText += ` AND "personil"."cabang_id" = '${param.cabang_id}'`;
        evaluasi += ` AND "cabang_id" = '${param.cabang_id}`;
    }

    // console.log(evaluasi)
    const exec1 = f.query(personil);
    const res1 = await exec1;
    const exec2 = f.query(assetKapal);
    const res2 = await exec2;
    const exec3 = f.query(evaluasi);
    const res3 = await exec3;
    result(null, [res1.rows, res2.rows, res3.rows]);
};

module.exports = Dashboard;


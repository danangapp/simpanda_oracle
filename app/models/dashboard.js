const f = require('../controllers/function');

// constructor
const Dashboard = function (dashboard) {
    this.nama = dashboard.nama;
};

Dashboard.statisticresume = async (param, result) => {
    var queryText = `SELECT max(b."id") as "id", max(b."nama") as "nama", COUNT( a."cabang_id" ) AS "total" FROM "asset_kapal" a INNER JOIN "cabang" b ON a."cabang_id" = b."id" WHERE a."enable" = 1 AND a."approval_status_id" = 1 AND a."tipe_asset_id" = 2 GROUP BY a."cabang_id"`;
    const exec = f.query(queryText);
    const res = await exec;
    result(null, res);
};


Dashboard.cetivicatevalidity = async (param, result) => {
    var queryText = `SELECT "tanggal_expire", "personil_id", "personil"."tipe_personil_id", "sertifikat"."asset_kapal_id" FROM "sertifikat" LEFT JOIN "personil" ON "sertifikat"."personil_id" = "personil"."id" LEFT JOIN "asset_kapal" ON "sertifikat"."asset_kapal_id" = "asset_kapal"."id" WHERE "tanggal_expire" > SYSDATE`;
    const exec = f.query(queryText);
    const res = await exec;
    result(null, res);
};

module.exports = Dashboard;


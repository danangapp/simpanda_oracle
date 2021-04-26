const f = require('../controllers/function');

// constructor
const Dashboard = function (dashboard) {
    this.nama = dashboard.nama;
};

Dashboard.statisticresume = async (param, result) => {
    var queryText = `SELECT MAX(b."nama") as "nama", COUNT( a."cabang_id" ) AS "total" 
                    FROM "asset_kapal" a 
                    INNER JOIN "cabang" b ON a."cabang_id" = b."id" 
                    WHERE a."enable" = 1 
                    AND a."approval_status_id" = 1 
                    AND a."tipe_asset_id" = 2`
    
    // param.cabang_id = 1
    if (param.cabang_id > 0) {
        queryText += ` AND a."cabang_id" = ${param.cabang_id}`
    }
    
    queryText += ` GROUP BY a."cabang_id"`

    const query = await f.query(queryText)
    result(null, query.rows)
};


Dashboard.cetivicatevalidity = async (param, result) => {
    var personil = `SELECT "tanggal_expire", "personil_id", "tipe_personil_id"
                    FROM "sertifikat"
                    JOIN "personil" ON "personil"."id" = "sertifikat"."personil_id"
                    WHERE "tanggal_expire" > SYSDATE
                    AND "personil"."enable" = 1
                    AND "personil"."approval_status_id" = 1`

    var kapal    = `SELECT "tanggal_expire", "asset_kapal_id" 
                    FROM "sertifikat"
                    JOIN "asset_kapal" ON "asset_kapal"."id" = "sertifikat"."asset_kapal_id"
                    WHERE "tanggal_expire" > SYSDATE 
                    AND "asset_kapal_id" IS NOT NULL
                    AND "asset_kapal"."enable" = 1
                    AND "asset_kapal"."approval_status_id" = 1`

    var evaluasi = `SELECT ADD_MONTHS("tanggal_sk", 24) AS "tanggal_expire"
                    FROM "evaluasi_pelimpahan"
                    WHERE ADD_MONTHS("tanggal_sk", 24) > SYSDATE
                    AND "enable" = 1
                    AND "approval_status_id" = 1`

    // param.cabang_id = 1
    if (param.cabang_id > 0) {
        personil += ` AND "personil"."cabang_id" = ${param.cabang_id}`
        kapal += ` AND "asset_kapal"."cabang_id" = ${param.cabang_id}`
        evaluasi += ` AND "cabang_id" = ${param.cabang_id}`
    }

    const resPersonil = await f.query(personil)
    const resKapal = await f.query(kapal)
    const resEvaluasi = await f.query(evaluasi)

    result(null, {'personil': resPersonil.rows, 'kapal': resKapal.rows, 'evaluasi': resEvaluasi.rows})
};

module.exports = Dashboard;


const express = require("express");
const fs = require('fs');
var XlsxTemplate = require('xlsx-template');
const formidableMiddleware = require('express-formidable');
const f = require('./app/controllers/function')
require('dotenv').config();
var cors = require('cors')

const app = express();
app.use(cors());
app.use(formidableMiddleware());
app.use(
  formidableMiddleware({
    encoding: 'utf-8',
    uploadDir: './',
    multiples: true,
  })
)
app.use(express.static(__dirname + '/files'));

app.use((req, res, next) => {
  res.header('Access-Control-Allow-Origin', '*')
  res.header('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, OPTION')
  res.header('Access-Control-Allow-Headers', 'Content-Type, Authorization')
  res.header('Access-Control-Request-Method', '*')
  res.header('content-type: application/json; charset=utf-8');
  next()
})


var requestToken = async function (req, res, next) {
  if (req.path === "/auth/login/" || req.path === "/login/" || req.path === "/login" || req.path === "/") {
    next();
  } else {
    var tokens = req.get('authorization');
    const resQuery = await f.query(`select * from "authorization" WHERE "accessToken" = '${tokens}' AND "expired" > CURRENT_TIMESTAMP`);
    if (resQuery) {
      if (resQuery.rows.length > 0) {
        const timeExpired = f.toDate(new Date().addHours(1), 'yyyy/mm/dd HH24:MI:SS');
        await f.query(`UPDATE "authorization" SET "expired" = '${timeExpired}' WHERE "accessToken" = '${tokens}'`, 2);
        req.cabang_id = resQuery.rows[0].cabang_id;
        req.user_id = resQuery.rows[0].user_id;
        next();
      } else {
        res.send({ "status": "Not Authorization", "code": "403" })
      }
    } else {
      res.send({ "status": "Not Authorization", "code": "403" })
    }
  }

  // res.send("tester")
}

app.use(requestToken)
// simple route
app.get("/", (req, res) => {
  res.json({ message: "Simpanda Application" });
});

require("./app/routes/action")(app);
require("./app/routes/activitylog")(app);
require("./app/routes/approvalstatus")(app);
require("./app/routes/armadajaga")(app);
require("./app/routes/armadaschedule")(app);
require("./app/routes/assetkapal")(app);
require("./app/routes/assetrumahdinas")(app);
require("./app/routes/assetstasiunequipment")(app);
require("./app/routes/cabang")(app);
require("./app/routes/dokumenkapal")(app);
require("./app/routes/enable")(app);
require("./app/routes/evaluasipelimpahan")(app);
require("./app/routes/investigasiinsiden")(app);
require("./app/routes/investigasiinsidentim")(app);
require("./app/routes/kondisi")(app);
require("./app/routes/kondisiumum")(app);
// require("./app/routes/mstcabang")(app);
// require("./app/routes/mstpemeriksaankapalcheck")(app);
// require("./app/routes/mstrole")(app);
// require("./app/routes/msttipeasset")(app);
// require("./app/routes/msttipepersonil")(app);
require("./app/routes/pandujaga")(app);
require("./app/routes/panduschedule")(app);
require("./app/routes/pemeriksaankapal")(app);
require("./app/routes/pemeriksaankapalcheck")(app);
require("./app/routes/pemeriksaankapalcheckdata")(app);
require("./app/routes/personil")(app);
require("./app/routes/role")(app);
require("./app/routes/saranabantupemandu")(app);
require("./app/routes/saranabantupemandukapal")(app);
require("./app/routes/saranabantupemandupersonil")(app);
require("./app/routes/sertifikat")(app);
require("./app/routes/statusabsen")(app);
require("./app/routes/statusevaluasipelimpahan")(app);
require("./app/routes/statusijazah")(app);
require("./app/routes/statusinvestigasiinsiden")(app);
require("./app/routes/statuskepegawaian")(app);
require("./app/routes/tipeasset")(app);
require("./app/routes/tipecert")(app);
require("./app/routes/tipepersonil")(app);
require("./app/routes/tipesaranapemandukapal")(app);
require("./app/routes/tipestasiun")(app);
require("./app/routes/user")(app);
require("./app/routes/usergroup")(app);
require("./app/routes/jeniscert")(app);
require("./app/routes/dashboard")(app);
// require("./app/routes/download")(app);
require("./app/routes/report")(app);
require("./app/routes/menu")(app);
require("./app/routes/authorization")(app);
require("./app/routes/pemilikkapal")(app);
require("./app/routes/kepemilikankapal")(app);
require("./app/routes/sbpdata")(app);
require("./app/routes/dasarhukum")(app);

// set port, listen for requests
const PORT = process.env.PORT || 4000;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}.`);
});


// var res = f.query(`SELECT NVL(max("id"), 0) as "id" FROM "cabang"`, 1);
// res.then((a) => {
//   console.log(a.rows[0][0]);
// })
// var res = f.query(`INSERT INTO "cabang" ("nama") VALUES ('cabang danang')` + ` RETURN "id" INTO :id`, 1);
// res.then((a) => {
//   console.log(a);
// })
// const select = f.select(`SELECT * FROM "cabang"`);
// select.then((a) => {
//   console.log(a.rows);
// })


// console.log(select);
// var oracledb = require('oracledb');
// const dbConfig = require('./app/config/dbconfig');
// async function run() {
//   let connection;
//   try {
//     connection = await oracledb.getConnection(dbConfig);
//     const result = await connection.execute(`SELECT * FROM "cabang"`, [], { outFormat: oracledb.OUT_FORMAT_OBJECT });
//     console.log(result.rows);
//   } catch (err) {
//     console.error(err);
//   } finally {
//     if (connection) {
//       try {
//         await connection.close();
//       } catch (err) {
//         console.error(err);
//       }
//     }
//   }
// }

// run();

// f.query(`SELECT * FROM "asset_rumah_dinas"`)
//   .then((a) => {
//     f.report('d:/rumah-dinas.xlsx', 'd:/danang1.xlsx', { rumah_dinas: a.rows }, "Rumah Dinas")
//   })

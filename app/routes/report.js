module.exports = app => {
    const report = require("../controllers/report.js");

    app.get("/report/rekapsaranabantu/:id", report.rekapsaranabantu);
    app.get("/report/pemeriksaankapal/:id", report.pemeriksaankapal);
    app.get("/report/investigasiinsiden/:id", report.investigasiinsiden);

};

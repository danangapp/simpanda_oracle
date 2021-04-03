module.exports = app => {
    const report = require("../controllers/report.js");

    app.get("/report/saranabantupemandu/:id", report.saranabantupemandu);
    app.get("/report/pemeriksaankapal/:id", report.pemeriksaankapal);
    app.get("/report/investigasiinsiden/:id", report.investigasiinsiden);
    app.get("/report/evaluasipelimpahan/:id", report.evaluasipelimpahan);
    app.post("/report/crewlist", report.crewlist);

};

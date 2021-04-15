module.exports = app => {
    const report = require("../controllers/report.js");

    app.get("/report/saranabantupemandu/:id", report.saranabantupemandu);
    app.get("/report/pemeriksaankapal/:id", report.pemeriksaankapal);
    app.get("/report/investigasiinsiden/:id", report.investigasiinsiden);
    app.get("/report/evaluasipelimpahan/:id", report.evaluasipelimpahan);
    app.post("/report/crewlist", report.crewlist);
    app.post("/report/pelaporanmanagement", report.pelaporanmanagement);
    app.post("/report/pelaporanmanagementtunda", report.pelaporantunda);
    app.post("/report/pelaporanmanagementpandu", report.pelaporanpandu);
    app.post("/report/pilotship", report.pilotship);
    app.post("/report/personelpeformance", report.personelpeformance);
    app.post("/report/shippeformance", report.shippeformance);

    //custom report
    app.post("/report/pandu", report.pandu);
    app.post("/report/pendukungpandu", report.pendukungpandu);
    app.post("/report/kapal", report.kapal);
    app.post("/report/stasiunpandu", report.stasiunpandu);
    app.post("/report/rumahdinas", report.rumahdinas);
};

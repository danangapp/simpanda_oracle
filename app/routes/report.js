module.exports = app => {
    const report = require("../controllers/report.js");

    app.get("/report/rekapsaranabantu/:id", report.rekapsaranabantu);

};

const f = require('../controllers/function');

// constructor
const Report = function (report) {
    this.nama = report.nama;
};

Report.rekapsaranabantu = async (param, result) => {
    var queryText = `SELECT * FROM "asset_rumah_dinas"`;
    const exec = f.query(queryText);
    const res = await exec;
    result(null, res.rows);
};


module.exports = Report;


module.exports = app => {
    const sbpdata = require("../controllers/sbpdata.js");

    // Create a new SbpData
    app.post("/sbpdata", sbpdata.create);

    // Retrieve all SbpDatas
    app.get("/sbpdata", sbpdata.findAll);

    // Retrieve a single SbpData with id
    app.get("/sbpdata/:id", sbpdata.findOne);

    // Update a SbpData with id
    app.put("/sbpdata/:id", sbpdata.update);

    // Delete a SbpData with id
    app.delete("/sbpdata/:id", sbpdata.delete);

};

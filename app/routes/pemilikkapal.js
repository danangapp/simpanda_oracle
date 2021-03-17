module.exports = app => {
    const pemilikkapal = require("../controllers/pemilikkapal.js");

    // Create a new PemilikKapal
    app.post("/pemilikkapal", pemilikkapal.create);

    // Retrieve all PemilikKapals
    app.get("/pemilikkapal", pemilikkapal.findAll);

    // Retrieve a single PemilikKapal with id
    app.get("/pemilikkapal/:id", pemilikkapal.findOne);

    // Update a PemilikKapal with id
    app.put("/pemilikkapal/:id", pemilikkapal.update);

    // Delete a PemilikKapal with id
    app.delete("/pemilikkapal/:id", pemilikkapal.delete);

};

module.exports = app => {
    const dokumenkapal = require("../controllers/dokumenkapal.js");

    // Create a new DokumenKapal
    app.post("/dokumenkapal", dokumenkapal.create);

    // Retrieve all DokumenKapals
    app.get("/dokumenkapal", dokumenkapal.findAll);

    // Retrieve a single DokumenKapal with id
    app.get("/dokumenkapal/:id", dokumenkapal.findOne);

    // Update a DokumenKapal with id
    app.put("/dokumenkapal/:id", dokumenkapal.update);

    // Delete a DokumenKapal with id
    app.delete("/dokumenkapal/:id", dokumenkapal.delete);

};

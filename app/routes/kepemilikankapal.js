module.exports = app => {
    const kepemilikankapal = require("../controllers/kepemilikankapal.js");

    // Create a new KepemilikanKapal
    app.post("/kepemilikankapal", kepemilikankapal.create);

    // Retrieve all KepemilikanKapals
    app.get("/kepemilikankapal", kepemilikankapal.findAll);

    // Retrieve a single KepemilikanKapal with id
    app.get("/kepemilikankapal/:id", kepemilikankapal.findOne);

    // Update a KepemilikanKapal with id
    app.put("/kepemilikankapal/:id", kepemilikankapal.update);

    // Delete a KepemilikanKapal with id
    app.delete("/kepemilikankapal/:id", kepemilikankapal.delete);

};

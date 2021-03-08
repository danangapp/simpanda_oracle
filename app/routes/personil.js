module.exports = app => {
    const personil = require("../controllers/personil.js");

    // Create a new Personil
    app.post("/personil", personil.create);

    // Retrieve all Personils
    app.get("/personil", personil.findAll);

    // Retrieve a single Personil with id
    app.get("/personil/:id", personil.findOne);

    // Update a Personil with id
    app.put("/personil/:id", personil.update);

    // Delete a Personil with id
    app.delete("/personil/:id", personil.delete);

};

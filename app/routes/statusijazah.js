module.exports = app => {
    const statusijazah = require("../controllers/statusijazah.js");

    // Create a new StatusIjazah
    app.post("/statusijazah", statusijazah.create);

    // Retrieve all StatusIjazahs
    app.get("/statusijazah", statusijazah.findAll);

    // Retrieve a single StatusIjazah with id
    app.get("/statusijazah/:id", statusijazah.findOne);

    // Update a StatusIjazah with id
    app.put("/statusijazah/:id", statusijazah.update);

    // Delete a StatusIjazah with id
    app.delete("/statusijazah/:id", statusijazah.delete);

};

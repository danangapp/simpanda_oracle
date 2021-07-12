module.exports = app => {
    const dasarhukum = require("../controllers/dasarhukum.js");

    // Create a new dasarhukum
    app.post("/dasarhukum", dasarhukum.create);

    // Retrieve all dasarhukums
    app.get("/dasarhukum", dasarhukum.findAll);

    // Retrieve a single dasarhukum with id
    app.get("/dasarhukum/:id", dasarhukum.findOne);

    // Update a dasarhukum with id
    app.put("/dasarhukum/:id", dasarhukum.update);

    // Delete a dasarhukum with id
    app.delete("/dasarhukum/:id", dasarhukum.delete);

};

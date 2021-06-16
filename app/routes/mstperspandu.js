module.exports = app => {
    const mstperspandu = require("../controllers/mstperspandu.js");

    // Create a new MstPersPandu
    app.post("/mstperspandu", mstperspandu.create);

    // Retrieve all MstPersPandus
    app.get("/mstperspandu", mstperspandu.findAll);

    // Retrieve a single MstPersPandu with id
    app.get("/mstperspandu/:id", mstperspandu.findOne);

    // Update a MstPersPandu with id
    app.put("/mstperspandu/:id", mstperspandu.update);

    // Delete a MstPersPandu with id
    app.delete("/mstperspandu/:id", mstperspandu.delete);

};

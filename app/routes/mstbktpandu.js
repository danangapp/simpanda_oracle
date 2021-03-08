module.exports = app => {
    const mstbktpandu = require("../controllers/mstbktpandu.js");

    // Create a new MstBktPandu
    app.post("/mstbktpandu", mstbktpandu.create);

    // Retrieve all MstBktPandus
    app.get("/mstbktpandu", mstbktpandu.findAll);

    // Retrieve a single MstBktPandu with id
    app.get("/mstbktpandu/:id", mstbktpandu.findOne);

    // Update a MstBktPandu with id
    app.put("/mstbktpandu/:id", mstbktpandu.update);

    // Delete a MstBktPandu with id
    app.delete("/mstbktpandu/:id", mstbktpandu.delete);

};

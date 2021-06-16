module.exports = app => {
    const mstkapalcabangbktpandu = require("../controllers/mstkapalcabangbktpandu.js");

    // Create a new MstKapalCabangBktPandu
    app.post("/mstkapalcabangbktpandu", mstkapalcabangbktpandu.create);

    // Retrieve all MstKapalCabangBktPandus
    app.get("/mstkapalcabangbktpandu", mstkapalcabangbktpandu.findAll);

    // Retrieve a single MstKapalCabangBktPandu with id
    app.get("/mstkapalcabangbktpandu/:id", mstkapalcabangbktpandu.findOne);

    // Update a MstKapalCabangBktPandu with id
    app.put("/mstkapalcabangbktpandu/:id", mstkapalcabangbktpandu.update);

    // Delete a MstKapalCabangBktPandu with id
    app.delete("/mstkapalcabangbktpandu/:id", mstkapalcabangbktpandu.delete);

};

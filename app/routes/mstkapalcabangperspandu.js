module.exports = app => {
    const mstkapalcabangperspandu = require("../controllers/mstkapalcabangperspandu.js");

    // Create a new MstKapalCabangPersPandu
    app.post("/mstkapalcabangperspandu", mstkapalcabangperspandu.create);

    // Retrieve all MstKapalCabangPersPandus
    app.get("/mstkapalcabangperspandu", mstkapalcabangperspandu.findAll);

    // Retrieve a single MstKapalCabangPersPandu with id
    app.get("/mstkapalcabangperspandu/:id", mstkapalcabangperspandu.findOne);

    // Update a MstKapalCabangPersPandu with id
    app.put("/mstkapalcabangperspandu/:id", mstkapalcabangperspandu.update);

    // Delete a MstKapalCabangPersPandu with id
    app.delete("/mstkapalcabangperspandu/:id", mstkapalcabangperspandu.delete);

};

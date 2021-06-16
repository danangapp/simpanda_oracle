module.exports = app => {
    const mstkapalcabangbkttunda = require("../controllers/mstkapalcabangbkttunda.js");

    // Create a new MstKapalCabangBktTunda
    app.post("/mstkapalcabangbkttunda", mstkapalcabangbkttunda.create);

    // Retrieve all MstKapalCabangBktTundas
    app.get("/mstkapalcabangbkttunda", mstkapalcabangbkttunda.findAll);

    // Retrieve a single MstKapalCabangBktTunda with id
    app.get("/mstkapalcabangbkttunda/:id", mstkapalcabangbkttunda.findOne);

    // Update a MstKapalCabangBktTunda with id
    app.put("/mstkapalcabangbkttunda/:id", mstkapalcabangbkttunda.update);

    // Delete a MstKapalCabangBktTunda with id
    app.delete("/mstkapalcabangbkttunda/:id", mstkapalcabangbkttunda.delete);

};

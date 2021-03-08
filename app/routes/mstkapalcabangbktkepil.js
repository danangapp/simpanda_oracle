module.exports = app => {
    const mstkapalcabangbktkepil = require("../controllers/mstkapalcabangbktkepil.js");

    // Create a new MstKapalCabangBktKepil
    app.post("/mstkapalcabangbktkepil", mstkapalcabangbktkepil.create);

    // Retrieve all MstKapalCabangBktKepils
    app.get("/mstkapalcabangbktkepil", mstkapalcabangbktkepil.findAll);

    // Retrieve a single MstKapalCabangBktKepil with id
    app.get("/mstkapalcabangbktkepil/:id", mstkapalcabangbktkepil.findOne);

    // Update a MstKapalCabangBktKepil with id
    app.put("/mstkapalcabangbktkepil/:id", mstkapalcabangbktkepil.update);

    // Delete a MstKapalCabangBktKepil with id
    app.delete("/mstkapalcabangbktkepil/:id", mstkapalcabangbktkepil.delete);

};

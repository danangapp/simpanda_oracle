module.exports = app => {
    const mstfasilitas = require("../controllers/mstfasilitas.js");

    // Create a new MstFasilitas
    app.post("/mstfasilitas", mstfasilitas.create);

    // Retrieve all MstFasilitass
    app.get("/mstfasilitas", mstfasilitas.findAll);

    // Retrieve a single MstFasilitas with id
    app.get("/mstfasilitas/:id", mstfasilitas.findOne);

    // Update a MstFasilitas with id
    app.put("/mstfasilitas/:id", mstfasilitas.update);

    // Delete a MstFasilitas with id
    app.delete("/mstfasilitas/:id", mstfasilitas.delete);

};

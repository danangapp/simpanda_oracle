module.exports = app => {
    const saranabantupemandu = require("../controllers/saranabantupemandu.js");

    // Create a new SaranaBantuPemandu
    app.post("/saranabantupemandu", saranabantupemandu.create);

    // Retrieve all SaranaBantuPemandus
    app.get("/saranabantupemandu", saranabantupemandu.findAll);

    // Retrieve a single SaranaBantuPemandu with id
    app.get("/saranabantupemandu/:id", saranabantupemandu.findOne);

    // Update a SaranaBantuPemandu with id
    app.put("/saranabantupemandu/:id", saranabantupemandu.update);

    // Delete a SaranaBantuPemandu with id
    app.delete("/saranabantupemandu/:id", saranabantupemandu.delete);

};

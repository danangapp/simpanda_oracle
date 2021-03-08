module.exports = app => {
    const saranabantupemandupersonil = require("../controllers/saranabantupemandupersonil.js");

    // Create a new SaranaBantuPemanduPersonil
    app.post("/saranabantupemandupersonil", saranabantupemandupersonil.create);

    // Retrieve all SaranaBantuPemanduPersonils
    app.get("/saranabantupemandupersonil", saranabantupemandupersonil.findAll);

    // Retrieve a single SaranaBantuPemanduPersonil with id
    app.get("/saranabantupemandupersonil/:id", saranabantupemandupersonil.findOne);

    // Update a SaranaBantuPemanduPersonil with id
    app.put("/saranabantupemandupersonil/:id", saranabantupemandupersonil.update);

    // Delete a SaranaBantuPemanduPersonil with id
    app.delete("/saranabantupemandupersonil/:id", saranabantupemandupersonil.delete);

};

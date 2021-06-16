module.exports = app => {
    const tipepersonil = require("../controllers/tipepersonil.js");

    // Create a new TipePersonil
    app.post("/tipepersonil", tipepersonil.create);

    // Retrieve all TipePersonils
    app.get("/tipepersonil", tipepersonil.findAll);

    // Retrieve a single TipePersonil with id
    app.get("/tipepersonil/:id", tipepersonil.findOne);

    // Update a TipePersonil with id
    app.put("/tipepersonil/:id", tipepersonil.update);

    // Delete a TipePersonil with id
    app.delete("/tipepersonil/:id", tipepersonil.delete);

};

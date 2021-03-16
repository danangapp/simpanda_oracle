module.exports = app => {
    const armadajagacopy1 = require("../controllers/armadajagacopy1.js");

    // Create a new ArmadaJagaCopy1
    app.post("/armadajagacopy1", armadajagacopy1.create);

    // Retrieve all ArmadaJagaCopy1s
    app.get("/armadajagacopy1", armadajagacopy1.findAll);

    // Retrieve a single ArmadaJagaCopy1 with id
    app.get("/armadajagacopy1/:id", armadajagacopy1.findOne);

    // Update a ArmadaJagaCopy1 with id
    app.put("/armadajagacopy1/:id", armadajagacopy1.update);

    // Delete a ArmadaJagaCopy1 with id
    app.delete("/armadajagacopy1/:id", armadajagacopy1.delete);

};

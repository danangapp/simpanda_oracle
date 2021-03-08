module.exports = app => {
    const tipestasiun = require("../controllers/tipestasiun.js");

    // Create a new TipeStasiun
    app.post("/tipestasiun", tipestasiun.create);

    // Retrieve all TipeStasiuns
    app.get("/tipestasiun", tipestasiun.findAll);

    // Retrieve a single TipeStasiun with id
    app.get("/tipestasiun/:id", tipestasiun.findOne);

    // Update a TipeStasiun with id
    app.put("/tipestasiun/:id", tipestasiun.update);

    // Delete a TipeStasiun with id
    app.delete("/tipestasiun/:id", tipestasiun.delete);

};

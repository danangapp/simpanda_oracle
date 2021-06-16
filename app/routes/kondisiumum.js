module.exports = app => {
    const kondisiumum = require("../controllers/kondisiumum.js");

    // Create a new KondisiUmum
    app.post("/kondisiumum", kondisiumum.create);

    // Retrieve all KondisiUmums
    app.get("/kondisiumum", kondisiumum.findAll);

    // Retrieve a single KondisiUmum with id
    app.get("/kondisiumum/:id", kondisiumum.findOne);

    // Update a KondisiUmum with id
    app.put("/kondisiumum/:id", kondisiumum.update);

    // Delete a KondisiUmum with id
    app.delete("/kondisiumum/:id", kondisiumum.delete);

};

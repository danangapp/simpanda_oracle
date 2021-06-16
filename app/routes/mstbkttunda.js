module.exports = app => {
    const mstbkttunda = require("../controllers/mstbkttunda.js");

    // Create a new MstBktTunda
    app.post("/mstbkttunda", mstbkttunda.create);

    // Retrieve all MstBktTundas
    app.get("/mstbkttunda", mstbkttunda.findAll);

    // Retrieve a single MstBktTunda with id
    app.get("/mstbkttunda/:id", mstbkttunda.findOne);

    // Update a MstBktTunda with id
    app.put("/mstbkttunda/:id", mstbkttunda.update);

    // Delete a MstBktTunda with id
    app.delete("/mstbkttunda/:id", mstbkttunda.delete);

};

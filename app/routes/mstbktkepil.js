module.exports = app => {
    const mstbktkepil = require("../controllers/mstbktkepil.js");

    // Create a new MstBktKepil
    app.post("/mstbktkepil", mstbktkepil.create);

    // Retrieve all MstBktKepils
    app.get("/mstbktkepil", mstbktkepil.findAll);

    // Retrieve a single MstBktKepil with id
    app.get("/mstbktkepil/:id", mstbktkepil.findOne);

    // Update a MstBktKepil with id
    app.put("/mstbktkepil/:id", mstbktkepil.update);

    // Delete a MstBktKepil with id
    app.delete("/mstbktkepil/:id", mstbktkepil.delete);

};

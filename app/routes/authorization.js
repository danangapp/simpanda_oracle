module.exports = app => {
    const authorization = require("../controllers/authorization.js");

    // Create a new Authorization
    app.post("/authorization", authorization.create);

    // Retrieve all Authorizations
    app.get("/authorization", authorization.findAll);

    // Retrieve a single Authorization with id
    app.get("/authorization/:id", authorization.findOne);

    // Update a Authorization with id
    app.put("/authorization/:id", authorization.update);

    // Delete a Authorization with id
    app.delete("/authorization/:id", authorization.delete);

};

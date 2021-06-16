module.exports = app => {
    const role = require("../controllers/role.js");

    // Create a new Role
    app.post("/role", role.create);

    // Retrieve all Roles
    app.get("/role", role.findAll);

    // Retrieve a single Role with id
    app.get("/role/:id", role.findOne);

    // Update a Role with id
    app.put("/role/:id", role.update);

    // Delete a Role with id
    app.delete("/role/:id", role.delete);

};

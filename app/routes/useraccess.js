module.exports = app => {
    const useraccess = require("../controllers/useraccess.js");

    // Create a new UserAccess
    app.post("/useraccess", useraccess.create);

    // Retrieve all UserAccesss
    app.get("/useraccess", useraccess.findAll);

    // Retrieve a single UserAccess with id
    app.get("/useraccess/:id", useraccess.findOne);

    // Update a UserAccess with id
    app.put("/useraccess/:id", useraccess.update);

    // Delete a UserAccess with id
    app.delete("/useraccess/:id", useraccess.delete);

};

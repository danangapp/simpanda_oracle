module.exports = app => {
  const user = require("../controllers/user.controller.js");

  // Create a new User
  app.post("/user", user.create);

  // Retrieve all Users
  app.get("/user", user.findAll);

  // Retrieve all Users
  app.get("/getuser", user.findAll);

  // Retrieve a single User with id
  app.get("/user/:id", user.findOne);

  // Update a User with id
  app.put("/user/:id", user.update);

  // Delete a User with id
  app.delete("/user/:id", user.delete);

  // Create a new User
  app.delete("/user", user.deleteAll);
};

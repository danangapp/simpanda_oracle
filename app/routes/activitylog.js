module.exports = app => {
    const activitylog = require("../controllers/activitylog.js");

    // Create a new ActivityLog
    app.post("/activitylog", activitylog.create);

    // Retrieve all ActivityLogs
    app.get("/activitylog", activitylog.findAll);

    // Retrieve a single ActivityLog with id
    app.get("/activitylog/:id", activitylog.findOne);

    // Update a ActivityLog with id
    app.put("/activitylog/:id", activitylog.update);

    // Delete a ActivityLog with id
    app.delete("/activitylog/:id", activitylog.delete);

};

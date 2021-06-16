module.exports = app => {
    const actionseq = require("../controllers/actionseq.js");

    // Create a new ActionSeq
    app.post("/actionseq", actionseq.create);

    // Retrieve all ActionSeqs
    app.get("/actionseq", actionseq.findAll);

    // Retrieve a single ActionSeq with id
    app.get("/actionseq/:id", actionseq.findOne);

    // Update a ActionSeq with id
    app.put("/actionseq/:id", actionseq.update);

    // Delete a ActionSeq with id
    app.delete("/actionseq/:id", actionseq.delete);

};

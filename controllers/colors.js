var express = require('express');
var router = express.Router();

var handleUpdate = function(res) {
  return function (err, doc) {
    if (err) {
      // If it failed, return error
      res.status(500).send("There was a problem adding the information to the database.");
    }
    else {
      res.location('/' + doc._id);
      res.status(200).send(doc);
    }
  }
};

/* GET home page. */
router.get('/:id', function(req, res) {
  // console.log(req.params.id);
  var db = req.db;
  var collection = db.get('colors');
  var id = req.params.id;
  collection.findOne({_id: id },{},function(e,doc){
    res.render('index', {
      "colors" : doc, layout: false
    });
  });
});

/* POST to Add User Service */
router.post('/colors', function(req, res) {

  var db = req.db;
  var colors = req.body.colors;
  var collection = db.get('colors');

  if(req.body.id) {
    collection.save({_id: req.body.id, colors: colors}, handleUpdate(res));
  }

  // Submit to the DB
  collection.insert({ colors: colors }, handleUpdate(res));
});

module.exports = router;

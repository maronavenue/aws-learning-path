const express = require('express')
const path = require('path')

const app = express()
const port = 8080

app.use("/public", express.static(__dirname + "/public"));

app.get('/', function(req, res) {
  res.sendFile(path.join(__dirname + '/index.html'));
});

app.get('/hello', function(req, res) {
  var choice = req.query.selected;
  console.log(choice)
  res.send({index: choice})
});

app.listen(port, () => {
  console.log(`Sample app listening on port ${port}...`)
})
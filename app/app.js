var express = require('express');
var app = express();

// prepare server
//app.use('/api', api); // redirect API calls

app.get("/", function(req, res) {
    res.sendFile(__dirname + '/www/index.html');
});

app.use('/js', express.static(__dirname + '/node_modules/bootstrap/dist/js')); // redirect bootstrap JS
app.use('/js', express.static(__dirname + '/node_modules/jquery/dist')); // redirect JS jQuery
app.use('/css', express.static(__dirname + '/node_modules/bootstrap/dist/css')); // redirect CSS bootstrap

var server = app.listen(8081, function () {
    var host = server.address().address;
    var port = server.address().port;

    console.log('my app is listening at http://%s:%s', host, port);
});
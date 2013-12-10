var path = require('path');
var url = require('url');
var fs = require('fs');
var helpers = require("./http-helpers");
module.exports.datadir = path.join(__dirname, "../data/sites.txt"); // tests will need to override this.



var paths = {
  '/': 'index.html'
};

var checkSite = function(res, data){
  var folder = 'data/sites';
  fs.readdir(folder, function (err, files) {
    if (err) {
      console.log(err);
      return;
    }
    console.log(files);
  });
};

var getSite = function(req, res, folder){
  var pathname = url.parse(req.url).pathname;
  var folder = 'web/public/' || folder;
  pathname = paths[pathname] || pathname;

  helpers.serveStaticAssets(res, folder, pathname);
};

var addSite = function(req, res) {
  var data = '';
  req.on('data', function(chunk) {
    data += chunk;
  });
  req.on('end', function() {
    data = data.split("").slice(4).join("");
    checkSite(res, data.concat('\n'));
  });
};

var requests = {
  'GET': getSite,
  'OPTIONS': helpers.sendOptions,
  'POST': addSite
};

module.exports.handleRequest = function (req, res) {
  var method = requests[req.method];
  method(req, res);
};

// helpers.saveSite
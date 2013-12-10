var path = require('path');
var url = require('url');
var helpers = require("./http-helpers");
var fs = require('fs');
module.exports.datadir = path.join(__dirname, "../data/sites.txt"); // tests will need to override this.



var paths = {
  '/': 'index.html',
  '/styles.css': 'styles.css'
};

var checkSite = function (req, res, data){
  fs.readdir('data/sites', function(err, file) {
    if(err) throw err;
    for(var i = 0; i < file.length; i++){
      if(file[i] === data) {
        console.log('google data: ', data);
        helpers.serveStaticAssets(res, 'data/sites/', data);
        return;
      }
    }
    helpers.saveSite(res, data.concat('\n'), module.exports.datadir);
  });
};

var getSite = function(req, res){
  var pathname = url.parse(req.url).pathname;
  var folder = 'data/sites/';
  if(paths[pathname]){
    folder = 'web/public/';
  }
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
    checkSite(req, res, data);
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

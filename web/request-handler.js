var path = require('path');
var url = require('url');
var helpers = require("./http-helpers");
module.exports.datadir = path.join(__dirname, "../data/sites.txt"); // tests will need to override this.

var requests = {
  'GET': helpers.serveStaticAssets
}

var paths = {
  '/': 'index.html'
}

module.exports.handleRequest = function (req, res) {
  var pathname = url.parse(req.url).pathname;
  pathname = paths[pathname] || pathname;
  var method = requests[req.method];
  method(res, 'web/public/', pathname);
};

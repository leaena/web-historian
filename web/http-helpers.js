var path = require('path');
var fs = require('fs');

var headers = headers = {
  "access-control-allow-origin": "*",
  "access-control-allow-methods": "GET, POST, PUT, DELETE, OPTIONS",
  "access-control-allow-headers": "content-type, accept",
  "access-control-max-age": 10, // Seconds.
  'Content-Type': "text/html"
};

var extensions = {
  '.html': "text/html",
  '.js': "text/javascript",
  '.css': "text/css",
  '.ico': "image/ico"
};

exports.sendOptions = sendOptions = function(res) {
  sendResponse(null, res);
};


exports.sendResponse = sendResponse = function(status, res, data) {
  status = status || 200;
  res.writeHead(status, headers);
  res.end(data);
};

exports.saveSite = function(res, data, folder) {
  console.log("Save site: ", folder);
  fs.appendFileSync(folder, data, "UTF-8");
  sendResponse(302, res, data);
};

exports.serveStaticAssets = function(res, folder, asset) {
  //Write some code here that helps serve up your static files!
  //(Static files are things like html (yours or arhived from others...), css, or anything that doesn't change often.)
  fs.readFile(folder + asset, function (err, html) {
    if (err) {
      sendResponse(404, res, html);
    } else {
      headers['Content-Type'] = extensions[path.extname(asset)];
      sendResponse(200, res, html);
    }
  });
};

exports.headers;

// As you go through, keep thinking about what helper functions you can put here!
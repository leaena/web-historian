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
}

exports.serveStaticAssets = function(res, folder, asset) {
  //Write some code here that helps serve up your static files!
  //(Static files are things like html (yours or arhived from others...), css, or anything that doesn't change often.)
  fs.readFile(folder + asset, function (err, html) {
    if (err) {
      throw err;
    }
    headers['Content-type'] = extensions[path.extname(asset)];
    res.writeHeader(200, headers);
    res.write(html);
    res.end();
    });
};

exports.headers;

// As you go through, keep thinking about what helper functions you can put here!
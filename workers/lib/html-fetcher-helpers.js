var fs = require('fs');
var request = require('request');


exports.readUrls = function(filePath, cb){
  var data = '';
  data += fs.readFileSync(filePath);
  data = data.split('\n');
  cb(data);
};

exports.downloadUrls = function(url){
  request({uri: "http://" + url}, function(error, response, body){
    fs.writeFile('/Users/hackreactor/code/leaena/2013-11-web-historian/data/sites/' + url, body);
  });
};

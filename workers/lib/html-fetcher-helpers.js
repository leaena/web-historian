var fs = require('fs');


exports.readUrls = function(filePath, cb){
  var data = '';
  data += fs.readFileSync(filePath);
  data = data.split('\n');
  cb(data);
};

exports.downloadUrls = function(urls){
  return true;
};

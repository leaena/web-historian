// eventually, you'll have some code here that uses the tested helpers 
// to actually download the urls you want to download.
var helpers = require("./lib/html-fetcher-helpers");
var urlArray;
helpers.readUrls('data/sites.txt', function(urls){
  urlArray = urls;
});

for(var i = 0; i < urlArray.length; i++){
  helpers.downloadUrls(urlArray[i]);
}

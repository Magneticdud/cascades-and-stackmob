var apikey = "648d7f86-44a0-408a-b0e3-b3b56925115f";
var url = "http://api.stackmob.com/names/ea8b9687ba15443fbeeb1c2ea4cc63ce";
                
function comm(what,content){
	var http = new XMLHttpRequest();
    http.open(what, url, true);

    http.setRequestHeader("Accept", "application/vnd.stackmob+json; version=0");
    http.setRequestHeader("X-StackMob-API-Key", apikey);
    http.setRequestHeader("Content-type", "application/json");
    http.setRequestHeader("Content-length", content.length);
    http.setRequestHeader("Connection", "close");
    http.send(content);
};
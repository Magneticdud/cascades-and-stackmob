var apikey = "648d7f86-44a0-408a-b0e3-b3b56925115f";
var url = "http://api.stackmob.com/";
var production = 0;
                
function comm(action,object,content){
	var http = new XMLHttpRequest();
    http.open(action, url+object, true);

    http.setRequestHeader("Accept", "application/vnd.stackmob+json; version="+production);
    http.setRequestHeader("X-StackMob-API-Key", apikey);
    http.setRequestHeader("Content-type", "application/json");
    http.setRequestHeader("Content-length", content.length);
    http.setRequestHeader("Connection", "close");
    http.send(content);
};

function update(object,content){
	comm("PUT",object,content);
};
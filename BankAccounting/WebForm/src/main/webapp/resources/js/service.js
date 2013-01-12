var FormService = function (url) {
    this.serviceURL = url;
};

FormService.prototype.postJSON = function (instance, uri, data, onsuccess) {
    var postMessage = JSON.stringify(data);
    $.ajax({type: "POST", url: instance.serviceURL + uri,
        data: postMessage, success: onsuccess, dataType: 'json',
        contentType: 'application/json; charset=utf-8'});
};

FormService.prototype.sendAllData = function (data) {
    var success = false;
    this.postJSON(this, "/info/data/", data, function (data) {
        success = JSON.parse(JSON.stringify(data));
        console.log(success);
    });
    console.log("fail send data");
    return success;
};
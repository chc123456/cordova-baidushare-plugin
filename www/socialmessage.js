
var exec = require("cordova/exec");

var SocialMessage = function () {
    this.name = "SocialMessage";
};

SocialMessage.prototype.send = function (message) {
    if (!message) {
        return;
    } 
    message.activityTypes = message.activityTypes.join(",");
    exec(null, null, "SocialMessage", "send", [message]);
};

module.exports = new SocialMessage();

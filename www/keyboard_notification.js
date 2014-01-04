cordova.define("com.techblue.cordova.plugin.keyboard_notification", function(require, exports, module) {

var argscheck = require('cordova/argscheck'),
    utils = require('cordova/utils'),
    exec = require('cordova/exec');
   
var Keyboard = function() {
};

Keyboard.notify = function() {
    exec(null, null, "KeyboardNotification", "notify", []);
};

module.exports = Keyboard;
});
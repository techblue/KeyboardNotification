/*global cordova*/
'use strict';

var exec = cordova.require('cordova/exec'),
    win = function (success) {
        // do nothing, succeed quietly
    };

function notify() {

    var fail = function (error) {
        console.log("Error notifying keybord show/hide" + error);
    };

    exec(win, fail, "KeyboardNotification", "notify", []);
}

module.exports = {
    notify: notify
};
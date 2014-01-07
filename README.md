# Keyboard show/hide notification Cordova Plugin 

This plugin send a method call to javascript from objective c when keyboard will show/hide.

# Installation

Assuming you're running Cordova 2.9+ and using the command line interface

    $ cd /path/to/project
    $ cordova plugin add https://github.com/iamneerj/KeyboradNotification
    
# Usage

In your javascript do as follows - 

var keyboard = cordova.require('com.techblue.cordova.plugin.keyboard_notification.KeyboardNotification');

keyboard.notify();

Also create a method named 'resizePageOnKeypadDownManually' in js file and place the code you want to be executed when you get the notification, like -

var resizePageOnKeypadDownManually = function(){

 console.log('Successfully called from objective-c.');
}

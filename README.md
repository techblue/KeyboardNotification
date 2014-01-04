# Keyboard show/hide notification Cordova Plugin 

This plugin send a method call to javascript from objective c when keyboard will show/hide.

# Installation

Assuming you're running Cordova 2.9+ and using the command line interface

    $ cd /path/to/project
    $ cordova plugin add https://github.com/iamneerj/KeyboradNotification
    
# Usage

In your javascript do as follows - 

var keyboard = cordova.require('cordova/plugin/keyboard_notification');

keyboard.notify();

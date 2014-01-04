#import "KeyboardNotification.h"
#import <QuartzCore/QuartzCore.h>

@implementation KeyboardNotification

 BOOL  keyboardVisible;

- (void) notify:(CDVInvokedUrlCommand*)command
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];

    CDVPluginResult* result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];

    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

- (void)keyboardWillShow:(NSNotification *)note {
    if (!keyboardVisible)
    {
        keyboardVisible = true;
    }
    
}
- (void)keyboardWillHide:(NSNotification *)note {
    if (keyboardVisible)
    {
        keyboardVisible = false;
        [self.webView stringByEvaluatingJavaScriptFromString:@"resizePageOnKeypadDownManually()"];
    }
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    name:UIKeyboardWillShowNotification
                                                  object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    name:UIKeyboardWillHideNotification
                                                  object:nil];
    [super dealloc];
}


@end

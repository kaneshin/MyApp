//
//  MYUniversalHelper.m
//  MyApp
//
//  Created by Shintaro Kaneko on 8/4/13.
//  Copyright (c) 2013 kaneshinth.com. All rights reserved.
//

#import "MYUniversalHelper.h"

@implementation MYUniversalHelper

#pragma mark -
#pragma mark Show UIAlertView

+ (void)showAlertWithTitle:(NSString *)title
                   message:(NSString *)message
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title
                                                    message:message];
    [alert addButtonWithTitle:NSLocalizedString(@"Close", nil)];
    [alert show];
}

+ (void)showAlertWithTitle:(NSString *)title
                   message:(NSString *)message
         cancelButtonTitle:(NSString *)cancelButtonTitle
             cancelHandler:(CancelHandler)cancelHandler
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title
                                                    message:message];
    [alert addButtonWithTitle:cancelButtonTitle handler:^(void) {
        if (cancelHandler) {
            cancelHandler(nil);
        }
    }];
    [alert show];
}

+ (void)showAlertWithTitle:(NSString *)title
                   message:(NSString *)message
         cancelButtonTitle:(NSString *)cancelButtonTitle
             cancelHandler:(CancelHandler)cancelHandler
     completionButtonTitle:(NSString *)completionButtonTitle
         completionHandler:(CompletionHandler)completionHandler
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title
                                                    message:message];
    [alert addButtonWithTitle:cancelButtonTitle handler:^(void) {
        if (cancelHandler) {
            cancelHandler(nil);
        }
    }];
    [alert addButtonWithTitle:completionButtonTitle handler:^(void) {
        if (completionHandler) {
            completionHandler(nil);
        }
    }];
    [alert show];
}

@end

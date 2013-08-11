//
//  MYUniversalHelper.h
//  MyApp
//
//  Created by Shintaro Kaneko on 8/4/13.
//  Copyright (c) 2013 kaneshinth.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MYUniversalHelper : NSObject

+ (void)showAlertWithTitle:(NSString *)title
                   message:(NSString *)message;

+ (void)showAlertWithTitle:(NSString *)title
                   message:(NSString *)message
         cancelButtonTitle:(NSString *)cancelButtonTitle
             cancelHandler:(CancelHandler)cancelHandler;

+ (void)showAlertWithTitle:(NSString *)title
                   message:(NSString *)message
         cancelButtonTitle:(NSString *)cancelButtonTitle
             cancelHandler:(CancelHandler)cancelHandler
     completionButtonTitle:(NSString *)completionButtonTitle
         completionHandler:(CompletionHandler)completionHandler;

@end

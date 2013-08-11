//
//  UIDevice+Extension.h
//  MyApp
//
//  Created by Shintaro Kaneko on 8/12/13.
//  Copyright (c) 2013 kaneshinth.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIDevice (Extension)

@property (nonatomic, assign, readonly, getter = isPhone) BOOL phone;
@property (nonatomic, assign, readonly, getter = isPad) BOOL pad;

@end

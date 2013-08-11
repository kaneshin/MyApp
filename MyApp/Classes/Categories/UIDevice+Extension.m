//
//  UIDevice+Extension.m
//  MyApp
//
//  Created by Shintaro Kaneko on 8/12/13.
//  Copyright (c) 2013 kaneshinth.com. All rights reserved.
//

#import "UIDevice+Extension.h"

@implementation UIDevice (Extension)

- (BOOL)isPhone
{
    return ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone);
}

- (BOOL)isPad
{
    return ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad);
}

@end

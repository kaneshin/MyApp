//
//  NSString+Extension.m
//  MyApp
//
//  Created by Shintaro Kaneko on 8/4/13.
//  Copyright (c) 2013 kaneshinth.com. All rights reserved.
//

#import "NSString+Extension.h"

@implementation NSString (Extension)

- (BOOL)isValid
{
    return (nil != self && ![self isEqual:[NSNull null]]);
}

- (BOOL)isEmpty
{
    return [self isEqualToString:@""];
}

- (BOOL)is:(NSString *)aString
{
    return [self isEqualToString:aString];
}

- (NSString *)addSuffix:(NSString *)aSuffix
{
    if (!self.isValid || self.isEmpty) {
        return self;
    } else {
        return [self stringByAppendingString:aSuffix];
    }
}

@end

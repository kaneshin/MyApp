//
//  NSString+Extension.h
//  MyApp
//
//  Created by Shintaro Kaneko on 8/4/13.
//  Copyright (c) 2013 kaneshinth.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Extension)

@property (nonatomic, assign, readonly, getter = isValid) BOOL valid;
@property (nonatomic, assign, readonly, getter = isEmpty) BOOL empty;

- (BOOL)is:(NSString *)aString;
- (NSString *)addSuffix:(NSString *)aSuffix;

@end

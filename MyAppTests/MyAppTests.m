//
//  MyAppTests.m
//  MyAppTests
//
//  Created by Shintaro Kaneko on 8/4/13.
//  Copyright (c) 2013 kaneshinth.com. All rights reserved.
//

#import "MyAppTests.h"

@implementation MyAppTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testExample
{
}

- (void)testNSString
{
    NSString *string;
    
    // @property (nonatomic, assign, readonly, getter = isValid) BOOL valid;
    string = nil;
    STAssertFalse(string.isValid, nil);
    string = @"foo";
    STAssertTrue(string.isValid, nil);
    
    // @property (nonatomic, assign, readonly, getter = isEmpty) BOOL empty;
    string = @"";
    STAssertTrue(string.isEmpty, nil);
    string = @"foo";
    STAssertFalse(string.isEmpty, nil);
    
    // - (BOOL)is:(NSString *)aString;
    STAssertTrue([@"foo" is:@"foo"], nil);
    STAssertFalse([@"foo" is:@"bar"], nil);
    
    // - (NSString *)addSuffix:(NSString *)aSuffix;
    STAssertEqualObjects([@"foo" addSuffix:@".png"], @"foo.png", nil);
}

- (void)testGeometry
{
    CGRect rect = CGRectMake(1.f, 2.f, 3.f, 4.f);
    STAssertEquals(CGPointEqualToPoint(CGRectGetMinPoint(rect), CGPointMake(CGRectGetMinX(rect), CGRectGetMinY(rect))), (bool)YES, nil);
    STAssertEquals(CGPointEqualToPoint(CGRectGetMinPoint(rect), CGPointMake(CGRectGetMaxX(rect), CGRectGetMaxY(rect))), (bool)NO, nil);
    STAssertEquals(CGPointEqualToPoint(CGRectGetMidPoint(rect), CGPointMake(CGRectGetMidX(rect), CGRectGetMidY(rect))), (bool)YES, nil);
    STAssertEquals(CGPointEqualToPoint(CGRectGetMidPoint(rect), CGPointMake(CGRectGetMaxX(rect), CGRectGetMaxY(rect))), (bool)NO, nil);
    STAssertEquals(CGPointEqualToPoint(CGRectGetMaxPoint(rect), CGPointMake(CGRectGetMaxX(rect), CGRectGetMaxY(rect))), (bool)YES, nil);
    STAssertEquals(CGPointEqualToPoint(CGRectGetMaxPoint(rect), CGPointMake(CGRectGetMinX(rect), CGRectGetMinY(rect))), (bool)NO, nil);
    STAssertEquals(CGSizeEqualToSize(CGRectGetSize(rect), CGSizeMake(CGRectGetWidth(rect), CGRectGetHeight(rect))), (bool)YES, nil);
    STAssertEquals(CGSizeEqualToSize(CGRectGetSize(rect), CGSizeMake(CGRectGetWidth(rect) + 1, CGRectGetHeight(rect) + 1)), (bool)NO, nil);
}

@end

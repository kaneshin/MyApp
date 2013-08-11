//
//  MyApp.h
//  MyApp
//
//  Created by Shintaro Kaneko on 8/4/13.
//  Copyright (c) 2013 kaneshinth.com. All rights reserved.
//

#ifndef __MyApp_h__
#define __MyApp_h__

typedef void (^CompletionHandler)(id userInfo);
typedef void (^CancelHandler)(id userInfo);
typedef void (^SuccessHandler)(id userInfo);
typedef void (^ErrorHandler)(id userInfo);

#import "MYCGGeometry.h"
#import "NSString+Extension.h"
#import "UIColor+Flat.h"
#import "UIDevice+Extension.h"

#define kMYAppId @"000000000"

/* Application Version Information */
#define kCurrentAppVersion ([[[NSBundle mainBundle] infoDictionary] objectForKey:(NSString *)kCFBundleVersionKey])
#define kTrackingAppVersion (__trackingAppVersion())
#define kTrackingAppVersionKey (@"kTrackingAppVersionKey")

static inline NSString*
__trackingAppVersion()
{
    return [[NSUserDefaults standardUserDefaults] stringForKey:kTrackingAppVersionKey];
}

static inline void
setTrackingAppVersion()
{
    [[NSUserDefaults standardUserDefaults] setObject:kCurrentAppVersion forKey:kTrackingAppVersionKey];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

/* Make Debug Log not to use NSLog basically */
#ifdef DEBUG
# define DLog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)
#else
# define DLog(...)
#endif

/* Remove NSLog if Release version */
#ifndef DEBUG
# ifdef NSLog
#  undef NSLog
# endif
# define NSLog(...)
#endif

#endif /* __MyApp_h__ */

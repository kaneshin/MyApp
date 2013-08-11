//
//  MYCGGeometry.h
//  MyApp
//
//  Created by Shintaro Kaneko on 8/12/13.
//  Copyright (c) 2013 kaneshinth.com. All rights reserved.
//

#ifndef __MYCGGeometry_h__
#define __MYCGGeometry_h__

#include <CoreGraphics/CGGeometry.h>

CG_INLINE CGPoint
__CGRectGetMinPoint(CGRect rect)
{
    return CGPointMake(CGRectGetMinX(rect), CGRectGetMinY(rect));
}
#define CGRectGetMinPoint __CGRectGetMinPoint

CG_INLINE CGPoint
__CGRectGetMidPoint(CGRect rect)
{
    return CGPointMake(CGRectGetMidX(rect), CGRectGetMidY(rect));
}
#define CGRectGetMidPoint __CGRectGetMidPoint

CG_INLINE CGPoint
__CGRectGetMaxPoint(CGRect rect)
{
    return CGPointMake(CGRectGetMaxX(rect), CGRectGetMaxY(rect));
}
#define CGRectGetMaxPoint __CGRectGetMaxPoint

CG_INLINE CGSize
__CGRectGetSize(CGRect rect)
{
    return CGSizeMake(CGRectGetWidth(rect), CGRectGetHeight(rect));
}
#define CGRectGetSize __CGRectGetSize

#endif /* __MYCGGeometry_h__ */
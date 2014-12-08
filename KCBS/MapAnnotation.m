//
//  MapAnnotation.m
//  KCBS
//
//  Created by YK Software Solutions on 17/11/14.
//  Copyright (c) 2014 YK Software Solutions. All rights reserved.
//
#import "MapAnnotation.h"

@implementation MapAnnotation
-(id)initWithTitle:(NSString *)title andCoordinate:
(CLLocationCoordinate2D)coordinate2d{
    self.title = title;
    self.coordinate =coordinate2d;
    return self;
}
@end
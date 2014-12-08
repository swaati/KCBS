//
//  ControlGroup.h
//  radio
//
//  Created by YK Software Solutions on 19/11/14.
//  Copyright (c) 2014 YK Software Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ControlGroup : NSObject
-(void)addControl:(UIControl*)control;
-(void)removeControl:(UIControl*)control;
-(UIControl*)currentlySelectedControl;


@end

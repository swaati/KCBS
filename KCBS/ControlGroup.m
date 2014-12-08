//
//  ControlGroup.m
//  radio
//
//  Created by YK Software Solutions on 19/11/14.
//  Copyright (c) 2014 YK Software Solutions. All rights reserved.
//
#import "ControlGroup.h"

@interface ControlGroup ()

@property (nonatomic, strong) NSMutableSet *controls;

@end

@implementation ControlGroup
@synthesize controls = _controls;

-(id)init {
        if ((self = [super init])) {
        _controls = [[NSMutableSet alloc] init];
    }
    return self;
}

-(void)addControl:(UIControl*)control {
    
    if (![self.controls containsObject:control]) {
        [self.controls addObject:control];
        [control addTarget:self action:@selector(controlTouched:) forControlEvents:UIControlEventTouchUpInside];
    }
}

-(void)removeControl:(UIControl *)control {
    if ([self.controls containsObject:control]) {
        [control removeTarget:self action:@selector(controlTouched:) forControlEvents:UIControlEventTouchUpInside];
        [self.controls removeObject:control];
    }
}

-(void)controlTouched:(id)sender {
    if ([sender isKindOfClass:[UIControl class]]) {
        UIControl *selectedControl = (UIControl*)sender;
        for (UIControl *control in self.controls) {
            [control setSelected:FALSE];
        }
        [selectedControl setSelected:TRUE];
    }
}

-(UIControl*)currentlySelectedControl {
    UIControl *selectedControl = nil;
    for (UIControl *control in self.controls) {
        if ([control isSelected]) {
            selectedControl = control;
            break;
        }
    }
    
    return selectedControl;
}

-(NSString*)description {
    return [NSString stringWithFormat:@"ControlGroup; no. of elements: %d, elements: %@\n", self.controls.count, self.controls];
}

@end
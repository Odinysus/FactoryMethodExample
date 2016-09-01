//
//  AKSwitch.m
//  FactoryMethodExample
//
//  Created by qiang on 9/1/16.
//  Copyright © 2016 akite. All rights reserved.
//

#import "AKSwitch.h"

@implementation AKSwitch

- (instancetype)init
{
    self = [super init];
    if (self) {
        _mySwitch = [[UISwitch alloc] initWithFrame:CGRectMake(60,  2, 200, 35)];
        [self addSubview:_mySwitch];
    }
    return self;
}

- (BOOL)isValid
{
    return YES;
}

- (NSString *)getValue
{
    return _mySwitch.selected ? @"true" : @"false";
}

@end

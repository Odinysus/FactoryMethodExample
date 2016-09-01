//
//  AKSwitchFactory.m
//  FactoryMethodExample
//
//  Created by qiang on 9/1/16.
//  Copyright © 2016 akite. All rights reserved.
//

#import "AKSwitchFactory.h"
#import "AKSwitch.h"

@implementation AKSwitchFactory

+(AKBasicControl *)makeControl
{
    return [[AKSwitch alloc] init];
}
@end

//
//  AKDatePickFactory.m
//  FactoryMethodExample
//
//  Created by qiang on 9/1/16.
//  Copyright © 2016 akite. All rights reserved.
//

#import "AKDatePickFactory.h"
#import "AKDatePick.h"

@implementation AKDatePickFactory

+ (AKBasicControl *)makeControl
{
    return [[AKDatePick alloc] init];
}

@end

//
//  AKTextFieldFactory.m
//  FactoryMethodExample
//
//  Created by qiang on 9/1/16.
//  Copyright © 2016 akite. All rights reserved.
//

#import "AKTextFieldFactory.h"
#import "AKTextField.h"

@implementation AKTextFieldFactory

+ (AKBasicControl *)makeControl
{
    return [[AKTextField alloc] init];
}

@end

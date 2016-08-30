//
//  AKFactory.m
//  FactoryMethodExample
//
//  Created by qiang on 8/29/16.
//  Copyright © 2016 akite. All rights reserved.
//

#import "AKFactory.h"
#import "AKLabel.h"
#import "AKTextField.h"
#import "AKBasicControl.h"

@implementation AKFactory

- (AKBasicControl *)controlWithType:(NSString *)type {
    if ([type isEqualToString:@"label"]) {
        return [[AKLabel alloc] init];
    } else if ([type isEqualToString:@"textField"]) {
        return [[AKTextField alloc] init];
    } else
        return [[AKBasicControl alloc] init];
}

- (AKBasicControl *)Label
{
    return [[AKLabel alloc] init];
}

- (AKBasicControl *)TextField
{
    return [[AKTextField alloc] init];
}
@end

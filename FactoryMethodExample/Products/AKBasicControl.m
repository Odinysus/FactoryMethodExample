//
//  AKBasicControl.m
//  FactoryMethodExample
//
//  Created by qiang on 8/29/16.
//  Copyright © 2016 akite. All rights reserved.
//

#import "AKBasicControl.h"

@implementation AKBasicControl
- (instancetype)init
{
    self = [super init];
    if (self) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.frame = CGRectMake(0, 0, 40, 40);
        [self addSubview:_titleLabel];
    }
    return self;
}
@end

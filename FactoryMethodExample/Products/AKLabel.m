//
//  AKLabel.m
//  FactoryMethodExample
//
//  Created by qiang on 8/29/16.
//  Copyright © 2016 akite. All rights reserved.
//

#import "AKLabel.h"

@implementation AKLabel

- (instancetype)init
{
    self = [super init];
    if (self) {
        _contentLabel = [[UILabel alloc] init];
    }
    return self;
}

/**
 *  assume is should not be nil
 *
 *  @return yes if self.contentText.text is not nil
 */
- (BOOL)isValid
{
    return [self.contentLabel.text isEqual: @""] ? NO : YES;
}

- (NSString *)getValue
{
    return self.contentLabel.text;
}

@end

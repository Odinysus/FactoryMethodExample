//
//  AKTextField.m
//  FactoryMethodExample
//
//  Created by qiang on 8/29/16.
//  Copyright © 2016 akite. All rights reserved.
//

#import "AKTextField.h"

@implementation AKTextField

- (instancetype)init
{
    self = [super init];
    if (self) {
        _contentText = [[UITextField alloc] init];
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
    return [self.contentText.text  isEqual: @""] ? NO : YES;
}

- (NSString *)getValue
{
    return _contentText.text;
}
@end

//
//  AKTextField.m
//  FactoryMethodExample
//
//  Created by qiang on 8/29/16.
//  Copyright © 2016 akite. All rights reserved.
//

#import "AKTextField.h"

#define TEXT_FEIFLD 200
@implementation AKTextField 

- (instancetype)init
{
    self = [super init];
    if (self) {
        _contentText = [[UITextField alloc] initWithFrame:CGRectMake(60,  2, 200, 35)];
        _contentText.layer.borderColor = [UIColor darkGrayColor].CGColor;
        _contentText.layer.borderWidth = 0.4f;
//        _contentText.returnKeyType
        _contentText.delegate = self;
        [self addSubview:_contentText];
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

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if([_contentText isFirstResponder]){
        [_contentText resignFirstResponder];
        return YES;
    }
    return YES;
    
}
@end

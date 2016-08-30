//
//  AKDatePick.m
//  FactoryMethodExample
//
//  Created by qiang on 8/30/16.
//  Copyright © 2016 akite. All rights reserved.
//

#import "AKDatePick.h"

#define TEXT_FEIFLD 200

@implementation AKDatePick
- (instancetype)init
{
    self = [super init];
    if (self) {
        CGFloat x = [UIScreen mainScreen].bounds.size.width;
        _contentText = [[UITextField alloc] initWithFrame:CGRectMake(60, 2, 200, 45)];
        _contentText.layer.borderWidth = 0.4f;

//        _contentText.inputViewController
        UIDatePicker *datePick = [[UIDatePicker alloc] init];
        datePick.frame = CGRectMake(0, 0, x, 200);
        datePick.date = [NSDate date];
        
        datePick.timeZone = [NSTimeZone timeZoneWithName:@"GTM+8"];
        datePick.minimumDate = [NSDate dateWithTimeIntervalSinceNow:72 * 60 * 60 * -1];
        datePick.maximumDate = [NSDate dateWithTimeIntervalSinceNow:72 * 60 * 60];
        datePick.datePickerMode = UIDatePickerModeDateAndTime;
        [datePick addTarget:self action:@selector(datePickerValueChanged:) forControlEvents:UIControlEventValueChanged];
        _contentText.inputView = datePick;
        _contentText.layer.borderColor = [UIColor darkGrayColor].CGColor;

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

#pragma mark -- subclass method 
- (void)datePickerValueChanged:(UIDatePicker *)pick
{
    NSDate *select = [pick date];
    NSDateFormatter *selectDateFormatter = [[NSDateFormatter alloc] init];
    selectDateFormatter.dateFormat = @"yy:MM:dd HH:mm:ss";
    NSString *dateAndTime = [selectDateFormatter stringFromDate:select];
    self.contentText.text = dateAndTime;
}



@end

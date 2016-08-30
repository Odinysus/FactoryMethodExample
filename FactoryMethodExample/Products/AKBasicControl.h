//
//  AKBasicControl.h
//  FactoryMethodExample
//
//  Created by qiang on 8/29/16.
//  Copyright © 2016 akite. All rights reserved.
//

#import <UIKit/UIKit.h>


/**
 *  some method need be implement by subclass.
 */
@protocol ControlProtocol <NSObject>

- (NSString *)getValue;

/**
 *  check wether current value is valid. if the value is nil. it should return NO.
 *
 *  @return wether the value is valid.
 */
- (BOOL)isValid;



@end

@interface AKBasicControl : UIView <ControlProtocol>

@property (nonatomic, strong) UILabel *titleLabel;

@end

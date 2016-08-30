//
//  AKFactory.h
//  FactoryMethodExample
//
//  Created by qiang on 8/29/16.
//  Copyright © 2016 akite. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "AKBasicControl.h"
#pragma mark factory method
@class AKBasicControl;

/**
 *  this factory class must be implement in subclass. so you should create a concrete factory class which inherit this protocol to implement concrete factory creator logic
 */
@protocol AKFactoryProtocol

- (AKBasicControl *)makeControl;

@end

#pragma mark simple factory
@interface AKFactory : NSObject
/**
 *  a paramenterized factory. a way of implementing  . modify control logic which is modify with identity inside this method
 *
 *  @param type identity of every control
 *
 *  @return subclass which depend on type.
 */
- (AKBasicControl *)controlWithType:(NSString *)type;

#pragma mark simple factory
/**
 *  another way of implementing of sample factory.
 *
 *  @return the concrete suclass what u call
 */
- (AKBasicControl *)TextField;
- (AKBasicControl *)Label;
@end

//
//  OCNonnullObject.h
//  ObjCAttribute
//
//  Created by swiftlang on 2017/2/24.
//  Copyright © 2017年 swiftlang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface OCNonnullObject : NSObject

- (void)sayHello: (nonnull NSString *)text;

- (nullable UIView *)contentView;

- (nonnull UIView *)createView;

@end

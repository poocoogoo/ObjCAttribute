//
//  OCNonnullObject.m
//  ObjCAttribute
//
//  Created by swiftlang on 2017/2/24.
//  Copyright © 2017年 swiftlang. All rights reserved.
//

#import "OCNonnullObject.h"

@implementation OCNonnullObject

- (void)sayHello: (nonnull NSString *)text {
    NSLog(@"🍎 => %@", text);
}

- (nullable UIView *)contentView {
    return nil;
}

- (nonnull UIView *)createView {
    return [UIView new];
}

@end

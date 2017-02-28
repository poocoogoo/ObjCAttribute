//
//  OANullPointerCheck.h
//  ObjCAttribute
//
//  Created by swiftlang on 2017/2/24.
//  Copyright © 2017年 swiftlang. All rights reserved.
//

#import <Foundation/Foundation.h>

int int_compare(int *p, int value, int *r) __attribute__((nonnull(1, 3)));
int int_compare_check(int *p, int *q);

extern void * my_malloc(size_t size) __attribute__((returns_nonnull));

@interface OANullPointerCheck : NSObject

@end

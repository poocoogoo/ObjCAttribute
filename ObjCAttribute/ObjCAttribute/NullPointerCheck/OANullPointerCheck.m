//
//  OANullPointerCheck.m
//  ObjCAttribute
//
//  Created by swiftlang on 2017/2/24.
//  Copyright © 2017年 swiftlang. All rights reserved.
//

#import "OANullPointerCheck.h"


int int_compare(int *p, int value, int *r) {
    printf("🍎 => %d 🍄 => %d 🍆 => %d", *p, value, *r);
    return *p;
}

int int_compare_check(int *p, int *q) {
    return !p ? int_compare(q, 5, p) : int_compare(p, 5, q);
}

void * my_malloc(size_t size) {
    return malloc(size);
}


@implementation OANullPointerCheck

@end

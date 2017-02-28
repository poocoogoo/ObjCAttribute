//
//  OABox.h
//  ObjCAttribute
//
//  Created by swiftlang on 2017/2/28.
//  Copyright © 2017年 swiftlang. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef struct __attribute__((objc_boxable)) {
    int version;
    double member;
} RustLang;

typedef union __attribute__((objc_boxable)) {
    int version;
    int v;
} GoLang;

@interface OABox : NSObject

- (void)boxAction;

@end

//
//  OABox.m
//  ObjCAttribute
//
//  Created by swiftlang on 2017/2/28.
//  Copyright © 2017年 swiftlang. All rights reserved.
//

#import "OABox.h"

@implementation OABox

- (void)boxAction {
    RustLang rust = {1, 2.9};
    GoLang go;
    go.version = 1;
    NSValue *rustValue = @(rust);
    NSValue *goValue = @(go);
    //NSLog(@"🍎 => %@, %@", rustValue, goValue);
}

@end

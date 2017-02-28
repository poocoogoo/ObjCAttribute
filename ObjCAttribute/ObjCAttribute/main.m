//
//  main.m
//  ObjCAttribute
//
//  Created by swiftlang on 2017/2/24.
//  Copyright © 2017年 swiftlang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"


__attribute__((constructor))
static void beingEntryMainHandler() {
    printf("🍎  => being entry main handler\n");
}

__attribute__((destructor))
static void afterMainHandler() {
    printf("🍎  => after main handler\n");
}

int main(int argc, char * argv[]) {
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}

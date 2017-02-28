//
//  ViewController.m
//  ObjCAttribute
//
//  Created by swiftlang on 2017/2/24.
//  Copyright © 2017年 swiftlang. All rights reserved.
//

#import "ViewController.h"
#import "OANullPointerCheck.h"
#import "OCNonnullObject.h"
#import "OABaseItem.h"
#import "OAConfuseNameObject.h"
#import "OALog.h"
#import "OABox.h"

@interface ViewController ()

@property (nonatomic, strong, nullable) UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self boxAction];
}

/// C 语言空指针校验
- (void)nullPointerCheck {
    int b = 90;
    int *p = 0;
    int *q = &b;
    int_compare_check(p, q);
}

/// Objective-C 空指针校验
- (void)objcNullPointerCheck {
    OCNonnullObject *object = [OCNonnullObject new];
    [object sayHello:nil];

    UIView *subView = [object contentView];
    if (!subView) {
        subView = [object createView];
    }
}

/// Objective-c 消息弃用
- (void)messageDeprecated {
    OABaseItem *item = [OABaseItem new];
    [item itemInfo];
    [item baseItemInfo];
    baseItemInfoMessage("🍄");
}

/// Objective-c enum 弃用
- (void)enumDeprecated {
    OABaseItemStatus status = OABaseItemStatusDeveloping;
    if (status == OABaseItemStatusOpen) {
        NSLog(@"opened");
    }
}

/// 类名混淆
- (void)confuseClassName {
    NSString *name = NSStringFromClass([OAConfuseNameObject class]);
    NSLog(@"😂 class name ==> %@", name);
}

/// overloadable and enable_if
- (void)overloadableAndEnableIf {
    logInfo(3);
    logInfo("overload button action");
    logInfo("login", "from facebook");
}

/// Box
- (void)boxAction {
    OABox *box = [OABox new];
    [box boxAction];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

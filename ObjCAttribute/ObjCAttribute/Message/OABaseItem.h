//
//  OABaseItem.h
//  ObjCAttribute
//
//  Created by swiftlang on 2017/2/27.
//  Copyright © 2017年 swiftlang. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, OABaseItemStatus) {
    OABaseItemStatusNone = 0,
    OABaseItemStatusOpen,
    OABaseItemStatusClosed,
    OABaseItemStatusDeveloping  OBJC_DEPRECATED("please use OABaseItemStatusDeveloped"),
    OABaseItemStatusDeveloped,
};


void baseItemInfoMessage(void *message) __attribute__((deprecated("please use Objective-C OABaseItem Class message.")));


@interface OABaseItem : NSObject

- (void)itemInfo;
- (void)baseItemInfo __attribute((deprecated("please use itemInfo message")));
- (void)unavailabeInfo OBJC_UNAVAILABLE("this unavailable, use itemInfo message");

@end

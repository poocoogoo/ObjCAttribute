//
//  OABaseObject.h
//  ObjCAttribute
//
//  Created by swiftlang on 2017/2/27.
//  Copyright © 2017年 swiftlang. All rights reserved.
//

#import <Foundation/Foundation.h>

//__attribute__((objc_runtime_visible))
@interface OABaseObject : NSObject

- (void)getData __attribute__((objc_requires_super));

@end

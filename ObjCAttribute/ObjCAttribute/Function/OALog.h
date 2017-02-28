//
//  OALog.h
//  ObjCAttribute
//
//  Created by swiftlang on 2017/2/28.
//  Copyright © 2017年 swiftlang. All rights reserved.
//

#ifndef OALog_h
#define OALog_h

#include <stdio.h>

__attribute__((overloadable)) void logInfo(int counter);

__attribute__((overloadable)) void logInfo(char *identifer);

__attribute__((overloadable)) void logInfo(char *identifer, char *para);


//void validID(long idNumber);

#endif /* OALog_h */

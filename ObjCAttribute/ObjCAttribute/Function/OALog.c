//
//  OALog.c
//  ObjCAttribute
//
//  Created by swiftlang on 2017/2/28.
//  Copyright © 2017年 swiftlang. All rights reserved.
//

#include "OALog.h"

static void validID(long idNumber) __attribute__((enable_if(idNumber > 0 && idNumber < 10000, "your ID are not valid!"))) {
    printf("🍎 id number => %ld \n", idNumber);
}

__attribute__((overloadable)) void logInfo(int counter) {
    printf("🍄 counter => %d \n", counter);
}

__attribute__((overloadable)) void logInfo(char *identifier) {
    printf("🍄 identifier => %s \n", identifier);
}

__attribute__((overloadable)) void logInfo(char *identifier, char *para) {
    printf("🍄 identifier => %s, para => %s \n", identifier, para);
    validID(91);
}

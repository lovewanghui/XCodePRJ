//
//  main.m
//  private method
//
//  Created by 杜明豪 on 2017/8/1.
//  Copyright © 2017年 杜明豪. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person* myPerson = [[Person alloc]init];
        SEL sRun = @selector(run);
        [myPerson performSelector:sRun];//这里通过选择器,访问了所谓的私有方法.
        
    }
    return 0;
}

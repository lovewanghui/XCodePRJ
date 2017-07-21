//
//  main.m
//  categoryAndExtension
//
//  Created by 杜明豪 on 2017/7/21.
//  Copyright © 2017年 杜明豪. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "People.h"
#import "People+Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        People* student = [[People alloc] init];
        student.name = @"zhangsan";
        student.age = 23;
        student.sex = @"men";
        [student printBaseInfo];
        [student selfIntroduce];
    }
    return 0;
}

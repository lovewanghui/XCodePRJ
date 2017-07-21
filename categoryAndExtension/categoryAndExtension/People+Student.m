//
//  People+Student.m
//  categoryAndExtension
//
//  Created by 杜明豪 on 2017/7/21.
//  Copyright © 2017年 杜明豪. All rights reserved.
//

#import "People+Student.h"

@implementation People (Student)
-(void)selfIntroduce
{
    NSLog(@"My name is %@,and age is %d",self.name,self.age);
}
@end

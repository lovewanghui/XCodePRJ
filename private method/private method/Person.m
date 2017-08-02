//
//  Person.m
//  private method
//
//  Created by 杜明豪 on 2017/8/1.
//  Copyright © 2017年 杜明豪. All rights reserved.
//

#import "Person.h"
@interface Person()
{
    int a;
    
}
@property(nonatomic) int age;
-(void) eat;
@end;

@implementation Person



-(void)run
{
    NSLog(@"run");
}

-(void) eat
{
    NSLog(@"eat");
}
@end

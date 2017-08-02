//
//  Person.m
//  privateAndPublic
//
//  Created by 杜明豪 on 2017/7/29.
//  Copyright © 2017年 杜明豪. All rights reserved.
//

#import "Person.h"
//在实现文件中,分类,类扩展.
// 私有变量...私有方法.
//
@interface Person()
{
    NSInteger _bankPassword;
    
}
@property(nonatomic)NSString* phone;
-(void)speakPhone;


@end

@implementation Person

/**
 这是一个私有方法:
  1. 在类外以及子类中不可以调用
  2. 只能在本类的@implementation 和 @end 之间使用.
  3. 这个私有方法是通过在类延伸中声明,在实现文件里面实现.
 
 */
-(void)speakPhone
{
    NSLog(@"my phone is %@---通过调用property生成的getter",self.phone);
    NSLog(@"my phone is %@---通过调用property生成的_phone",_phone);
}

/**
   designed initial method;
 */
-(instancetype)initWith:(NSString*)name_ old:(int)age_ gender:(NSString*)sex_
{
    self = [super init];
    if(self)
    {
    self.name = name_;
    self.age = age_;
    self.sex = sex_;
    _phone = @"110";
    }
    
    return self;
    
}


/**
 overRide init method
 
 */
-(instancetype)init
{
    self = [self initWith:nil old:0 gender:nil];
    return self;
}

-(void)selfIntroduce
{
    NSLog(@"my name is %@ age is %d sex is%@ homeName is %@",_name,_age,_sex,_homeName);
    
    //在这里面可以调用私有方法.
    [self speakPhone];
    
    
}
@end


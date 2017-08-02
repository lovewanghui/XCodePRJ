//
//  Person.h
//  privateAndPublic
//
//  Created by 杜明豪 on 2017/7/29.
//  Copyright © 2017年 杜明豪. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    @public
    NSString* _homeName;
    
    @protected
    NSInteger _dogName;
    
    @private
    NSString* _passWord;
/**
  声明实例变量:
  使用三种不同的访问修饰符来声明变量,默认为protected.
  因为OC是面向对象编程，使用@public关键字，暴漏了类内部的细节，从而不符合面向对象语言的三大特性之一——封装
  实例变量经过@protectde修饰之后，我们就不能在该类和其子类外操作，例如mian.m文件。
  **通过接口(setter 和 getter )** 
  方法我们可以来设置实例变量的值.
    赋值（setter）：通过方法传入参数，在类的内部实现实例变量的赋值
    取值（getter）：通过方法获取实例变量的值
 */
}
@property(nonatomic)NSString* name;
@property(nonatomic,readwrite,assign)int age;
@property(nonatomic,readwrite,strong)NSString* sex;

-(instancetype)initWith:(NSString*)name_ old:(int)age_ gender:(NSString*)sex_;
-(void)selfIntroduce;

@end

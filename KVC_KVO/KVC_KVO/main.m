//
//  main.m
//  KVC_KVO
//
//  Created by 杜明豪 on 2017/7/27.
//  Copyright © 2017年 杜明豪. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Adress.h"
/**
 Key-Value-Coding (KVC) 
 一个非正式的Protocol，提供一种机制来间接访问对象的属性.而不是通过调用Setter、Getter方法访问
 可以允许开发者通过Key名直接访问对象的属性，或者给对象的属性赋值
 */

/**
 [object setValue: forKey: ]
 - (nullable id)valueForKeyPath:(NSString *)keyPath; 
 
 [object setValue: forKeyPath: ]
 - (void)setValue:(nullable id)value forKeyPath:(NSString *)keyPath;
 如果有嵌套对象,这里第二个参数需要为:keyPath.
 
 注意:
 KVC所涉及的协议,<NSKeyValueCoding>,里面还有一些用于处理异常的方法,可以根据需要去实现,
 理解KVC查找<key>的步骤,以及每个步骤分支,所调用的协议方法.
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person * myPerson = [[Person alloc]init];
        [myPerson setValue:@"DMH" forKey:@"name"];
        NSLog(@"%@",[myPerson valueForKey:@"name"]);
        
        Adress* address = [[Adress alloc] init];
        myPerson.myAddress = address;
        
        [myPerson setValue:@"AnHui" forKeyPath:@"myAddress.birthPlace"];
        NSLog(@"%@",[myPerson valueForKeyPath:@"myAddress.birthPlace"]);
        
        
    }
    return 0;
}

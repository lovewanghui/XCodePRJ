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
 思考:为什么要引用这一套机制:

 */


/**
 KVO (Key-Value Observing )
 KVO建立在 KVC 之上，它能够观察一个对象的 KVC key path 值的变化。
 举个例子，用代码观察一个 person 对象的 address 变化，以下是实现的三个方法：
 watchPersonForChangeOfAddress: 实现观察
 observeValueForKeyPath:ofObject:change:context: 在被观察的 key path 的值变化时调用。
 dealloc 停止观察
 
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
        
        //KVO的使用
        
        [myPerson addObserver:myPerson forKeyPath:@"myAddress.birthPlace" options:0 context:@"add"];
        [myPerson setValue:@"JiangSu" forKeyPath:@"myAddress.birthPlace"];
        NSLog(@"%@",[myPerson valueForKeyPath:@"myAddress.birthPlace"]);
        
        
        
        
        
        
        
        
    }
    return 0;
}

//
//  main.m
//  privateAndPublic
//
//  Created by 杜明豪 on 2017/7/29.
//  Copyright © 2017年 杜明豪. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person* myPerson = [[Person alloc]initWith:@"DMH" old:24 gender:@"male"];
        [myPerson selfIntroduce];
        
//        [myPerson speakPhone]; 这个方法是不能调用的.
        
        // _homeName 是公有的实例变量. 可以这样设值,但是最好不要这样... 失去了封装性的意义
        
        myPerson->_homeName = @"mahuzi";
        
        [myPerson selfIntroduce];
        
        
       
    }
    return 0;
}

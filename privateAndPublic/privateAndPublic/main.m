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
        //[myPerson selfIntroduce];
        
//        [myPerson speakPhone]; 这个方法是不能调用的.
        
        // _homeName 是公有的实例变量. 可以这样设值,但是最好不要这样... 失去了封装性的意义
        
        myPerson->_homeName = @"mahuzi";
        
      //  [myPerson selfIntroduce];
        
        
        /**
         **事实证明:OC中没有真正的私有方法.**
         即便是通过类延伸,或者不在头文件中声明,你也可以通过SEl 来调用....
         只要你知道方法的名称就可以.
         */
        SEL test = NSSelectorFromString(@"speakPhone");
        [myPerson  performSelector:test];
        
        
       
    }
    return 0;
}

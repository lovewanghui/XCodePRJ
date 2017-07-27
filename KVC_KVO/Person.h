//
//  Person.h
//  KVC_KVO
//
//  Created by 杜明豪 on 2017/7/27.
//  Copyright © 2017年 杜明豪. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Adress.h"

@interface Person : NSObject
{
    NSString * _name;
    NSNumber * _age;
    NSString * sex;
    int _weight;
}
@property(nonatomic)Adress* myAddress;

//-(void)watchPersonForChangeOfAddress:(Person *)p;

@end

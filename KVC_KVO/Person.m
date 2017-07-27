//
//  Person.m
//  KVC_KVO
//
//  Created by 杜明豪 on 2017/7/27.
//  Copyright © 2017年 杜明豪. All rights reserved.
//

#import "Person.h"

@implementation Person


/**
 在OC中要实现KVO必须实现NSKeyValueObServing协议,但是NSObject已经实现了,直接覆盖就可以
 */

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context
{
    NSLog(@"changed");
}
@end


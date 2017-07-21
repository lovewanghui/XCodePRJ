//
//  People.h
//  categoryAndExtension
//
//  Created by 杜明豪 on 2017/7/21.
//  Copyright © 2017年 杜明豪. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface People : NSObject
{
    
}
@property(nonatomic,readwrite,strong)NSString* name;
@property(nonatomic,unsafe_unretained)int age;
@property(nonatomic)NSString* sex;

-(void)printBaseInfo;

@end

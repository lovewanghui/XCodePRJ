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
    
/**
  declare of member
 */
}
@property(nonatomic)NSString* name;
@property(nonatomic,readwrite,assign)int age;
@property(nonatomic,readwrite,strong)NSString* sex;

-(instancetype)initWith:(NSString*)name old:(int)age gender:(NSString*)sex;
-(void)selfIntroduce;

@end

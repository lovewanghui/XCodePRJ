//
//  main.m
//  weatherTest
//
//  Created by 杜明豪 on 2017/8/2.
//  Copyright © 2017年 杜明豪. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString* urlStr = @"https://free-api.heweather.com/v5/now?city=shanghai&key=d679abee496e420299eea479cdc3a766";
        NSURL *url = [[NSURL alloc] initWithString:urlStr];
        
        
        NSURLRequest* myReq = [[NSURLRequest alloc]initWithURL:url
                                                   cachePolicy:0 timeoutInterval:3];
        //NSData* repondData = [[NSData alloc]init];
        NSData  *data=[NSURLConnection sendSynchronousRequest:myReq returningResponse:nil error:nil];
        
        NSDictionary *weatherDic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
        //转码UIF-8
        NSString* jsonString = [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
        if(jsonString==nil)
            
            NSLog(@"登陆失败,请重试");
       else
       {
           NSLog(@"ok");
//           NSDictionary *weatherDic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
               NSLog(@"%@",jsonString);
    
}
    return 0;
}
}

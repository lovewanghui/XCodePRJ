//
//  ViewController.m
//  plusCaculator
//
//  Created by 杜明豪 on 2017/8/2.
//  Copyright © 2017年 杜明豪. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *firstArg;
@property (weak, nonatomic) IBOutlet UITextField *seccondArg;
@property (weak, nonatomic) IBOutlet UILabel *result;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)getResult:(id)sender {
    NSString* num1 = [[NSString alloc]initWithString:self.firstArg.text];
    NSString* num2 = [[NSString alloc]initWithString:self.seccondArg.text];
    if (num1.length == 0) {
        [self showInfo:@"请输入第一个数"];
        
    }
    
    if(num2.length == 0)
    {
        [self showInfo:@"请输入第二个数"];
    }
    //NSIteger是一种long类型的类型定义,不是对象.不可以使用alloc init来定义初始化对象.
//    NSInteger sum1 = [num1 integerValue];
//    NSInteger sum2 = [num2 integerValue];
//    NSInteger sum = sum1 + sum2;
    NSInteger sumTest = [num1 integerValue] + [num2 integerValue];
//    NSLog(@"%ld(sum) %ld(sumTest)",(long)sum,(long)sumTest);
//    result = [num1 integerValue] + [num2 integerValue];
    NSString* strResult = [[NSString alloc] initWithFormat:@"%zd",sumTest];
    //NSLog(@"nssting is %@",strResult);
                           
    self.result.text = strResult;
}



/**
 私有方法,,,实现私有方法的两种途径是:
  1. 在类延伸中实现
  2. 不在声明文件中声明,直接在实现文件中实现.
 这里采用的是第二种方法.
 这是一种常用的方法.
 */
-(void)showInfo:(NSString*)info
{
    UIAlertView* showAlert = [[UIAlertView alloc] initWithTitle:@"Error" message:info delegate:nil cancelButtonTitle:@"我知道了" otherButtonTitles:nil, nil];
    [showAlert show];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

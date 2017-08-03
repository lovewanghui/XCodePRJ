//
//  ViewController.m
//  天气APP
//
//  Created by 杜明豪 on 2017/8/3.
//  Copyright © 2017年 杜明豪. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *add;
@property (weak, nonatomic) IBOutlet UIButton *delete;
@property (weak, nonatomic) IBOutlet UIView *shopView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

/**
 关于CGRect:
 CGRect 不是对象,只是一个结构体的类型定义.
 struct CGRect {
 CGPoint origin;
 CGSize size;
 };
 ********不可以调用方法来创建,但是CGRect()函数可以****
 CGRectMake(CGFloat x, CGFloat y, CGFloat width, CGFloat height);
 
 */
- (IBAction)addItem:(UIButton *)sender {
    UIView* itemView = [[UIView alloc]init];
    //CGRect _frame = CGRectMake(0, 0, 100, 133);
    itemView.frame = CGRectMake(0, 0, 100, 133);
    itemView.backgroundColor = [UIColor redColor];
    
    [self.shopView addSubview:itemView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

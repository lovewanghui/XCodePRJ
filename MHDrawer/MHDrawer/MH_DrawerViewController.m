//
//  MH_DrawerViewController.m
//  MHDrawer
//
//  Created by 杜明豪 on 2017/7/26.
//  Copyright © 2017年 杜明豪. All rights reserved.
//

#import "MH_DrawerViewController.h"

@interface MH_DrawerViewController ()

@end

@implementation MH_DrawerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor blueColor];
    
    // 功能测试
    for (NSUInteger i = 0; i < 5; i++) {
        UIButton *btn = [[UIButton alloc] init];
        [self.view addSubview:btn];
        btn.frame = CGRectMake(20, 200 + i * 60, 100, 50);
        btn.tag = i +1;
        [btn setTitle:[NSString stringWithFormat:@"功能 %li", i + 1] forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
}

// 功能测试
- (void)btnClick:(UIButton *)btn {
    NSLog(@"功能 %li", btn.tag);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

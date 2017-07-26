//
//  MH_MainViewController.m
//  MHDrawer
//
//  Created by 杜明豪 on 2017/7/26.
//  Copyright © 2017年 杜明豪. All rights reserved.
//

#import "MH_MainViewController.h"

@interface MH_MainViewController ()
@property (nonatomic, assign, getter = isPush) BOOL push;
@end

@implementation MH_MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"抽屉" style:UIBarButtonItemStylePlain target:self action:@selector(pushDrawer)];
    
    // 功能测试
    for (NSUInteger i = 0; i < 3; i++) {
        UIButton *btn = [[UIButton alloc] init];
        [self.view addSubview:btn];
        btn.frame = CGRectMake(20, 200 + i * 60, 100, 50);
        btn.tag = i +1;
        [btn setTitle:[NSString stringWithFormat:@"按钮 %li", i + 1] forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    // Do any additional setup after loading the view.
}
    
// 功能测试
- (void)btnClick:(UIButton *)btn {
    NSLog(@"按钮 %li", btn.tag);
}

// 抽屉视图显示／隐藏
- (void)pushDrawer {
    
    self.push = !self.isPush;
    
    if (self.myBlock != nil) {
 self.myBlock(self.isPush);
    }
}

// 触摸手势抽屉视图显示／隐藏
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    if (self.isPush) {
        [self pushDrawer];
    }
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

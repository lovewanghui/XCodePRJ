//
//  ViewController.m
//  MHDrawer
//
//  Created by 杜明豪 on 2017/7/26.
//  Copyright © 2017年 杜明豪. All rights reserved.
//

#import "ViewController.h"
// 设定抽屉视图的宽度
#define DRAWER_VC_WIDTH ((self.view.bounds.size.width * 3) / 4)

@interface ViewController ()
@property (nonatomic, strong) MH_MainViewController *mainVC;
@property (nonatomic, strong) UINavigationController *mainNVC;

@property (nonatomic, strong) MH_DrawerViewController *drawerVC;

@end

@implementation ViewController

/**
 initial ViewController ... 
 APP启动后的第一个运行的ViewController
 */

//TEST
-(void)loadView
{
    [super loadView];
    NSLog(@"%@",self);
}


/**
 自定义container ViewController?
 
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // 添加主视图
    self.mainVC = [[MH_MainViewController alloc] init];
    self.mainNVC = [[UINavigationController alloc] initWithRootViewController:self.mainVC];
    
    [self addChildViewController:self.mainNVC];
    [self.view addSubview:self.mainNVC.view];
    
    // 添加抽屉视图
    self.drawerVC = [[MH_DrawerViewController alloc] init];
    //设置抽屉视图的大小和位置...
    self.drawerVC.view.frame = CGRectMake(-DRAWER_VC_WIDTH, 0, DRAWER_VC_WIDTH, self.view.bounds.size.height);
    [self addChildViewController:self.drawerVC];
    [self.view addSubview:self.drawerVC.view];
    
    // 抽屉视图显示／隐藏回调
    __weak typeof(self) weakSelf = self;
    self.mainVC.myBlock = ^(BOOL isPush){
        
        CGRect mainNVCFrame = weakSelf.self.mainNVC.view.bounds;
        CGRect drawerVCFrame = weakSelf.self.drawerVC.view.bounds;
        
        mainNVCFrame.origin.x = isPush ? DRAWER_VC_WIDTH : 0;
        drawerVCFrame.origin.x = isPush ? 0 : -DRAWER_VC_WIDTH;
        
        [UIView animateWithDuration:0.5 animations:^{
            weakSelf.mainNVC.view.frame = mainNVCFrame;
            weakSelf.drawerVC.view.frame = drawerVCFrame;
        }];
    };
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

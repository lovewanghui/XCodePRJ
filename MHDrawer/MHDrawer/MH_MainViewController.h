//
//  MH_MainViewController.h
//  MHDrawer
//
//  Created by 杜明豪 on 2017/7/26.
//  Copyright © 2017年 杜明豪. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MH_MainViewController : UIViewController
@property (nonatomic, copy) void (^myBlock)(BOOL);
@end

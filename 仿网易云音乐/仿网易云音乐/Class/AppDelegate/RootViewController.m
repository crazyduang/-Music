//
//  RootViewController.m
//  仿网易云音乐
//
//  Created by admin on 16/9/13.
//  Copyright © 2016年 YL. All rights reserved.
//

#import "RootViewController.h"
#import "FindMusicVC.h"
#import "MineMusicVC.h"
#import "FriendVC.h"
#import "MeVC.h"


@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self addsubViewController];
    
}
- (void)addsubViewController{
//    UINavigationBar *bar = [UINavigationBar appearance];
//    //设置显示的颜色
//    bar.barTintColor =[UIColor colorWithRed:200/255.0f green:38/255.0f  blue:39/255.0f alpha:1.0f];
//    //设置字体颜色
//    bar.tintColor = [UIColor whiteColor];
//    [bar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor], NSFontAttributeName:[UIFont systemFontOfSize:12]}];
    
    
    
    UIVisualEffectView *visualView = [[UIVisualEffectView alloc] initWithEffect:[UIBlurEffect effectWithStyle:UIBlurEffectStyleDark]];
    visualView.frame = self.tabBar.bounds;
    visualView.alpha = 1;
    [self.tabBar insertSubview:visualView atIndex:0];
    self.tabBar.opaque = YES;
    
    //设置状态栏字体颜色为白色
//    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    
    FindMusicVC *findMusicVC = (FindMusicVC *)[self setViewController:[[FindMusicVC alloc] init] Title:@"发现音乐" image:@"cm2_btm_icn_discovery@3x" imageSelect:@"cm2_btm_icn_discovery_prs@3x"];
    MineMusicVC *mineMusicVC = (MineMusicVC *)[self setViewController:[[MineMusicVC alloc] init] Title:@"我的音乐" image:@"cm2_btm_icn_music@3x" imageSelect:@"cm2_btm_icn_music_prs@3x"];
    FriendVC *friendVC = (FriendVC *)[self setViewController:[[FriendVC alloc] init] Title:@"朋友" image:@"cm2_btm_icn_friend@3x" imageSelect:@"cm2_btm_icn_friend_prs@3x"];
    MeVC *meVC = (MeVC *)[self setViewController:[[MeVC alloc] init] Title:@"账号" image:@"cm2_btm_icn_friend@3x" imageSelect:@"cm2_btm_icn_friend_prs@3x"];
    self.viewControllers = @[findMusicVC, mineMusicVC, friendVC, meVC];
}

- (UIViewController *)setViewController:(UIViewController *)viewController Title:(NSString *)title image:(NSString *)image imageSelect:(NSString *)imageSelect{
    UITabBarItem *tabbarItem = [[UITabBarItem alloc] initWithTitle:title image:[[UIImage imageNamed:image] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[[UIImage imageNamed:imageSelect] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    UINavigationController *naNC = [[UINavigationController alloc] initWithRootViewController:viewController];
    naNC.tabBarItem = tabbarItem;
    return naNC;
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

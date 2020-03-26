//
//  BKHomeMoudleManager.m
//  BKJKAthena
//
//  Created by yin linlin on 2018/3/21.
//

#import "BKHomeMoudleManager.h"
#import <HomeProtocol/BKHomeProtocol.h>
#import <MediaService/BKJKProtocolManager.h>
#import "BKHomeViewController.h"
#import "BKNewsListViewController.h"

@interface BKHomeMoudleManager() <BKHomeProtocol>

@end

@implementation BKHomeMoudleManager

+ (void)load {
    [BKJKProtocolManager registServiceProvide:[[self alloc] init] forProtocol:@protocol(BKHomeProtocol)];
}
     
- (UIViewController *)homeViewControllerAsNavRoot:(BOOL)isRoot {
    BKHomeViewController *homeVC = [[BKHomeViewController alloc] init];
    homeVC.title = @"首页";
    if (!isRoot) {
        return homeVC;
    } else {
        UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:homeVC];
        return nav;
    }
}
- (UIViewController *)newsListVCWithType:(NSString *)type {
    BKNewsListViewController *newsVC = [[BKNewsListViewController alloc] init];
    newsVC.type = type;
    newsVC.title = @"iOS13 Dynamic Color";
    return newsVC;
}
@end

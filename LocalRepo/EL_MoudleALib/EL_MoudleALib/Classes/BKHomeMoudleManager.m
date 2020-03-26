//
//  BKHomeMoudleManager.m
//  BKJKAthena
//
//  Created by yin linlin on 2018/3/21.
//

#import "BKHomeMoudleManager.h"
#import "ELAProtocol.h"
#import <MediaService/ELProtocolManager.h>
#import "ELAHomeViewController.h"
#import "ELADynamicColorController.h"

@interface BKHomeMoudleManager() <ELAProtocol>

@end

@implementation BKHomeMoudleManager

+ (void)load {
    [ELProtocolManager registServiceProvide:[[self alloc] init] forProtocol:@protocol(ELAProtocol)];
}
     
- (UIViewController *)homeViewControllerAsNavRoot:(BOOL)isRoot {
    ELAHomeViewController *homeVC = [[ELAHomeViewController alloc] init];
    homeVC.title = @"ModuleA";
    if (!isRoot) {
        return homeVC;
    } else {
        UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:homeVC];
        return nav;
    }
}
- (UIViewController *)newsListVCWithType:(NSString *)type {
    ELADynamicColorController *newsVC = [[ELADynamicColorController alloc] init];
    newsVC.type = type;
    newsVC.title = @"iOS13 Dynamic Color";
    return newsVC;
}
@end

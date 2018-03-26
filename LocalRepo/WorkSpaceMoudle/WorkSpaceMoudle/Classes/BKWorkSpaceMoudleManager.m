//
//  BKWorkSpaceMoudleManager.m
//  BKJKAthena
//
//  Created by yin linlin on 2018/3/21.
//

#import "BKWorkSpaceMoudleManager.h"
#import <WorkSProtocol/BKWorkSpaceProtocol.h>
#import <HomeProtocol/BKHomeProtocol.h>
#import <MediaService/BKJKProtocolManager.h>
#import "BKWorkSpaceViewController.h"

@interface BKWorkSpaceMoudleManager () <BKWorkSpaceProtocol>

@end

@implementation BKWorkSpaceMoudleManager

+ (void)load {
    [BKJKProtocolManager registServiceProvide:[[self alloc] init] forProtocol:@protocol(BKWorkSpaceProtocol)];
}

- (UIViewController *)workSpaceVCAsNavRoot:(BOOL)isRoot {
    BKWorkSpaceViewController *workSpaceVC = [[BKWorkSpaceViewController alloc] init];
    workSpaceVC.title = @"工作台";
    if (!isRoot) {
        return workSpaceVC;
    } else {
        UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:workSpaceVC];
        return nav;
    }
    
}

@end

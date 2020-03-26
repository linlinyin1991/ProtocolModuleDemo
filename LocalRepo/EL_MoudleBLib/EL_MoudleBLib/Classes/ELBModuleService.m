//
//  ELBModuleService.m
//  BKJKAthena
//
//  Created by yin linlin on 2018/3/21.
//

#import "ELBModuleService.h"
#import "ELBProtocol.h"
#import "ELAProtocol.h"
#import <MediaService/ELProtocolManager.h>
#import "ELBHomeViewController.h"

@interface ELBModuleService () <ELBProtocol>

@end

@implementation ELBModuleService

+ (void)load {
    [ELProtocolManager registServiceProvide:[[self alloc] init] forProtocol:@protocol(ELBProtocol)];
}

- (UIViewController *)workSpaceVCAsNavRoot:(BOOL)isRoot {
    ELBHomeViewController *workSpaceVC = [[ELBHomeViewController alloc] init];
    workSpaceVC.title = @"ModuleB";
    if (!isRoot) {
        return workSpaceVC;
    } else {
        UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:workSpaceVC];
        return nav;
    }
    
}

@end

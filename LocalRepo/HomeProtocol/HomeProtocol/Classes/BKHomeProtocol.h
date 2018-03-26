//
//  BKHomeProtocol.h
//  BKJKAthena
//
//  Created by yin linlin on 2018/3/21.
//

#import <Foundation/Foundation.h>

@import UIKit;

@protocol BKHomeProtocol <NSObject>

- (UIViewController *)homeViewControllerAsNavRoot:(BOOL)isRoot;

- (UIViewController *)newsListVCWithType:(NSString *)type;

@end

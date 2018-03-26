//
//  BKWorkSpaceProtocol.h
//  BKJKAthena
//
//  Created by yin linlin on 2018/3/21.
//

#import <Foundation/Foundation.h>

@import UIKit;
@protocol BKWorkSpaceProtocol <NSObject>

- (UIViewController *)workSpaceVCAsNavRoot:(BOOL)isRoot;
@end

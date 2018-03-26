//
//  BKJKProtocolManager.h
//  BKJKAthena
//
//  Created by yin linlin on 2018/3/21.
//

#import <Foundation/Foundation.h>

@interface BKJKProtocolManager : NSObject

+ (void)registServiceProvide:(id)provide forProtocol:(Protocol*)protocol;

+ (id)serviceProvideForProtocol:(Protocol *)protocol;

@end

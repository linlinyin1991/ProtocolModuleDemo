//
//  BKJKProtocolManager.m
//  BKJKAthena
//
//  Created by yin linlin on 2018/3/21.
//

#import "BKJKProtocolManager.h"

@interface BKJKProtocolManager ()

@property (nonatomic, strong) NSMutableDictionary *serviceProvideSource;

@end

@implementation BKJKProtocolManager

+ (BKJKProtocolManager *)sharedInstance
{
    static BKJKProtocolManager * instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _serviceProvideSource = [[NSMutableDictionary alloc] init];
    }
    return self;
}

+ (void)registServiceProvide:(id)provide forProtocol:(Protocol*)protocol
{
    if (provide == nil || protocol == nil)
        return;
    [[self sharedInstance].serviceProvideSource setObject:provide forKey:NSStringFromProtocol(protocol)];
}

+ (id)serviceProvideForProtocol:(Protocol *)protocol
{
    id service = [[self sharedInstance].serviceProvideSource objectForKey:NSStringFromProtocol(protocol)];
    if (service == nil) {
        NSLog(@"找不到%@的服务方",NSStringFromProtocol(protocol));
    }
    return service;
}

@end

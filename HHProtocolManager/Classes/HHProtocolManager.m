//
//  HHProtocolManager.m
//  HHProtocolManager
//
//  Created by lihuiHan on 2018/5/15.
//

#import "HHProtocolManager.h"

@interface HHProtocolManager()

@property (nonatomic, strong) NSMutableDictionary *services; ///< 保存相关protocol和对应实现service

@end

@implementation HHProtocolManager

+ (HHProtocolManager *)sharedInstance {
    static HHProtocolManager *sharedInstance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc]init];
    });
    return sharedInstance;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        _services = [[NSMutableDictionary alloc]init];
    }
    return self;
}

+ (void)registService:(id)service forProtocol:(Protocol*)protocol {
    if (service == nil || protocol == nil) {
        return;
    }
    [[self sharedInstance].services setObject:service forKey:NSStringFromProtocol(protocol)];
}

+ (id)serviceForProtocol:(Protocol *)protocol {
    return [[self sharedInstance].services objectForKey:NSStringFromProtocol(protocol)];
}

@end

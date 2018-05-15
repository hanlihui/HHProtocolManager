//
//  HHProtocolManager.h
//  HHProtocolManager
//
//  Created by lihuiHan on 2018/5/15.
//

#import <Foundation/Foundation.h>

@interface HHProtocolManager : NSObject

/**
 注册service
 
 @param service 对应protocol的详细
 @param protocol protocol
 */
+ (void)registService:(id)service forProtocol:(Protocol*)protocol;

/**
 获取对应protocol的实现service
 
 @param protocol protocol
 @return 对应protocol的实现
 */
+ (id)serviceForProtocol:(Protocol *)protocol;

@end

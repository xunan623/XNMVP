//
//  XNLoginServices.h
//  XNMVPDemo
//
//  Created by Dandre on 2018/3/12.
//  Copyright © 2018年 Dandre. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XNLoginServices : NSObject

+ (void)postWithName:(NSString *)name pwd:(NSString *)pwd completion:(void(^)(NSString *result))comletion;

@end

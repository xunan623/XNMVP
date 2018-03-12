//
//  XNLoginModel.h
//  XNMVPDemo
//
//  Created by Dandre on 2018/3/12.
//  Copyright © 2018年 Dandre. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XNLoginModel : NSObject

- (void)loginWithName:(NSString *)name pwd:(NSString *)pwd completion:(void(^)(NSString *result))completion;

@end

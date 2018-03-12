//
//  XNLoginModel.m
//  XNMVPDemo
//
//  Created by Dandre on 2018/3/12.
//  Copyright © 2018年 Dandre. All rights reserved.
//

#import "XNLoginModel.h"
#import "XNLoginServices.h"

@implementation XNLoginModel

- (void)loginWithName:(NSString *)name pwd:(NSString *)pwd completion:(void(^)(NSString *result))completion {
    [XNLoginServices postWithName:name pwd:pwd completion:^(NSString *result) {
        completion(result);
    }];
}

@end

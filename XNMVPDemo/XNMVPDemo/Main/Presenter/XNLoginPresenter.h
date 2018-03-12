//
//  XNLoginPresenter.h
//  XNMVPDemo
//
//  Created by Dandre on 2018/3/12.
//  Copyright © 2018年 Dandre. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XNMVPController.h"

@interface XNLoginPresenter : NSObject

- (instancetype)initWithVC:(id)vc;

// 业务方法
- (void)loginWithName:(NSString *)name pwd:(NSString *)pwd;

@end

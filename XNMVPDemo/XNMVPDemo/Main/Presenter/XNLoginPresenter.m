//
//  XNLoginPresenter.m
//  XNMVPDemo
//
//  Created by Dandre on 2018/3/12.
//  Copyright © 2018年 Dandre. All rights reserved.
//

#import "XNLoginPresenter.h"
#import "XNLoginModel.h"
#import "XNLoginView.h"

@interface XNLoginPresenter ()

@property (nonatomic, weak) XNMVPController<XNLoginView> *presentVC;
@property (nonatomic, strong) XNLoginModel *loginModel;

@end

@implementation XNLoginPresenter

- (instancetype)initWithVC:(XNMVPController<XNLoginView> *)vc {
    if (self = [super init]) {
        self.presentVC = vc;
    }
    return self;
}

#pragma mark - Setting & Getting

- (XNLoginModel *)loginModel {
    if (!_loginModel) {
        _loginModel = [[XNLoginModel alloc] init];
    }
    return _loginModel;
}

#pragma mark - Public Action

- (void)loginWithName:(NSString *)name pwd:(NSString *)pwd {
    [self.loginModel loginWithName:name pwd:pwd completion:^(NSString *result) {
        [self.presentVC onLoginResult:result];
    }];
}

@end

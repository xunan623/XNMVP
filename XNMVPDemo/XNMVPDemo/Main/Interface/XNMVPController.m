//
//  XNMVPController.m
//  XNMVPDemo
//
//  Created by Dandre on 2018/3/12.
//  Copyright © 2018年 Dandre. All rights reserved.
//

#import "XNMVPController.h"
#import "XNLoginPresenter.h"
#import "XNLoginView.h"

@interface XNMVPController ()<XNLoginView>

@property (nonatomic, strong) XNLoginPresenter *present;

@end

@implementation XNMVPController

- (void)dealloc {
    NSLog(@"%@ dealloc success", NSStringFromClass([self class]));
}

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.present loginWithName:@"18842693828" pwd:@"123456"];
}

#pragma mark - Setting & Getting

- (XNLoginPresenter *)present {
    if (!_present) {
        _present = [[XNLoginPresenter alloc] initWithVC:self];
    }
    return _present;
}

#pragma mark - XNLoginViewDelegate

- (void)onLoginResult:(NSString *)result {
    NSLog(@"result");
}

@end

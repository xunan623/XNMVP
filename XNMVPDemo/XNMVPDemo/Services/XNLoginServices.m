//
//  XNLoginServices.m
//  XNMVPDemo
//
//  Created by Dandre on 2018/3/12.
//  Copyright © 2018年 Dandre. All rights reserved.
//

#import "XNLoginServices.h"

@implementation XNLoginServices

+ (void)postWithName:(NSString *)name pwd:(NSString *)pwd completion:(void(^)(NSString *result))comletion {
    // 发起网络请求
    // 第三方框架
    //第一步:
    NSURL *url = [NSURL URLWithString:@"http://42.120.11.155/index.php?m=home&c=user&a=login"];
    //第二步:
    NSMutableURLRequest * request = [[NSMutableURLRequest alloc]initWithURL:url];
    //第三步:
    request.HTTPMethod = @"POST";
    NSString *params  = [NSString stringWithFormat:@"mobile=%@&password=%@",name,pwd];
    request.HTTPBody = [params dataUsingEncoding:NSUTF8StringEncoding];
    //第四步:
    //创建请求会话
    NSURLSession *session = [NSURLSession sharedSession];
    //第五步:创建请求任务
    NSURLSessionDataTask *task = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        //第七步:处理请求结果
        if (error!=nil) {
            NSLog(@"登录失败");
        }else{
            
            NSLog(@"登录成功");
            //回调
            NSString *result = [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
            comletion(result);
            
        }
    }];
    //    第六步:执行任务
    [task resume];

}

@end

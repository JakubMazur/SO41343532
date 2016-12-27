//
//  Connection.m
//  TestsMemoryLeak
//
//  Created by Jakub Mazur on 27/12/2016.
//  Copyright © 2016 wingu AG. All rights reserved.
//

#import "Connection.h"

@implementation Connection

#pragma mark - Connection groundwork

-(void)fireWithSuccess:(void (^)(NSURLSessionDataTask *operation, NSArray* returnArray, id originalResponse))success failure:(void (^)(NSURLSessionDataTask *operation, NSError *error))failure {
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager urlString:self.urlString withMethod:self.requestMethodType parameters:self.paramaters success:^(NSURLSessionDataTask *operation, id responseObject) {
        success(operation,@[responseObject],nil);
    } failure:^(NSURLSessionDataTask *operation, NSError *error) {
        failure(operation,error);
    }];
}

@end

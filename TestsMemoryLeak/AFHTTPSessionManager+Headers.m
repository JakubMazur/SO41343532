//
//  AFHTTPSessionManager+Headers.m
//  TestsMemoryLeak
//
//  Created by Jakub Mazur on 27/12/2016.
//  Copyright © 2016 wingu AG. All rights reserved.
//

#import "AFHTTPSessionManager+Headers.h"

@implementation AFHTTPSessionManager (Headers)


-(void)getWithURLString:(NSString*)urlString parameters:(NSDictionary*)parameters success:(void (^)(NSURLSessionDataTask *operation, id responseObject))success failure:(void (^)(NSURLSessionDataTask *operation, NSError *error))failure {
    [self GET:urlString parameters:parameters progress:^(NSProgress * downloadProgress) {
        //code
    } success:^(NSURLSessionDataTask * task, id responseObject) {
        success(nil,responseObject);
    } failure:^(NSURLSessionDataTask * task, NSError * error) {
        failure(task,error);
    }];
}

-(void)postWithURLString:(NSString*)urlString parameters:(NSDictionary*)parameters success:(void (^)(NSURLSessionDataTask *operation, id responseObject))success failure:(void (^)(NSURLSessionDataTask *operation, NSError *error))failure {
    [self POST:urlString parameters:parameters progress:^(NSProgress * uploadProgress) {
        //code
    } success:^(NSURLSessionDataTask * task, id  responseObject) {
        success(task,responseObject);
    } failure:^(NSURLSessionDataTask * task, NSError * error) {
        failure(task,error);
    }];
}

-(void)patchWithURLString:(NSString*)urlString parameters:(NSDictionary*)parameters success:(void (^)(NSURLSessionDataTask *operation, id responseObject))success failure:(void (^)(NSURLSessionDataTask *operation, NSError *error))failure {
    [self PATCH:urlString parameters:parameters success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        success(task,responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failure(task,error);
    }];
}

-(void)urlString:(NSString*)urlString withMethod:(RequestMethodType)method parameters:(NSDictionary*)parameters success:(void (^)(NSURLSessionDataTask *operation, id responseObject))success failure:(void (^)(NSURLSessionDataTask *operation, NSError *error))failure {
    switch (method) {
        case GET: {
            [self getWithURLString:urlString parameters:parameters success:^(NSURLSessionDataTask *operation, id responseObject) {
                success(operation,responseObject);
            } failure:^(NSURLSessionDataTask *operation, NSError *error) {
                failure(operation,error);
            }];
            break;
        }
        case POST : {
            [self postWithURLString:urlString parameters:parameters success:^(NSURLSessionDataTask *operation, id responseObject) {
                success(operation,responseObject);
            } failure:^(NSURLSessionDataTask *operation, NSError *error) {
                failure(operation,error);
            }];
            break;
        }
        case DELETE :
        case PUT :
        case PATCH : {
            [self patchWithURLString:urlString parameters:parameters success:^(NSURLSessionDataTask *operation, id responseObject) {
                success(operation,responseObject);
            } failure:^(NSURLSessionDataTask *operation, NSError *error) {
                failure(operation,error);
            }];
            break;
        }
    }
    
}

@end

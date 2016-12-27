//
//  ResponseOrginizer.m
//  TestsMemoryLeak
//
//  Created by Jakub Mazur on 27/12/2016.
//  Copyright © 2016 wingu AG. All rights reserved.
//

#import "ResponseOrginizer.h"
#import "Connection.h"

@implementation ResponseOrginizer

+ (void)getSth:(void (^)(NSURLSessionDataTask *operation, NSArray *locales, id plainObject))success failure:(void (^)(NSURLSessionDataTask *operation, NSError *error))failure {
    
    Connection *connection = [Connection new];
    connection.urlString = @"http://sample-file.bazadanni.com/download/txt/json/sample.json";
    connection.requestMethodType = GET;
    
    [connection fireWithSuccess:^(NSURLSessionDataTask *operation, NSArray *returnArray, id originalResponse) {
        success(operation, returnArray, originalResponse);
    } failure:^(NSURLSessionDataTask *operation, NSError *error) {
        failure(operation, error);
    }];
}

@end

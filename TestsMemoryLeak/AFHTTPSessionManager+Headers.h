//
//  AFHTTPSessionManager+Headers.h
//  TestsMemoryLeak
//
//  Created by Jakub Mazur on 27/12/2016.
//  Copyright © 2016 wingu AG. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>

typedef enum RequestMethodType : NSUInteger {
    POST,
    GET,
    PATCH,
    DELETE,
    PUT
} RequestMethodType;

@interface AFHTTPSessionManager (Headers)

-(void)urlString:(NSString*)urlString withMethod:(RequestMethodType)method parameters:(NSDictionary*)parameters success:(void (^)(NSURLSessionDataTask *operation, id responseObject))success failure:(void (^)(NSURLSessionDataTask *operation, NSError *error))failure;

@end

//
//  Connection.h
//  TestsMemoryLeak
//
//  Created by Jakub Mazur on 27/12/2016.
//  Copyright © 2016 wingu AG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFHTTPSessionManager+Headers.h"

@interface Connection : NSObject

@property (strong,nonatomic) NSString *urlString;
@property (assign) RequestMethodType requestMethodType;
@property (strong,nonatomic) NSDictionary *paramaters;

-(void)fireWithSuccess:(void (^)(NSURLSessionDataTask *operation, NSArray* returnArray, id originalResponse))success failure:(void (^)(NSURLSessionDataTask *operation, NSError *error))failure;

@end

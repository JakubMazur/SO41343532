//
//  ResponseOrginizer.h
//  TestsMemoryLeak
//
//  Created by Jakub Mazur on 27/12/2016.
//  Copyright © 2016 wingu AG. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ResponseOrginizer : NSObject

+ (void)getSth:(void (^)(NSURLSessionDataTask *operation, NSArray *locales, id plainObject))success failure:(void (^)(NSURLSessionDataTask *operation, NSError *error))failure;

@end

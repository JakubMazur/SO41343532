//
//  ViewController.m
//  TestsMemoryLeak
//
//  Created by Jakub Mazur on 27/12/2016.
//  Copyright © 2016 wingu AG. All rights reserved.
//

#import "ViewController.h"
#import "ResponseOrginizer.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self request];
}

-(void)request {
    [ResponseOrginizer getSth:^(NSURLSessionDataTask *operation, NSArray *locales, id plainObject) {
    
    } failure:^(NSURLSessionDataTask *operation, NSError *error) {

    }];
}

@end

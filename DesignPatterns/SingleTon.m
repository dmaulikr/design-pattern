//
//  SingleTon.m
//  DesignPatterns
//
//  Created by DuanDavid on 10/24/14.
//  Copyright (c) 2014 design_pattern. All rights reserved.
//

#import "SingleTon.h"

@implementation SingleTon


+(id) instance {
    static SingleTon *_shared_instance = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _shared_instance = [[SingleTon alloc] init];
    });
    
    return _shared_instance;
}

@end

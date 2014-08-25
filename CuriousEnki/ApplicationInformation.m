//
//  ApplicationInformation.m
//  CuriousEnki
//
//  Created by Dev Account on 8/22/14.
//  Copyright (c) 2014 Sinziana Gafitanu. All rights reserved.
//

#import "ApplicationInformation.h"

@implementation ApplicationInformation

@synthesize articleInformation;
@synthesize articlesAreReady;

+ (id)sharedManager {
    static ApplicationInformation *sharedMyManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedMyManager = [[self alloc] init];
    });
    return sharedMyManager;
}

- (id)init {
    if (self = [super init]) {
        articleInformation = nil;
        articlesAreReady = NO;
    }
    return self;
}

- (void)dealloc {
    // Should never be called, but just here for clarity really.
}

@end

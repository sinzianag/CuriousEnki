//
//  ApplicationInformation.h
//  CuriousEnki
//
//  Created by Dev Account on 8/22/14.
//  Copyright (c) 2014 Sinziana Gafitanu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ApplicationInformation : NSObject{
    NSArray* articleInformation;
    BOOL articlesAreReady;
}

@property (nonatomic, retain) NSArray *articleInformation;
@property (nonatomic, assign) BOOL articlesAreReady;

+(id) sharedManager;

@end

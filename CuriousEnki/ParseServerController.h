//
//  ParseServerController.h
//  CuriousEnki
//
//  Created by Dev Account on 8/22/14.
//  Copyright (c) 2014 Sinziana Gafitanu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ParseServerController : NSObject

-(id) init;

-(void) getListOfResources;

-(void) trackAppOpenWith:(NSDictionary*)launchOptions;

@end

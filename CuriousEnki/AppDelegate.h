//
//  AppDelegate.h
//  CuriousEnki
//
//  Created by Dev Account on 8/21/14.
//  Copyright (c) 2014 Sinziana Gafitanu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ParseServerController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) IBOutlet UIWindow *window;
@property (strong, nonatomic) IBOutlet UIViewController* mainViewController;

@property (strong, nonatomic) ParseServerController* theServer;

@end

//
//  ViewController.h
//  CuriousEnki
//
//  Created by Dev Account on 8/21/14.
//  Copyright (c) 2014 Sinziana Gafitanu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "iCarousel.h"

@interface ViewController : UIViewController<iCarouselDataSource,iCarouselDelegate>


@property (strong, nonatomic) IBOutlet iCarousel *carousel;

@end

//
//  ImageProcessingHelper.m
//  CuriousEnki
//
//  Created by Dev Account on 8/22/14.
//  Copyright (c) 2014 Sinziana Gafitanu. All rights reserved.
//

#import "ImageProcessingHelper.h"

@implementation ImageProcessingHelper

+ (UIImage *)imageWithImage:(UIImage *)image scaledToSize:(CGSize)newSize {
    //UIGraphicsBeginImageContext(newSize);
    // In next line, pass 0.0 to use the current device's pixel scaling factor (and thus account for Retina resolution).
    // Pass 1.0 to force exact pixel size.
    UIGraphicsBeginImageContextWithOptions(newSize, NO, 0.0);
    [image drawInRect:CGRectMake(0, 0, newSize.width, newSize.height)];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}

@end

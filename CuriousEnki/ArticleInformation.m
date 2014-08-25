//
//  ArticleInformation.m
//  CuriousEnki
//
//  Created by Dev Account on 8/22/14.
//  Copyright (c) 2014 Sinziana Gafitanu. All rights reserved.
//

#import "ArticleInformation.h"

@implementation ArticleInformation

@synthesize identifier;
@synthesize articleTitle;
@synthesize articleUrl;
@synthesize coverImage;
@synthesize tags;

-(id) init
{
    if(self = [super init])
    {
        self.identifier = @"";
        self.articleUrl = @"";
        self.articleTitle = @"";
        self.coverImage = @"";
        self.tags = @"";
    }
    return self;
}

-(NSString*) getkeyForPropertyKey:(ArticlePropertiesKeys) key
{
    switch(key){
        case kArticlePropArticleTitle:
            return @"articleTitle"; break;
        case kArticlePropArticleUrl:
            return @"articleUrl"; break;
        case kArticlePropCoverImage:
            return @"coverImage"; break;
        case kArticlePropIdentifier:
            return @"identifier"; break;
        case kArticlePropTags:
            return @"tags"; break;
        default:
            return nil;
            break;
    }
}

@end

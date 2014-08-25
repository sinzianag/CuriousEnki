//
//  ParseServerController.m
//  CuriousEnki
//
//  Created by Dev Account on 8/22/14.
//  Copyright (c) 2014 Sinziana Gafitanu. All rights reserved.
//

#import "ParseServerController.h"
#import "Parse/Parse.h"
#import "ApplicationInformation.h"
#import "ArticleInformation.h"

@implementation ParseServerController

-(id) init
{

    if(self = [super init])
    {
        [Parse setApplicationId:@"8sGZchTyIVjcfq2SaxQO46URxl4tlV09WKTPRPXV"
                      clientKey:@"0c89r27ZRV3pCF4XLC5RxSFJhbukYI9zeyPry1iA"];
          }
    
    return self;
    
}

-(void) trackAppOpenWith:(NSDictionary*)launchOptions
{
    [PFAnalytics trackAppOpenedWithLaunchOptions:launchOptions];
}

-(void) getListOfResources
{
    
    PFQuery* query = [PFQuery queryWithClassName:@"Article"];
    [query findObjectsInBackgroundWithBlock:^(NSArray *articleFromServer, NSError *error) {
        if(!error){
            NSMutableArray* articles = [[NSMutableArray alloc] init];
            for(PFObject* article in articleFromServer){
                ArticleInformation* articleObject = [[ArticleInformation alloc] init];
                articleObject.articleTitle = article[[articleObject getkeyForPropertyKey:kArticlePropArticleTitle]];
                articleObject.articleUrl = article[[articleObject getkeyForPropertyKey:kArticlePropArticleUrl]];
                articleObject.identifier = article[[articleObject getkeyForPropertyKey:kArticlePropIdentifier]];
                articleObject.coverImage = article[[articleObject getkeyForPropertyKey:kArticlePropCoverImage]];
                articleObject.tags = article[[articleObject getkeyForPropertyKey:kArticlePropTags]];
                
                [articles addObject:articleObject];
            }
            
            ApplicationInformation* appInfo = [ApplicationInformation sharedManager];
            appInfo.articleInformation = articles; // TODO;
            appInfo.articlesAreReady = YES;
        }
        else
        {
            NSLog(@"error in getting article list %@", error);
        }
    }];
    
    
}

@end

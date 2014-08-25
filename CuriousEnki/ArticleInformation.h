//
//  ArticleInformation.h
//  CuriousEnki
//
//  Created by Dev Account on 8/22/14.
//  Copyright (c) 2014 Sinziana Gafitanu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ArticleInformation : NSObject

typedef enum{
    kArticlePropIdentifier,
    kArticlePropArticleTitle,
    kArticlePropArticleUrl,
    kArticlePropCoverImage,
    kArticlePropTags
}ArticlePropertiesKeys;

// Article Properties
@property (nonatomic,retain) NSString* identifier;
@property (nonatomic,retain) NSString* articleTitle;
@property (nonatomic,retain) NSString* articleUrl;
@property (nonatomic,retain) NSString* coverImage;
@property (nonatomic,retain) NSString* tags;

-(id) init;
-(NSString*) getkeyForPropertyKey:(ArticlePropertiesKeys) key;


@end

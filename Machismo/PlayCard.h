//
//  PlayCard.h
//  Machismo
//
//  Created by 林过寒 on 8/28/14.
//  Copyright (c) 2014 Clemosn University. All rights reserved.
//

#import "Card.h"

@interface PlayCard : Card
@property (strong,nonatomic)NSString *suit;
@property (nonatomic)NSUInteger rank;

+ (NSArray *)vaildSuit;
+ (NSUInteger)maxRank;
@end

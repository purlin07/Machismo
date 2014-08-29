//
//  PlayDeck.m
//  Machismo
//
//  Created by 林过寒 on 8/28/14.
//  Copyright (c) 2014 Clemosn University. All rights reserved.
//

#import "PlayDeck.h"
#import "PlayCard.h"

@implementation PlayDeck

-(instancetype)init
{
    self = [super init];
    
    if (self) {
        for (NSString *suit in [PlayCard vaildSuit]) {
            for (NSUInteger rank = 1; rank <= [PlayCard maxRank]; rank++) {
                PlayCard *card = [[PlayCard alloc] init];
                card.rank = rank;
                card.suit = suit;
                [self addcard:card];
            }
        }
    }
    return self;
}

@end

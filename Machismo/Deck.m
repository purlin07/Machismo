//
//  Deck.m
//  Machismo
//
//  Created by 林过寒 on 8/28/14.
//  Copyright (c) 2014 Clemosn University. All rights reserved.
//

#import "Deck.h"

@interface Deck()
@property (strong,nonatomic) NSMutableArray *cards;
@end

@implementation Deck

-(NSMutableArray *) cards
{
    if(! _cards) _cards = [[NSMutableArray alloc] init];
    return _cards;
}

-(void)addcard:(Card *)card atTop:(BOOL)atTop
{
    if(atTop){
        [self.cards insertObject:card atIndex:0];
    } else{
        [self.cards addObject:card];
    }
}

-(void) addcard:(Card *)card
{
    [self addcard:card atTop:NO];
}

-(Card *)drawRandomCard
{
    Card *randomCard = nil;
    
    if ([self.cards count]) {
        unsigned index = arc4random() % [self.cards count];
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
    }
    
    return randomCard;
}
@end

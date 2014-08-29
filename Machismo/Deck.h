//
//  Deck.h
//  Machismo
//
//  Created by 林过寒 on 8/28/14.
//  Copyright (c) 2014 Clemosn University. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void) addcard:(Card *) card atTop:(BOOL) atTop;
- (void) addcard:(Card *) card;

- (Card *) drawRandomCard;
@end

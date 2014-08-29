//
//  PlayCard.m
//  Machismo
//
//  Created by 林过寒 on 8/28/14.
//  Copyright (c) 2014 Clemosn University. All rights reserved.
//

#import "PlayCard.h"

@implementation PlayCard

- (NSString *)contents
{
    NSArray *rankStrings = [ PlayCard rankSetting];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

+ (NSArray *)vaildSuit
{
    return @[@"♠︎",@"♣︎",@"♦︎",@"♥︎"];
}

+ (NSUInteger)maxRank
{
    return 13;
}

+ (NSArray *)rankSetting
{
    return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}

@synthesize suit = _suit;
-(void) setSuit:(NSString *)suit
{
    if ([[PlayCard vaildSuit] containsObject:suit]) {
        _suit = suit;
    }
}

-(NSString *)suit
{
    return _suit ? _suit :@"?";
}

@end

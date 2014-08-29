//
//  CardGameViewController.m
//  Machismo
//
//  Created by 林过寒 on 8/27/14.
//  Copyright (c) 2014 Clemosn University. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayDeck.h"

@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLable;
@property (nonatomic) int flipCount;
@property (strong,nonatomic) Deck *deck;
@end

@implementation CardGameViewController

-(void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLable.text = [ NSString stringWithFormat:@"Flips : %d",self.flipCount];
    NSLog(@"flipsCount = %d",self.flipCount);
}

-(Deck *)deck
{
    if (!_deck) {
        _deck = [self createDeck];
    }
    return _deck;
}

-(Deck *)createDeck
{
    return [[PlayDeck alloc] init];
}

- (IBAction)touchCardButton:(UIButton *)sender
{
    
    if ([sender.currentTitle length]){
        
        UIImage *cardImage = [UIImage imageNamed:@"cardback"];
        
        [sender setBackgroundImage:cardImage forState:UIControlStateNormal];
        
        [sender setTitle:@"" forState:UIControlStateNormal];
        
    } else {
        
        Card *randomCard = [self.deck drawRandomCard];
        
        if (randomCard) {
            
            [sender setBackgroundImage:[UIImage imageNamed:@"cardFrond"] forState:UIControlStateNormal];
            
            [sender setTitle:randomCard.contents forState:UIControlStateNormal];
        }
    }
}

@end

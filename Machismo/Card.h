//
//  Card.h
//  Machismo
//
//  Created by 林过寒 on 8/28/14.
//  Copyright (c) 2014 Clemosn University. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject
@property (strong,nonatomic) NSString *contents;

@property (nonatomic,getter = isChosen)BOOL chosen;
//@property (nonatomic,getter = isMatch)BOOL match;

//-(int)match: (NSString *)otherCards;
@end

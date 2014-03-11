//
//  PSCard.m
//  BlackJack
//
//  Created by Pinak Saha on 3/10/14.
//  Copyright (c) 2014 Pinak Saha. All rights reserved.
//

#import "PSCard.h"

@implementation PSCard

+(PSCard *) cardWithCardValue:(NSInteger)aCardValue suitValue:(NSString *)aSuitValue
{
    PSCard * card = [[PSCard alloc]init];
    card.cardValue = aCardValue;
    card.suitValue = aSuitValue;
    
    if(aCardValue == 1)
    {
        card.faceValue = @"A";
    }
    if(aCardValue == 11)
    {
        card.faceValue = @"J";
    }
    if(aCardValue == 12)
    {
        card.faceValue = @"Q";
    }
    if(aCardValue == 13)
    {
        card.faceValue = @"K";
    }
    
    
    return card;
}

-(void) changePosition
{
    if(self.cardPosition == YES)
    {
        self.cardPosition = NO;
    }
    else
    {
        self.cardPosition = YES;
    }
}
@end

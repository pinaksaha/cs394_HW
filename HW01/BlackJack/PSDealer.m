//
//  PSDealer.m
//  BlackJack
//
//  Created by Pinak Saha on 3/10/14.
//  Copyright (c) 2014 Pinak Saha. All rights reserved.
//

#import "PSDealer.h"
#import "PSPlayer.h"
#import "PSDispenser.h"
#import "PSCard.h"
@implementation PSDealer


-(void) match:(PSPlayer *) aPlayer
{
    //Match customer bid
    NSInteger playerBid = aPlayer.betValue;
    self.betValue = playerBid;
}

-(void)deal:(PSPlayer *)aPlayer
{
   //Deal to player
    PSCard * Card = self.dispenser.dispense;
    [aPlayer addCard:Card];
}

-(id) init
{
    self = [super init];
    
    if(self)
    {
        PSDispenser * aDispenser = [[PSDispenser alloc] init];
        self.dispenser = aDispenser;
        self.bankValue = 1000000;
        self.status = NO;
        self.type = YES;
    }
    
    return self;
}
@end

//
//  PSDealer.m
//  BlackJack
//
//  Created by Pinak Saha on 3/10/14.
//  Copyright (c) 2014 Pinak Saha. All rights reserved.
//

#import "PSDealer.h"
#import "Players.h"
#import "PSDispenser.h"
#import "PSCard.h"
@implementation PSDealer


-(void) match
{
    //Match customer bid
}

-(void)deal:(Players *)aPlayer
{
   //Deal to all players on table
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

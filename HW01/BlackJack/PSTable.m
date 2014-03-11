//
//  PSTable.m
//  BlackJack
//
//  Created by Pinak Saha on 3/10/14.
//  Copyright (c) 2014 Pinak Saha. All rights reserved.
//

#import "PSTable.h"
#import "Players.h"
@implementation PSTable



+(PSTable *) tableWithPlayers:(Players *)aCustomer dealer:(Players *)aDealer
{
    PSTable * aTable = [[PSTable alloc]init];
    
    [aTable.players addObject:aCustomer];
    [aTable.players addObject:aDealer];
    aTable.minCash = 1;
    aTable.numGame = 0;
    return aTable;
}

-(void) psAddPlayers:(Players *)aPlayer
{
    [self.players addObject:aPlayer];
}

-(void) startGame
{
    Players * aCustomer = self.players[0];
    Players * aDealer = self.players[1];
    self.numGame = self.numGame + 1;
    PSGame * newGame = [PSGame gameWithTotalCash:aCustomer.betValue dealerCash:aDealer.betValue];
    
    self.aGame = newGame;
    
}

@end

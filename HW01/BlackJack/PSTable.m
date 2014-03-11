//
//  PSTable.m
//  BlackJack
//
//  Created by Pinak Saha on 3/10/14.
//  Copyright (c) 2014 Pinak Saha. All rights reserved.
//

#import "PSTable.h"
#import "Players.h"
#import "PSDealer.h"
#import "PSCustomer.h"

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
    PSCustomer * aCustomer = self.players[0];
    PSDealer * aDealer = self.players[1];
    self.numGame = self.numGame + 1;
    PSGame * newGame = [PSGame gameWithTotalCash:aCustomer.betValue dealerCash:aDealer.betValue];
    
    self.aGame = newGame;
    
    //Deal cards to all Players
    
    for(int i =0;i < self.players.count;i++)
    {
        PSCard * tempCard1 = aDealer.dispenser.dispense;
        PSCard * tempCard2 = aDealer.dispenser.dispense;
        [tempCard2 changePosition];
        
        [self.players[i] addObject:tempCard1];
        [self.players[i] addObject:tempCard2];
    }
    
    
}

@end

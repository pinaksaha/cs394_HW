//
//  PSDispenser.m
//  BlackJack
//
//  Created by Pinak Saha on 3/10/14.
//  Copyright (c) 2014 Pinak Saha. All rights reserved.
//

#import "PSDispenser.h"
#import "PSDeck.h"
#import "PSCard.h"

@implementation PSDispenser

-(void) shuffle
{
    NSInteger count = self.Cardsremaing.count;
    
    for(int i=0; i<count;i++)
    {
        int nElemnt = count - 1;
        
        int elment = arc4random_uniform(nElemnt);
        
        [self.Cardsremaing exchangeObjectAtIndex:i withObjectAtIndex:elment];
    }
}


-(PSCard *) dispense
{
    //Create temp card
    PSCard *tempCard = self.Cardsremaing[0];
    //Store the card in dispensed bin
    [self.Cardsdispensed addObject:tempCard];
    //Remove the first card from the dispenser
    [self.Cardsremaing removeObjectAtIndex:0];
    //return the last card from the dispensed deck
    return [self.Cardsdispensed lastObject];
}

-(id)init
{
    self = [super init];
    if(self)
    {
        self.Cardsremaing = [NSMutableArray array];
        self.Cardsdispensed = [NSMutableArray array];
        for(int i=0; i < 7; i++)
        {
            //initialize the deck and store cards in cards remaining
            PSDeck * newDeck = [[PSDeck alloc] init];
            
            //Stores a new deck into depenser
            for(int j=0 ;j< newDeck.Cards.count;j++)
            {
                PSCard * tempCard = newDeck.Cards[j];
                
                [self.Cardsremaing addObject:tempCard];
            }
        }
    }
    
    return self;
}


@end

//
//  PSDeck.m
//  BlackJack
//
//  Created by Pinak Saha on 3/10/14.
//  Copyright (c) 2014 Pinak Saha. All rights reserved.
//

#import "PSDeck.h"
#import "PSCard.h"

@implementation PSDeck

//initializing the deck
-(id)init
{
    self = [super init];
    
    if(self)
    {
        self.Suits = @[@"♠",@"♥",@"♦",@"♣"];
        self.Cards = [NSMutableArray array];
        
        for (int i=1; i <= 13; i++)
        {
            for(int j = 0; j < self.Suits.count;i++)
            {
                [self.Cards addObject:[PSCard cardWithCardValue:i suitValue:self.Suits[j]]];
            }
            
        }
    }
    
    return self;
}

@end

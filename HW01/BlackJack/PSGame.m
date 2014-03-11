//
//  PSGame.m
//  BlackJack
//
//  Created by Pinak Saha on 3/10/14.
//  Copyright (c) 2014 Pinak Saha. All rights reserved.
//

#import "PSGame.h"

@implementation PSGame

+(PSGame *) gameWithTotalCash:(NSInteger)aPlayerCash dealerCash:(NSInteger)aDealersCah
{
    PSGame * aGame = [[PSGame alloc] init];
    
    aGame.dealerCash = aDealersCah;
    aGame.playeCash = aPlayerCash;
    aGame.totalCash = aGame.dealerCash + aGame.totalCash;
    
    return aGame;
}

@end

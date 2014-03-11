//
//  Players.m
//  BlackJack
//
//  Created by Pinak Saha on 3/10/14.
//  Copyright (c) 2014 Pinak Saha. All rights reserved.
//

#import "Players.h"

@implementation Players

-(void) stay
{
    self.status = NO;
}

-(void)hit
{
    self.status = YES;
}

-(void)emptyHand
{
    [self.hand removeAllObjects];
}

+(Players *) playerWithBankValue:(NSInteger)aBankValue
{
    Players * aPlayer = [[Players alloc] init];
    aPlayer.bankValue = aBankValue;
    
    return aPlayer;
}
@end

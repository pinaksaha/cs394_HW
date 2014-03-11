//
//  Players.m
//  BlackJack
//
//  Created by Pinak Saha on 3/10/14.
//  Copyright (c) 2014 Pinak Saha. All rights reserved.
//

#import "PSPlayer.h"
#import "PSCard.h"

@interface PSPlayer()

@property (nonatomic,strong) NSMutableArray * hand;


@end

@implementation PSPlayer

-(void) addCard:(PSCard *)aCard
{
    [self.hand addObject:aCard];
}
-(NSString *) displayHandDescription
{
    
    NSMutableString * myHand = [NSMutableString string];
    
    for(int i=0; i < self.hand.count;i++)
    {
        PSCard * aCard = self.hand[i];
        [myHand appendString:aCard.suitValue];
        [myHand appendString:[NSString stringWithFormat:@"  %ld",aCard.cardValue]];
    }
    
    return myHand;
}
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

-(id) init
{
    self = [super init];
    
    if(self)
    {
     
        self.hand = [NSMutableArray array];
        
    }
    return self;
}

+(PSPlayer *) playerWithBankValue:(NSInteger)aBankValue
{
    PSPlayer * aPlayer = [[PSPlayer alloc] init];
    aPlayer.bankValue = aBankValue;
    aPlayer.hand = [NSMutableArray array];
    
    
    return aPlayer;
}
@end

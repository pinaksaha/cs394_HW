//
//  PSTable.h
//  BlackJack
//
//  Created by Pinak Saha on 3/10/14.
//  Copyright (c) 2014 Pinak Saha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PSGame.h"
#import "PSPlayer.h"
#import "PSDealer.h"
#import "PSCustomer.h"
@interface PSTable : NSObject

@property (nonatomic,strong) PSGame * aGame;
@property (nonatomic) NSInteger numGame;
@property (nonatomic) NSInteger minCash;
@property (nonatomic,strong) NSMutableArray * players;

+(PSTable *) tableWithPlayers:(PSPlayer *) aCustomer dealer:(PSPlayer *) aDealer;
-(void) psAddPlayers:(PSPlayer *) aPlayer;
-(void) startGame;


@end

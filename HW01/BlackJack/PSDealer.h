//
//  PSDealer.h
//  BlackJack
//
//  Created by Pinak Saha on 3/10/14.
//  Copyright (c) 2014 Pinak Saha. All rights reserved.
//


#import "Players.h"
#import "PSDispenser.h"

@interface PSDealer : Players

@property (nonatomic,strong) PSDispenser * dispenser;
-(void) deal: (Players *) aPlayer;
-(void) match:(Players *) aPlayer;

@end

//
//  PSDealer.h
//  BlackJack
//
//  Created by Pinak Saha on 3/10/14.
//  Copyright (c) 2014 Pinak Saha. All rights reserved.
//


#import "PSPlayer.h"
#import "PSDispenser.h"

@interface PSDealer : PSPlayer

@property (nonatomic,strong) PSDispenser * dispenser;
-(void) deal: (PSPlayer *) aPlayer;
-(void) match:(PSPlayer *) aPlayer;

@end

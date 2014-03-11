//
//  PSDispenser.h
//  BlackJack
//
//  Created by Pinak Saha on 3/10/14.
//  Copyright (c) 2014 Pinak Saha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PSDeck.h"
#import "PSCard.h"
@interface PSDispenser : NSObject

@property (nonatomic,strong) NSMutableArray  * Cardsremaing;
@property (nonatomic,strong) NSMutableArray  * Cardsdispensed;



-(void) shuffle;
-(PSCard *) dispense;

@end

//
//  Players.h
//  BlackJack
//
//  Created by Pinak Saha on 3/10/14.
//  Copyright (c) 2014 Pinak Saha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PSCard.h"
@interface PSPlayer : NSObject
@property (nonatomic) BOOL status;
@property (nonatomic) BOOL type;
@property (nonatomic) NSInteger bankValue;
@property (nonatomic) NSInteger betValue;



-(void) emptyHand;
-(void) hit;
-(void) stay;
+(PSPlayer *) playerWithBankValue:(NSInteger) aBankValue;
-(NSString *) displayHandDescription;
-(void) addCard:(PSCard *) aCard;
@end

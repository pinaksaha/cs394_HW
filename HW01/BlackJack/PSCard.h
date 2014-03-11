//
//  PSCard.h
//  BlackJack
//
//  Created by Pinak Saha on 3/10/14.
//  Copyright (c) 2014 Pinak Saha. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PSCard : NSObject

@property (nonatomic,strong) NSString * faceValue;
@property (nonatomic,strong) NSString * suitValue;
@property (nonatomic) NSInteger cardValue;
@property (nonatomic) BOOL cardPosition;

-(void) changePosition;

+(PSCard *) cardWithCardValue:(NSInteger) aCardValue suitValue:(NSString *) aSuitValue;

@end

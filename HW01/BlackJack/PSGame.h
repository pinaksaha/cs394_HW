//
//  PSGame.h
//  BlackJack
//
//  Created by Pinak Saha on 3/10/14.
//  Copyright (c) 2014 Pinak Saha. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PSGame : NSObject

@property (nonatomic) NSInteger dealerCash;
@property (nonatomic) NSInteger playeCash;
@property (nonatomic) NSInteger totalCash;


+(PSGame *) gameWithTotalCash:(NSInteger) aPlayerCash dealerCash:(NSInteger)aDealersCah;

@end

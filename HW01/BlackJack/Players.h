//
//  Players.h
//  BlackJack
//
//  Created by Pinak Saha on 3/10/14.
//  Copyright (c) 2014 Pinak Saha. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Players : NSObject
@property (nonatomic) BOOL status;
@property (nonatomic) BOOL type;
@property (nonatomic) NSInteger bankValue;
@property (nonatomic) NSInteger betValue;
@property (nonatomic,strong) NSMutableArray * hand;

-(void) emptyHand;
-(void) hit;
-(void) stay;
+(Players *) playerWithBankValue:(NSInteger) aBankValue;
@end

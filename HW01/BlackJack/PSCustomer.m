//
//  PSCustomer.m
//  BlackJack
//
//  Created by Pinak Saha on 3/10/14.
//  Copyright (c) 2014 Pinak Saha. All rights reserved.
//

#import "PSCustomer.h"

@implementation PSCustomer

-(void) raise:(NSInteger)value
{
    self.betValue = self.betValue + value;
}

-(id)init
{
    self = [super init];
    
    if(self)
    {
        self.bankValue = 1500;
        self.status = NO;
        self.type = NO;
    }
    
    return self;
}

@end

//
//  FISCard.m
//  OOP-Cards-Model
//
//  Created by Flatiron School on 6/16/16.
//  Copyright © 2016 Al Tyus. All rights reserved.
//

#import "FISCard.h"

@implementation FISCard


-(instancetype)init{
    
    self = [self initWithSuit:@"!" rank:@"N"];
    
    return self;
}


-(instancetype) initWithSuit: (NSString *)suit rank: (NSString *) rank {
    self = [super init];
    if (self) {
        
        _suit = suit;
        _rank = rank;
        _cardLabel = [NSString stringWithFormat:@"%@%@", suit, rank];
        _cardValue = [self cardValueHelper];
       // NSLog(@"\n\n\n%@\n\n\n", rank);

    }
    return self;
}

-(NSString *) description {
    return _cardLabel;
}

+(NSArray *) validSuits {
    
    NSArray *suits = @[@"♠",@"♥",@"♣",@"♦"];
    return suits;
}

+(NSArray *) validRanks {
    
    NSArray *ranks = @[ @"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
    
    return ranks;
}


//helper method
-(NSUInteger )cardValueHelper {
    
    NSArray *validRanks = [FISCard validRanks];
    
    NSUInteger index = [validRanks indexOfObject:self.rank];
    
    NSUInteger cardValue = 0;
    
    if (index <= 9) {
        
        cardValue = index + 1;
        
    } else if (index > 9) {
        
        cardValue = 10;
    }
    
    return cardValue;
}

@end

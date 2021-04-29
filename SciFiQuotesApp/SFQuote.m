//
//  SFQuote.m
//  SciFiQuotesApp
//
//  Created by Jakub Gawecki on 29/04/2021.
//

#import "SFQuote.h"

@implementation SFQuote

-(instancetype)initWithLine:(NSString *)line {
    if (self = [super init]) {
        NSArray *split = [line componentsSeparatedByString:@"/"];
        
        if ([split count] != 2) {
            return nil;
        }
        
        self.text = split[0];
        self.text = split[1];
    }
    
    return self;
}

@end

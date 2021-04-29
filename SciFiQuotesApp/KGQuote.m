//
//  KGQuote.m
//  SciFiQuotesApp
//
//  Created by Jakub Gawecki on 28/04/2021.
//

#import "KGQuote.h"

@implementation KGQuote

- (instancetype)initWithQuote:(NSString *)quote andWithAuthor:(NSString *)author {
    if (self = [super init]) {
        self.author = author;
        self.quote = quote;
    }
    return self;
}

@end

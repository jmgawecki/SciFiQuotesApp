//
//  KGApp.m
//  SciFiQuotesApp
//
//  Created by Jakub Gawecki on 28/04/2021.
//

#import "KGApp.h"

@implementation KGApp

-(instancetype)initWithFile:(NSString *)documentPath {
    if (self = [super init]) {
        self.documentPath = documentPath;
    }
    return self;
}

-(void)printQuote {
    for (KGQuote *quote in self.quotesArray) {
        NSLog(@"quote: %@, author: %@", quote.quote, quote.author);
    }
    
}

// Getting quotes and putting them to property stringOfQuotes
-(void)getQuotesFromFile {
    self.stringOfQuotes = [NSString stringWithContentsOfFile:self.documentPath
                                                usedEncoding:nil
                                                       error:nil];
}


-(void)createArrayOfKGQuotes {
    self.quotesArray = [[NSMutableArray<KGQuote *> alloc] init];

    NSArray<NSString *> *quotesArrayTemp = [self.stringOfQuotes componentsSeparatedByString:@"\n"];
    
    for (NSString *quote in quotesArrayTemp) {
        NSArray *tempQuoteArray = [quote componentsSeparatedByString:@"/"];
        
        [self.quotesArray addObject:[[KGQuote alloc] initWithQuote:[tempQuoteArray objectAtIndex:0]
                                                     andWithAuthor:[tempQuoteArray objectAtIndex:1]]];
    }
}

@end

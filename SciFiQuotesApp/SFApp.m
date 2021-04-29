//
//  SFApp.m
//  SciFiQuotesApp
//
//  Created by Jakub Gawecki on 29/04/2021.
//

#import "SFApp.h"

@implementation SFApp

-(instancetype)initWithFile:(NSString *)filename {
    if (self = [super init]) {
        // load the quotes filename we were given
        NSError *error;
        NSString *contents = [NSString stringWithContentsOfFile:filename usedEncoding:nil error:&error];
        
        if (error != nil) {
            // something went wrong
            NSLog(@"Fatal error: %@", [error localizedDescription]);
            exit(0);
        }
        
        NSArray *lines = [contents componentsSeparatedByString:@"\n"];
        
        self.quotes = [NSMutableArray arrayWithCapacity:[lines count]];
        
        for (NSString *line in lines) {
            SFQuote *quote = [[SFQuote alloc] initWithLine:line];
            
            if (quote != nil) {
                [self.quotes addObject:quote];
            }
        }
    }
    return self;
}

@end

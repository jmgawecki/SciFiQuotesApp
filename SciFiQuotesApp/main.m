//
//  main.m
//  SciFiQuotesApp
//
//  Created by Jakub Gawecki on 28/04/2021.
//

#import <Foundation/Foundation.h>
#import "KGApp.h"
#import "KGQuote.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDesktopDirectory, NSUserDomainMask, YES);
        NSString *desktopPath = [paths objectAtIndex:0];
        
        KGApp *app = [[KGApp alloc] initWithFile:[desktopPath stringByAppendingPathComponent:@"quotes.txt"]];
        
        [app getQuotesFromFile];
        [app createArrayOfKGQuotes];
        [app printQuote];
    }
    return 0;
}

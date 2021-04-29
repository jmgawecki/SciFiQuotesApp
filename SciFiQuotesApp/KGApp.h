//
//  KGApp.h
//  SciFiQuotesApp
//
//  Created by Jakub Gawecki on 28/04/2021.
//

#import <Foundation/Foundation.h>
#import "KGQuote.h"

NS_ASSUME_NONNULL_BEGIN

@interface KGApp : NSObject
@property NSString *documentPath;
@property NSMutableArray<KGQuote *> *quotesArray;
@property NSString *stringOfQuotes;

-(instancetype)initWithFile:(NSString*)desktopPath;

-(void)printQuote;

-(void)getQuotesFromFile;

-(void)createArrayOfKGQuotes;
@end

NS_ASSUME_NONNULL_END

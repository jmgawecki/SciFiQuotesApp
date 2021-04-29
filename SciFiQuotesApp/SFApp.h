//
//  SFApp.h
//  SciFiQuotesApp
//
//  Created by Jakub Gawecki on 29/04/2021.
//

#import <Foundation/Foundation.h>
#import "SFQuote.h"

NS_ASSUME_NONNULL_BEGIN

@interface SFApp : NSObject

@property NSMutableArray<SFQuote*> *quotes;

- (instancetype)initWithFile:(NSString*)filename;

@end

NS_ASSUME_NONNULL_END

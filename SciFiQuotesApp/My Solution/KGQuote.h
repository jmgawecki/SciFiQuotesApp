//
//  KGQuote.h
//  SciFiQuotesApp
//
//  Created by Jakub Gawecki on 28/04/2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface KGQuote : NSObject

@property NSString* quote;
@property NSString* author;

- (instancetype)initWithQuote:(NSString*)quote andWithAuthor:(NSString*)author;

@end

NS_ASSUME_NONNULL_END

#import <Foundation/Foundation.h>
#import "TPApp.h"


// api-header.mustache

@interface PublisherAppApi: NSObject

/**
 Gets an app for a given aid
 @param aid Application aid
 */
+(void) get:(NSString*)aid completionHandler:(void (^)(TPApp* app, NSError* error))completionBlock;

/**
 Gets all publisher apps
 */
+(void) list:(void (^)(NSArray* apis, NSError* error))completionBlock;

/**
 Gets available currencies for the app
 @param aid Application aid
 */
+(void)currencies:(void (^)(NSArray* currencies, NSError* error))completionBlock;

@end

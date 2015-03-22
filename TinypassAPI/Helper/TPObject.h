#import <Foundation/Foundation.h>

@interface TPObject : NSObject
- (id) initWithValues:(NSDictionary*)dict;
- (NSDictionary*) asDictionary;
@end

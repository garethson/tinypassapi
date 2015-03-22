#import <Foundation/Foundation.h>
#import "TPObject.h"

@interface TPDate : TPObject {
@private
    NSDate *_date;
}
@property(nonatomic, readonly) NSDate* date;

- (id) initWithValues: (NSString*)input;
-(NSString*) toString;
@end
#import "TPObject.h"

@implementation TPObject

- (id) initWithValues:(NSDictionary*)dict {
    return self;
}

- (NSDictionary*) asDictionary{
    return [NSDictionary init];
}

- (NSString*)description {
    return [NSString stringWithFormat:@"%@ %@", [super description], [self asDictionary]];
}

@end

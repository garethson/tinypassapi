#import "PublisherAppApi.h"
#import "TPFile.h"
#import "TPClient.h"
#import "TPApp.h"


@implementation PublisherAppApi

// https://api.tinypass.com/api/v3/publisher/app/list?api_token=7gsCmi1iMv9I28M51OlIMAXHo3HDBghvgE8exmYo&aid=MODETWOAPP
+(void) get:(NSString*)aid completionHandler:(void (^)(TPApp* app, NSError* error))completionBlock {
	[[TPClient client] fetchData:@"publisher/app/get" params:@{@"aid": aid} complete:^(NSDictionary *data, NSError *error) {
		if (error) {
			completionBlock(nil, error);
			return;
		}
		TPApp *result = nil;
		if (data && data[@"app"]) {
			result = [[TPApp alloc]initWithValues: data[@"app"]];
		}
		completionBlock(result , nil);
	}];
}

+(void) list:(void (^)(NSArray* apis, NSError* error))completionBlock {
	[[TPClient client] fetchData:@"publisher/app/list" params:nil complete:^(NSDictionary *data, NSError *error) {
		if (error) {
			completionBlock(nil, error);
			return;
		}
		NSArray *appsDic = data[@"apps"];
		NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[appsDic count]];
		for (NSDictionary* dict in (NSArray*)appsDic) {
			TPApp* d = [[TPApp alloc] initWithValues: dict];
			[objs addObject:d];
		}
		completionBlock(objs, nil);
	}];
}

+(void)currencies:(void (^)(NSArray* currencies, NSError* error))completionBlock {
	[[TPClient client] fetchData:@"publisher/app/currencies" params:nil complete:^(NSDictionary *data, NSError *error) {
		if (error) {
			completionBlock(nil, error);
			return;
		}
		completionBlock(data[@"data"], nil);
	}];
	
}

@end

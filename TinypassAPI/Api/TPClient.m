//
//  TPClient.m
//  TinypassAPI
//
//  Created by Gareth du Plooy on 2015-03-22.
//  Copyright (c) 2015 Tinypass. All rights reserved.
//

#import "TPClient.h"
#import "AFNetworking.h"

static NSString *apiURL = @"https://api.tinypass.com/api/v3";

@implementation TPClient
{
//	NSObject *_baseURL;
}

+ (TPClient *)client
{
	static dispatch_once_t pred;
	__strong static TPClient *instance = nil;
	dispatch_once(&pred, ^{ instance = [[self alloc] init]; });
	return instance;
}

- (instancetype)init
{
	self = [super init];
	if (self) {
		
	}
	return self;
}

- (void)fetchData:(NSString *)path params:(NSDictionary *)params complete:(void(^)(NSDictionary *data, NSError *error))complete
{
	NSMutableString *urlString = [[self urlWithApiToken:path] mutableCopy];
	[params enumerateKeysAndObjectsUsingBlock:^(id key, id value, BOOL* stop) {
		[urlString appendFormat:@"&%@=%@",key, value];
	}];
		
	NSURL *url = [NSURL URLWithString:[self urlWithApiToken:path]];
	NSURLRequest *request = [NSURLRequest requestWithURL:url];
	AFHTTPRequestOperation *operation = [[AFHTTPRequestOperation alloc] initWithRequest:request];
	operation.responseSerializer = [AFJSONResponseSerializer serializer];
	[operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
		complete(responseObject, nil);
	} failure:^(AFHTTPRequestOperation *operation, NSError *error) {
		complete(nil, error);
	}];
	[operation start];
}

-(NSString *)urlWithApiToken:(NSString *)path
{
	NSString *token = @"7gsCmi1iMv9I28M51OlIMAXHo3HDBghvgE8exmYo&aid=MODETWOAPP";
	return [NSString stringWithFormat:@"%@/%@?api_token=%@", apiURL, path, token];
}

@end

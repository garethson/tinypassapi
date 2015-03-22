//
//  TPClient.h
//  TinypassAPI
//
//  Created by Gareth du Plooy on 2015-03-22.
//  Copyright (c) 2015 Tinypass. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TPClient : NSObject
+ (TPClient *)client;
- (void)fetchData:(NSString *)path params:(NSDictionary *)params complete:(void(^)(NSDictionary *data, NSError *error))complete;
@end

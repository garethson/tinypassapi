#import <Foundation/Foundation.h>
#import "TPObject.h"

@interface TPApp : TPObject

@property(nonatomic) NSString* name;  /* Application name */

@property(nonatomic) NSString* email;  /* Email address associated with this app */

@property(nonatomic) NSString* state;  /* Current state of the app */

@property(nonatomic) NSString* url;  /* Application website */

@property(nonatomic) NSString* aid;  /* Application aid */

@property(nonatomic) NSString* logo2;  /* Secondary image dispalyed within the ticket */

@property(nonatomic) NSString* private_key;  /* The app's private key */

@property(nonatomic) NSString* logo1;  /* Primary image displayed within the dashboard */

@property(nonatomic) NSString* details;  /* Application details */

@property(nonatomic) NSString* api_token;  /* API token */

@property(nonatomic) NSString* default_lang;  /* Default language */

- (id) name: (NSString*) name
     email: (NSString*) email
     state: (NSString*) state
     url: (NSString*) url
     aid: (NSString*) aid
     logo2: (NSString*) logo2
     private_key: (NSString*) private_key
     logo1: (NSString*) logo1
     details: (NSString*) details
     api_token: (NSString*) api_token
     default_lang: (NSString*) default_lang;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end


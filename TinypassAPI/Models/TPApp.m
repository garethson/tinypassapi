#import "TPDate.h"
#import "TPApp.h"

@implementation TPApp

-(id)name: (NSString*) name
    email: (NSString*) email
    state: (NSString*) state
    url: (NSString*) url
    aid: (NSString*) aid
    logo2: (NSString*) logo2
    private_key: (NSString*) private_key
    logo1: (NSString*) logo1
    details: (NSString*) details
    api_token: (NSString*) api_token
    default_lang: (NSString*) default_lang
{
  _name = name;
  _email = email;
  _state = state;
  _url = url;
  _aid = aid;
  _logo2 = logo2;
  _private_key = private_key;
  _logo1 = logo1;
  _details = details;
  _api_token = api_token;
  _default_lang = default_lang;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _name = dict[@"name"]; 
        _email = dict[@"email"]; 
        _state = dict[@"state"]; 
        _url = dict[@"url"]; 
        _aid = dict[@"aid"]; 
        _logo2 = dict[@"logo2"]; 
        _private_key = dict[@"private_key"]; 
        _logo1 = dict[@"logo1"]; 
        _details = dict[@"details"]; 
        _api_token = dict[@"api_token"]; 
        _default_lang = dict[@"default_lang"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_name != nil) dict[@"name"] = _name ;
        if(_email != nil) dict[@"email"] = _email ;
        if(_state != nil) dict[@"state"] = _state ;
        if(_url != nil) dict[@"url"] = _url ;
        if(_aid != nil) dict[@"aid"] = _aid ;
        if(_logo2 != nil) dict[@"logo2"] = _logo2 ;
        if(_private_key != nil) dict[@"private_key"] = _private_key ;
        if(_logo1 != nil) dict[@"logo1"] = _logo1 ;
        if(_details != nil) dict[@"details"] = _details ;
        if(_api_token != nil) dict[@"api_token"] = _api_token ;
        if(_default_lang != nil) dict[@"default_lang"] = _default_lang ;
        NSDictionary* output = [dict copy];
    return output;
}

@end


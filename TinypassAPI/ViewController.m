//
//  ViewController.m
//  TinypassAPI
//
//  Created by Gareth du Plooy on 2015-03-22.
//  Copyright (c) 2015 Tinypass. All rights reserved.
//

#import "ViewController.h"
#import "PublisherAppApi.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	[PublisherAppApi list:^(NSArray *apis, NSError *error) {
		NSLog(@"%@", apis);
	}];
	
	[PublisherAppApi get:@"MODETWOAPP" completionHandler:^(TPApp *app, NSError *error) {
		NSLog(@"%@", app);
	}];
	
	[PublisherAppApi currencies:^(NSArray *currencies, NSError *error) {
		NSLog(@"%@", currencies);
	}];
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

@end

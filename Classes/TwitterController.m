//
//  TwitterController.m
//  TwitterClient
//
//  Created by Gregory David Long on 15/03/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "TwitterController.h"
#import "SA_OAuthTwitterEngine.h"
#import "SA_OAuthTwitterController.h"

@implementation TwitterController

- (id)initWithKey:(NSString *)key secret:(NSString *)secret
{
	self = [super init];
	
	if (self)
	{
		_engine = [[SA_OAuthTwitterEngine alloc] initOAuthWithDelegate:self];
		_engine.consumerKey = key;
		_engine.consumerSecret = secret;
	}
	
	return self;
}

- (BOOL)isAuthorised
{
	return [_engine isAuthorized];
}

- (UIViewController *)authorise
{
	UIViewController *controller = [SA_OAuthTwitterController controllerToEnterCredentialsWithTwitterEngine:_engine delegate:self];
	return controller;
}

- (void)dealloc {
	[_engine clearAccessToken];
	[_engine closeAllConnections];
	[_engine release];
	[super dealloc];
}

// Delegate methods
#pragma mark SA_OAuthTwitterEngineDelegate  
- (void) storeCachedTwitterOAuthData: (NSString *) data forUsername: (NSString *) username {  
    NSUserDefaults          *defaults = [NSUserDefaults standardUserDefaults];  
	
    [defaults setObject: data forKey: @"authData"];  
    [defaults synchronize];  
}  

- (NSString *) cachedTwitterOAuthDataForUsername: (NSString *) username {  
    return [[NSUserDefaults standardUserDefaults] objectForKey: @"authData"];  
}

@end

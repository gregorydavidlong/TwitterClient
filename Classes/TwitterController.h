//
//  TwitterController.h
//  TwitterClient
//
//  Created by Gregory David Long on 15/03/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SA_OAuthTwitterController.h"
#import "SA_OAuthTwitterEngine.h"

@interface TwitterController : NSObject <SA_OAuthTwitterControllerDelegate, SA_OAuthTwitterEngineDelegate> {
	SA_OAuthTwitterEngine *_engine;
}

- (id) initWithKey:(NSString *)key secret:(NSString *)secret;
- (BOOL)isAuthorised;
- (UIViewController*)authorise;


@end

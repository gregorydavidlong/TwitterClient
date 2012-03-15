//
//  TwitterTestAppDelegate.h
//  TwitterTest
//
//  Created by Gregory David Long on 15/03/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainView.h"

@interface TwitterClientAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	MainView *mainViewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end


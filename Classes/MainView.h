//
//  MainView.h
//  TwitterTest
//
//  Created by Gregory David Long on 15/03/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class TwitterController;


@interface MainView : UIViewController {
	IBOutlet UITextField *usernameTextView;
	IBOutlet UITextField *passwordTextView;
	TwitterController *twitterController;
}

- (IBAction)login;

@end

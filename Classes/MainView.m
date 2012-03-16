//
//  MainView.m
//  TwitterTest
//
//  Created by Gregory David Long on 15/03/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "MainView.h"
#import "TwitterController.h"

#define KEY @"SS2pz3OYRsmCU24QViz4Q"
#define SECRET @""

@implementation MainView

// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	[passwordTextView setSecureTextEntry: TRUE];
	twitterController = [[TwitterController alloc] initWithKey:KEY secret:SECRET];
	
	// Start the engine
	if (![twitterController isAuthorised])
	{
		UIViewController *viewController = [twitterController authorise];
		
		if (viewController)
		{
			// This will present a view to the user asking for permission to read their data
			[self presentModalViewController:viewController animated:YES];
		}
		[viewController dealloc];
	}
	NSLog(@"Twitter Controller is authorised");
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[twitterController dealloc];
    [super dealloc];
}

// Actions

- (IBAction)login
{
	
}


@end

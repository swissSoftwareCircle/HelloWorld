//
//  HelloWorldViewController.m
//  HelloWorld
//
//  Created by Baltisar Oswald on 17.01.12.
//  Copyright (c) 2012 BKW. All rights reserved.
//

#import "HelloWorldViewController.h"

@implementation HelloWorldViewController
@synthesize userName = _userName;
@synthesize textField = _textField;
@synthesize label = _label;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setTextField:nil];
    [self setLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

-(BOOL) textFieldShouldReturn: (UITextField *) theTextField {
    [theTextField resignFirstResponder];

    return YES;
}

- (IBAction)changeGreetings:(id)sender {
    self.userName = self.textField.text;
    NSString *nameString = self.userName;
    
    if([nameString length] == 0) {
        nameString = @"World";
    }
    NSString *greeting = [[NSString alloc] initWithFormat: @"Hello, %@!",nameString]; 
    
    self.label.text = greeting;
}
@end

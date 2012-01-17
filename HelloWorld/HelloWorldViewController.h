//
//  HelloWorldViewController.h
//  HelloWorld
//
//  Created by Baltisar Oswald on 17.01.12.
//  Copyright (c) 2012 BKW. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HelloWorldViewController : UIViewController <UITextFieldDelegate> {

    NSString *userName;

}

@property (nonatomic, copy) NSString *userName;

- (IBAction)changeGreetings:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *textField;

@property (weak, nonatomic) IBOutlet UILabel *label;



@end

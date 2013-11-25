//
//  ContactMeViewController.m
//  MyResume
//
//  Created by Tripta Gupta on 11/24/13.
//  Copyright (c) 2013 Tripta Gupta. All rights reserved.
//

#import "ContactMeViewController.h"
#import "sendgrid.h"

@interface ContactMeViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *emailTextField;
@property (weak, nonatomic) IBOutlet UITextView *messageTextView;

@end

@implementation ContactMeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
}

- (IBAction)onClearButtonTap:(id)sender
{
    self.nameTextField.text = nil;
    self.emailTextField.text = nil;
    self.messageTextView.text = @"Hi Tripta, ";
}

- (IBAction)onSendButtonTap:(id)sender
{

}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

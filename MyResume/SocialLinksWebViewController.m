//
//  SocialLinkWebViewController.m
//  MyResume
//
//  Created by Tripta Gupta on 11/24/13.
//  Copyright (c) 2013 Tripta Gupta. All rights reserved.
//

#import "SocialLinksWebViewController.h"

@interface SocialLinksWebViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation SocialLinksWebViewController

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
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

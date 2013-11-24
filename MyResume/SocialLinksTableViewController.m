//
//  SocialLinksTableViewController.m
//  MyResume
//
//  Created by Tripta Gupta on 11/23/13.
//  Copyright (c) 2013 Tripta Gupta. All rights reserved.
//

#import "SocialLinksTableViewController.h"
#import "SocialLinksWebViewController.h"

@interface SocialLinksTableViewController ()

@property (strong, nonatomic) NSArray *socialServices;
@property (strong, nonatomic) NSArray *socialURLs;

@end

@implementation SocialLinksTableViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.socialServices = @[@"LinkedIn", @"Facebook", @"Twitter", @"Github"];
    self.socialURLs = @[@"http://www.linkedin.com/in/triptagupta",
                        @"https://www.facebook.com/ladoo3",
                        @"https://twitter.com/triptagupta",
                        @"https://github.com/neurosaurus"];

}

#pragma mark - Table view data source

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    SocialLinksWebViewController *socialLinksWebViewController = segue.destinationViewController;
    NSIndexPath *indexPathForSelectedCell = [self.tableView indexPathForSelectedRow];
    NSString *socialURL = [self.socialURLs objectAtIndex:indexPathForSelectedCell.row];
    socialLinksWebViewController.socialURL = socialURL;
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.socialServices count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"socialLinksCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    NSString *socialService = [self.socialServices objectAtIndex:indexPath.row];
    cell.textLabel.text = socialService;
    cell.imageView.image = [UIImage imageNamed:socialService];
    
    return cell;
}

@end

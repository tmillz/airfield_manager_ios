//
//  HomeViewController.m
//  Airfield-Manager
//
//  Created by Terrance Miller on 9/17/14.
//  Copyright (c) 2014 Terrance Miller. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (IBAction)showMenu
{
    // Dismiss keyboard (optional)
    //
    [self.view endEditing:YES];
    [self.frostedViewController.view endEditing:YES];
    
    // Present the view controller
    //
    [self.frostedViewController presentMenuViewController];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    self.tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return 5;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    if (indexPath.section == 0) {
        NSArray *titles = @[@"AFIs-Air Force Instructions",
                            @"UFC's-Unified Facility Criteria",
                            @"ETL's-Engineering Technical Letters",
                            @"FAA-Federal Aviation Administration",
                            @"MAJCOM Supplements"];
        
        cell.textLabel.text = titles[indexPath.row];
    }
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    if (indexPath.section == 0 && indexPath.row == 0) {
        UIViewController *afiTableViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"afiTableViewController"];
        [self.navigationController pushViewController:afiTableViewController animated:YES];
        
    } else if (indexPath.section == 0 && indexPath.row == 1) {
        UIViewController *ufcTableViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"ufcTableViewController"];
        [self.navigationController pushViewController:ufcTableViewController animated:YES];
    
    } else if (indexPath.section == 0 && indexPath.row == 2) {
        UIViewController *etlTableViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"etlTableViewController"];
        [self.navigationController pushViewController:etlTableViewController animated:YES];
        
    } else if (indexPath.section == 0 && indexPath.row == 3) {
        UIViewController *faaTableViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"faaTableViewController"];
        [self.navigationController pushViewController:faaTableViewController animated:YES];
    
    } else if (indexPath.section == 0 && indexPath.row == 4) {
        UIViewController *majcomTableViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"majcomTableViewController"];
        [self.navigationController pushViewController:majcomTableViewController animated:YES];
        
    } else {
        
    }
}

@end


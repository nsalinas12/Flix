//
//  SearchBarTableViewController.m
//  Flix
//
//  Created by Nico Salinas on 6/28/18.
//  Copyright © 2018 Nico Salinas. All rights reserved.
//

#import "SearchBarTableViewController.h"
#import "MoviesViewController.h"
#import "UIImageView+AFNetworking.h"

@interface SearchBarTableViewController ()

@property (nonatomic, strong ) NSArray *movies;
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSArray *data;
@property (strong, nonatomic) NSArray *filteredData;
@property (strong, nonatomic) IBOutlet UISearchBar *searchBar;

@end

@implementation SearchBarTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.searchBar.delegate = self;
    
    self.data = self.movies;
    
    self.filteredData = self.data;
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.filteredData.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"TableCell"
                                                                 forIndexPath:indexPath];
    cell.textLabel.text = self.filteredData[indexPath.row];
    
    return cell;
}

- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText {
    
    if (searchText.length != 0) {
        
        NSPredicate *predicate = [NSPredicate predicateWithBlock:^BOOL(NSString *evaluatedObject, NSDictionary *bindings) {
            return [evaluatedObject containsString:searchText];
        }];
        self.filteredData = [self.data filteredArrayUsingPredicate:predicate];
        
        NSLog(@"%@", self.filteredData);
        
    }
    else {
        self.filteredData = self.data;
    }
    
    [self.tableView reloadData];
    
}

- (void)searchBarCancelButtonClicked:(UISearchBar *)searchBar {
    self.searchBar.showsCancelButton = NO;
    self.searchBar.text = @"";
    [self.searchBar resignFirstResponder];
}

- (void)searchBarTextDidBeginEditing:(UISearchBar *)searchBar {
    self.searchBar.showsCancelButton = YES;
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

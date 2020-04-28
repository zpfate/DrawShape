//
//  ShapeListViewController.m
//  DrawShape
//
//  Created by Twisted Fate on 2020/4/28.
//  Copyright © 2020 Twisted Fate. All rights reserved.
//

#import "ShapeListViewController.h"
#import "UIScrollView+TFKit.h"
#import "DrawViewController.h"
@interface ShapeListViewController ()

@property (nonatomic, strong) NSArray *list;

@end

@implementation ShapeListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    self.list = @[@"Line", @"Circle", @""];
     [self.tableView registerClass:UITableViewCell.class forCellReuseIdentifier:UITableViewCell.tf_cellIdentifier];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.list.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:UITableViewCell.tf_cellIdentifier forIndexPath:indexPath];
    cell.textLabel.text = self.list[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *title = self.list[indexPath.row];
    DrawViewController *drawVC = [DrawViewController new];
    drawVC.title = title;
    [self.navigationController pushViewController:drawVC animated:YES];
}


@end

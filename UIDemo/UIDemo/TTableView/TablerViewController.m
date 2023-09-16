//
//  TablerViewController.m
//  UIDemo
//
//  Created by anzhilin on 2023/9/16.
//

#import "TablerViewController.h"
#import "TableView.h"

@interface TablerViewController ()

@property (nonatomic, strong) TableView *tableView;

@end

@implementation TablerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"tableView";
    [self.view addSubview:self.tableView];
}

- (TableView *)tableView {
    if (!_tableView) {
        _tableView = [[TableView alloc] initWithFrame:self.view.bounds];
    }
    return _tableView;
}

@end

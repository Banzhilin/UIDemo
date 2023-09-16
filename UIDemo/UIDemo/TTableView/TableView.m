//
//  TableView.m
//  UIDemo
//
//  Created by anzhilin on 2023/9/16.
//

#import "TableView.h"
#import <Masonry/Masonry.h>

#define IDENTIFIER @"cellReuse"

@interface TableView()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation TableView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}

- (void)setup{
    self.backgroundColor = UIColor.whiteColor;
    [self addSubview:self.tableView];
    [_tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.mas_centerX);
        make.top.equalTo(self.mas_top).offset(200);
        make.height.mas_equalTo(600);
        make.width.mas_equalTo(200);
    }];
    
}

#pragma  mark - 代理方法

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 20;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 40;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:IDENTIFIER];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:IDENTIFIER];
    }
    for (UIView *temp in cell.subviews) {
        [temp removeFromSuperview];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.backgroundColor = [UIColor.grayColor colorWithAlphaComponent:0.2];
    UIView *view = [[UIView alloc] init];
    view.backgroundColor = UIColor.yellowColor;
    [cell addSubview:view];
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(cell.mas_top);
        make.left.right.equalTo(cell);
        make.bottom.equalTo(cell.mas_bottom).offset(-10);
    }];
    return cell;
}


#pragma mark - getter
- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] init];
        _tableView.backgroundColor = UIColor.orangeColor;
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:IDENTIFIER];
    }
    return _tableView;
}

@end

//
//  TabelView.m
//  mvcFramework1
//
//  Created by 汤义 on 17/3/29.
//  Copyright © 2017年 汤义. All rights reserved.
//

#import "TabelView.h"
#import "HomeTableViewCell.h"
@interface TabelView()<UITableViewDelegate, UITableViewDataSource>

@end
@implementation TabelView
+ (instancetype)initAddTabelView {
    return [[TabelView alloc] initWithFrame:CGRectMake(0, 0, UI_SCREEN_WIDTH, UI_SCREEN_HEIGHT)];
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self initView];
    }
    return self;
}

- (void)setModelArray:(NSMutableArray *)modelArray {
    _modelArray = modelArray;
}

- (void)initView {
    UITableView *tabelView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, UI_SCREEN_WIDTH, UI_SCREEN_HEIGHT) style:UITableViewStylePlain];
    tabelView.delegate = self;
    tabelView.dataSource = self;
    [self addSubview:tabelView];
}

- (NSInteger)numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _modelArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    HomeTableViewCell *cell = [HomeTableViewCell homeTableViewCell:tableView];
    cell.dataModel = _modelArray[indexPath.row];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    DataModel *data = _modelArray[indexPath.row];
    if ([data.imageName isEqualToString:@""]) {
        return 205;
    } else{
        return 100;
    }
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end

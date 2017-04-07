//
//  HomeViewController.m
//  Framework
//
//  Created by 汤义 on 17/3/15.
//  Copyright © 2017年 汤义. All rights reserved.
//

#import "HomeViewController.h"
#import "HomeTableViewCell.h"
#import "TabelView.h"
@interface HomeViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) NSMutableArray *MutableArray;
@property (nonatomic, strong) NSMutableArray *modelArray;
@end

@implementation HomeViewController

- (NSMutableArray *)MutableArray {
    if (_MutableArray == nil) {
        _MutableArray = [NSMutableArray array];
    }
    return _MutableArray;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    //数据请求和转模型
    [self initRequest];
    //这里用tableView做例子
    [self initTabelView];
    
}
//用于仿制请求数据转模型
- (void)initRequest {
    NSDictionary *Dictionary1 = @{@"imageName":@"image",@"text":@"小明",@"content":@"刚回家好看好看构建个你圣诞节发送",@"imageSituation":@"",@"titleLbl":@"",@"coordinateLbl":@""};
    NSDictionary *Dictionary2 = @{@"imageName":@"image",@"text":@"小话",@"content":@"刚回家好看好",@"imageSituation":@"",@"titleLbl":@"",@"coordinateLbl":@""};
    NSDictionary *Dictionary3 = @{@"imageName":@"image",@"text":@"小红",@"content":@"刚回家好看好是割发代首个收到",@"imageSituation":@"",@"titleLbl":@"",@"coordinateLbl":@""};
    NSDictionary *Dictionary4 = @{@"imageName":@"",@"text":@"",@"content":@"",@"imageSituation":@"image",@"titleLbl":@"好话",@"coordinateLbl":@"惠西街南口"};
    NSDictionary *Dictionary5 = @{@"imageName":@"",@"text":@"",@"content":@"",@"imageSituation":@"image",@"titleLbl":@"五毛",@"coordinateLbl":@"磁器口"};
    NSDictionary *Dictionary6 = @{@"imageName":@"",@"text":@"",@"content":@"",@"imageSituation":@"image",@"titleLbl":@"公司",@"coordinateLbl":@"西直门"};
    _MutableArray = [NSMutableArray arrayWithObjects:Dictionary1,Dictionary2,Dictionary3,Dictionary4,Dictionary5,Dictionary6, nil];
    _modelArray = [NSMutableArray array];
    for (NSDictionary *dic in _MutableArray) {
        DataModel *model = [DataModel initDataModel:dic];
        [_modelArray addObject:model];
    }
}

- (void)initTabelView {
    TabelView *tabelView = [TabelView initAddTabelView];
    tabelView.modelArray = _modelArray;
    [self.view addSubview:tabelView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

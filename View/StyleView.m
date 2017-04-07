//
//  StyleView.m
//  Framework
//
//  Created by 汤义 on 17/3/16.
//  Copyright © 2017年 汤义. All rights reserved.
//

#import "StyleView.h"
#define image_HW 80
#define View_H 205
@interface StyleView()
@property (nonatomic, weak) UIImageView *imageViews;
@property (nonatomic, weak) UILabel *nameLbl;
@property (nonatomic, weak) UILabel *contentLbl;

@property (nonatomic, weak) UILabel *titleLbl;
@property (nonatomic, weak) UIImageView *imageSituation;
@property (nonatomic, weak) UILabel *coordinateLbl;
@end
@implementation StyleView
+ (instancetype)initView:(CGRect)frame {
    StyleView *view = [[StyleView alloc] initWithFrame:frame];
    return view;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self initView];
    }
    return self;
}
//在view初始化控件，(这里就如同web开发中的thml页面，也就是web中mvc中的view)
- (void)initView {
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, image_HW, image_HW)];
    imageView.hidden = YES;
    [self addSubview:_imageViews = imageView];
    
    UILabel *nameLbl = [[UILabel alloc] initWithFrame:CGRectMake(100, 10, 100, 40)];
    nameLbl.hidden = YES;
    [self addSubview:_nameLbl = nameLbl];
    
    UILabel *contentLbl = [[UILabel alloc] initWithFrame:CGRectMake(100, 55, UI_SCREEN_WIDTH - image_HW -10, image_HW - 55)];
    contentLbl.hidden = YES;
    [self addSubview:_contentLbl = contentLbl];
    
    //样式二
    UILabel *titleLbl = [[UILabel alloc] initWithFrame:CGRectMake(10, 5, image_HW, 20)];
    titleLbl.hidden = YES;
    [self addSubview:_titleLbl = titleLbl];
    
    UIImageView *imageSituation = [[UIImageView alloc] initWithFrame:CGRectMake(10, 30, UI_SCREEN_WIDTH - 20, 155)];
    imageSituation.hidden = YES;
    [self addSubview:_imageSituation = imageSituation];
    
    UILabel *coordinateLbl = [[UILabel alloc] initWithFrame:CGRectMake(UI_SCREEN_WIDTH - 100, View_H - 15, 90, 15)];
    coordinateLbl.textAlignment = NSTextAlignmentRight;
    coordinateLbl.hidden = YES;
    [self addSubview:_coordinateLbl = coordinateLbl];
}

//这里就是这个页面的数据导入
- (void)initData:(DataModel *)dataModel {
    _imageViews.hidden = NO;
    _nameLbl.hidden = NO;
    _contentLbl.hidden = NO;
    _imageViews.image = [UIImage imageNamed:dataModel.imageName];
    _nameLbl.text = dataModel.textLbl;
    _contentLbl.text = dataModel.contentLbl;

}
//样式二传进来的数据
- (void)initStyleData:(DataModel *)dataModel {
    _titleLbl.hidden = NO;
    _coordinateLbl.hidden = NO;
    _imageSituation.hidden = NO;
    _titleLbl.text = dataModel.titleLbl;
    _imageSituation.image = [UIImage imageNamed:dataModel.imageSituation];
    _coordinateLbl.text = dataModel.coordinateLbl;
    
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end

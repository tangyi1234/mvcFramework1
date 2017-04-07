//
//  DataModel.h
//  Framework
//
//  Created by 汤义 on 17/3/16.
//  Copyright © 2017年 汤义. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataModel : NSObject
@property (nonatomic, copy) NSString *imageName;
@property (nonatomic, copy) NSString *textLbl;
@property (nonatomic, copy) NSString *contentLbl;
@property (nonatomic, copy) NSString *titleLbl;
@property (nonatomic, copy) NSString *imageSituation;
@property (nonatomic, copy) NSString *coordinateLbl;
+ (instancetype)initDataModel:(NSDictionary *)Dictionary;
@end

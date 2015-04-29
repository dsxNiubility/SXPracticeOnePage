//
//  MOMABaseCell.h
//  02 - 模拟新版本MOMA
//
//  Created by dsx on 15/4/20.
//  Copyright (c) 2015年 dsx. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MOMABaseModel;

@interface MOMABaseCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *iconImg;
@property (weak, nonatomic) IBOutlet UILabel *nameLbl;
@property (weak, nonatomic) IBOutlet UILabel *locationLbl;
@property (weak, nonatomic) IBOutlet UILabel *workerNameLbl;
@property (weak, nonatomic) IBOutlet UILabel *timeLbl;
@property (weak, nonatomic) IBOutlet UILabel *distanceLbl;

@property(nonatomic,strong) MOMABaseModel *baseModel;

+ (instancetype)baseCellWithTableView:(UITableView *)tableView;
@end

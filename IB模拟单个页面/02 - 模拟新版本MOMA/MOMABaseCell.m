//
//  MOMABaseCell.m
//  02 - 模拟新版本MOMA
//
//  Created by dsx on 15/4/20.
//  Copyright (c) 2015年 dsx. All rights reserved.
//

#import "MOMABaseCell.h"
#import "MOMABaseModel.h"

@implementation MOMABaseCell


+ (instancetype)baseCellWithTableView:(UITableView *)tableView
{
    static NSString* ID = @"BaseCell";
    MOMABaseCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[self alloc]init];
    }
    return cell;
}

- (void)setBaseModel:(MOMABaseModel *)baseModel
{
    _baseModel = baseModel;
    self.nameLbl.text = baseModel.name;
    self.workerNameLbl.text = baseModel.workerName;
    self.iconImg.image = [UIImage imageNamed:baseModel.icon];
    self.locationLbl.text = baseModel.location;
    
    self.timeLbl.text = [NSString stringWithFormat:@"剩余%d天以上",baseModel.time];
    self.distanceLbl.text = [NSString stringWithFormat:@"%d米",baseModel.distance];
}
@end

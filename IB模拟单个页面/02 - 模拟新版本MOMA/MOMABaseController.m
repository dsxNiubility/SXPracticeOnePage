//
//  MOMABaseController.m
//  02 - 模拟新版本MOMA
//
//  Created by dsx on 15/4/20.
//  Copyright (c) 2015年 dsx. All rights reserved.
//

#import "MOMABaseController.h"
#import "MOMABaseCell.h"
#import "MOMABaseModel.h"

@interface MOMABaseController ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;

@property(nonatomic,strong) NSMutableArray *allModels;

@end

@implementation MOMABaseController


- (NSMutableArray *)allModels
{
    if (_allModels == nil) {
        _allModels = [NSMutableArray array];
    }
    return _allModels;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    NSLog(@"%p",self);
        return self;

}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    for (int i = 0; i<20; i++) {
        MOMABaseModel *model1 = [[MOMABaseModel alloc]init];
        model1.name = @"将太无二（赛特购物中心）";
        model1.location = @"北京市朝阳区建国门外大街22号赛特购物广场负一层东侧B045";
        model1.workerName = @"邢丽娜";
        model1.time = 45;
        model1.distance = 300;
        model1.icon = @"005.png";
        [self.allModels addObject:model1];
    }

}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

- (IBAction)choiceLocation {
    NSLog(@"点击选择位置");
}

- (IBAction)choiceArea {
    NSLog(@"点击全部商圈");
}

- (IBAction)choiceCategory {
    NSLog(@"点击全部品类");
}

- (IBAction)choiceList {
    NSLog(@"点击全部标签");
}

- (IBAction)choiceNearest {
    NSLog(@"点击离我最近");
}

#pragma mark - ################### TableView数据源和代理方法
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.allModels.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MOMABaseCell *cell = [MOMABaseCell baseCellWithTableView:tableView];
    MOMABaseModel *model = self.allModels[indexPath.row];
    cell.baseModel = model;
    return cell;
}


@end

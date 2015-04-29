//
//  MOMABaseModel.h
//  02 - 模拟新版本MOMA
//
//  Created by dsx on 15/4/20.
//  Copyright (c) 2015年 dsx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MOMABaseModel : NSObject

@property(nonatomic,copy) NSString * name;
@property(nonatomic,copy) NSString * icon;
@property(nonatomic,copy) NSString * workerName;
@property(nonatomic,copy) NSString * location;
@property(nonatomic,assign) int time;
@property(nonatomic,assign) int distance;

@end

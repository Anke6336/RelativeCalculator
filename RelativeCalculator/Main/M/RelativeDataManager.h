//
//  RelativeDataManager.h
//  RelativeCalculator
//
//  Created by Zhanglx on 2021/7/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RelativeDataManager : NSObject

/// 单例方法
+ (instancetype)sharedInstance;

/// 加载所有亲戚关系数据
- (NSArray *)loadRelativeDataArray;

@end

NS_ASSUME_NONNULL_END

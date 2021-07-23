//
//  RelativeButton.h
//  RelativeCalculator
//
//  Created by Zhanglx on 2021/7/22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/// 按钮响应代理
@protocol RelativeBtnDelegate <NSObject>

- (void)chooseButton:(NSString *)title;

@end

@interface RelativeButton : UIButton

@property (nonatomic, weak) id<RelativeBtnDelegate>delegate;

/// create 方法
/// @param title 按钮 title
- (instancetype)createButtonWithTitle:(NSString *)title;

@end

NS_ASSUME_NONNULL_END

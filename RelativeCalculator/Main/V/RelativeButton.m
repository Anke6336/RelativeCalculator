//
//  RelativeButton.m
//  RelativeCalculator
//
//  Created by Zhanglx on 2021/7/22.
//

#import "RelativeButton.h"

@interface RelativeButton ()

@property (nonatomic, copy) NSString *tit;

@end

@implementation RelativeButton

- (instancetype)createButtonWithTitle:(NSString *)title {
    
    self.tit = title;
    
    RelativeButton *btn = [RelativeButton buttonWithType:UIButtonTypeCustom];
    if([title isEqualToString:@"DEL"]) {
        btn.layer.backgroundColor = [UIColor redColor].CGColor;
    }else if([title isEqualToString:@"C"]) {
        btn.layer.backgroundColor = [UIColor orangeColor].CGColor;
    }else {
        btn.layer.backgroundColor = [UIColor whiteColor].CGColor;
    }
    btn.layer.borderColor = UIColor.grayColor.CGColor;
    btn.layer.borderWidth = 0.5;
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(touchAction) forControlEvents:UIControlEventTouchUpInside];
    
    return btn;
}

- (void)touchAction {
    if(self.delegate && [self.delegate respondsToSelector:@selector(chooseButton:)]) {
        [self.delegate chooseButton:self.titleLabel.text];
    }
}

@end

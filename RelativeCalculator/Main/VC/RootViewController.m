//
//  RootViewController.m
//  RelativeCalculator
//
//  Created by Zhanglx on 2021/7/22.
//

#import "RootViewController.h"
#import "RelativeButton.h"
#import "RelativeDataManager.h"

@interface RootViewController ()<RelativeBtnDelegate>

/// 显示复杂关系文字串（以'的'作为区分）
@property (nonatomic, strong) UITextView *inputText;

/// 计算关系结果
@property (nonatomic, strong) UILabel *resultLabel;

/// 计算器按键数组
@property (nonatomic, strong) NSArray *arrayTitle;

/// 加载所有亲戚关系数据
@property (nonatomic, strong) NSArray <NSArray <NSString*>*>*relationshipDataArray;

/// 记录已选
@property (nonatomic, strong) NSMutableArray *chooseArray;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"简易版亲戚计算器";
    self.view.backgroundColor = BGColor;
    
    self.inputText.text = @"";
    self.resultLabel.text = @"";
    
    [self loadButtonViews];
}

- (void)loadButtonViews {
    
    CGFloat currentHeight = NavHeight+250;
    for(int i=0; i<self.arrayTitle.count; i++) {
        RelativeButton *btn = [[RelativeButton alloc] createButtonWithTitle:self.arrayTitle[i]];
        btn.frame = CGRectMake(BtnWidth*(i%4), currentHeight, BtnWidth, BtnHeight);
        btn.delegate = self;
        [self.view addSubview:btn];
        
        // 换行展示
        if(i%4 == 3) {
            currentHeight += BtnHeight;
        }
    }
}

- (void)chooseButton:(NSString *)title {
    
    if([title isEqualToString:@"DEL"]) {
        [self.chooseArray removeLastObject];
    }
    else if([title isEqualToString:@"C"]) {
        [self.chooseArray removeAllObjects];
    }
    else {
        [self.chooseArray addObject:title];
    }
    
    self.inputText.text = [self.chooseArray componentsJoinedByString:@"的"];

    [self calculator];
}

- (void)calculator {
    
    NSString *resultValue = self.chooseArray.firstObject;
    int column = 0, row = 0;
    for(int i=1; i<self.chooseArray.count; i++) {
        for(int j=0; j<self.relationshipDataArray.count;++j) {
            if([self.relationshipDataArray[j][0] isEqualToString:resultValue]) {
                row = j;
            }
        }
        
        for(int k=0; k<self.relationshipDataArray[0].count; k++) {
            if([self.relationshipDataArray[0][k] isEqualToString:self.chooseArray[i]]) {
                column = k;
            }
        }
        
        resultValue = self.relationshipDataArray[row][column];
        
        if(![self isExist:resultValue]) {
            resultValue = @"未知亲戚";
            break;
        }
    }
    
    self.resultLabel.text = resultValue;
}


/// 判断亲戚关系是否存在
/// @param value  计算出的关系
- (BOOL)isExist:(NSString *)value {
    for(int i=0; i<self.relationshipDataArray.count; i++) {
        if([value isEqualToString:self.relationshipDataArray[i][0]]) {
            return YES;
        }
    }
    return NO;
}


- (UITextView *)inputText {
    if(!_inputText) {
        _inputText = [[UITextView alloc] initWithFrame:CGRectMake(0, NavHeight, ScreenWidth, 200)];
        _inputText.backgroundColor = BGColor;
        _inputText.textContainerInset = UIEdgeInsetsMake(10, 15, 10, 15);
        _inputText.userInteractionEnabled = NO;
        _inputText.font = [UIFont systemFontOfSize:18];
        [self.view addSubview:_inputText];
    }
    
    return _inputText;
}

- (UILabel *)resultLabel {
    if(!_resultLabel) {
        _resultLabel = [[UILabel alloc] initWithFrame:CGRectMake(15, NavHeight+200, ScreenWidth-30, 50)];
        _resultLabel.backgroundColor = BGColor;
        _resultLabel.font = [UIFont boldSystemFontOfSize:25];
        _resultLabel.textAlignment = NSTextAlignmentRight;
        [self.view addSubview:_resultLabel];
    }
    return _resultLabel;
}

- (NSArray *)arrayTitle {
    if(!_arrayTitle) {
        _arrayTitle = @[
            @"爸爸", @"妈妈", @"DEL", @"C",
            @"哥哥", @"姐姐", @"弟弟", @"妹妹",
            @"丈夫", @"妻子", @"儿子", @"女儿",
        ];
    }
    return _arrayTitle;
}

- (NSArray <NSArray <NSString *>*>*)relationshipDataArray {
    if(!_relationshipDataArray) {
        _relationshipDataArray = [[RelativeDataManager sharedInstance] loadRelativeDataArray];
    }
    return _relationshipDataArray;
}

- (NSMutableArray *)chooseArray {
    if(!_chooseArray) {
        _chooseArray = [[NSMutableArray alloc] init];
    }
    return _chooseArray;
}

@end

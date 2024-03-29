//
//  RelativeData_1.m
//  RelativeCalculator
//
//  Created by Zhanglx on 2021/7/22.
//

#import "RelativeData_1.h"

@implementation RelativeData_1

- (NSArray *)addRelativeData {
    
    return @[
        /*@[@"我", @"爸爸", @"妈妈", @"哥哥", @"弟弟", @"姐姐", @"妹妹", @"儿子", @"女儿", @"妻子", @"丈夫", @"未知亲戚"]*/
        @[@"伯父", @"爷爷", @"奶奶", @"伯父", @"叔叔", @"姑妈", @"姑妈", @"堂哥", @"堂姐", @"伯母", @"不存在该种关系", @"未知亲戚"],
        @[@"叔叔", @"爷爷", @"奶奶", @"伯父", @"叔叔", @"姑妈", @"姑妈", @"堂弟", @"堂妹", @"婶婶", @"不存在该种关系", @"未知亲戚"],
        @[@"姑妈", @"爷爷", @"奶奶", @"伯父", @"叔叔", @"姑妈", @"姑妈", @"姑表哥", @"姑表姐", @"不存在该种关系", @"姑丈", @"未知亲戚"],
        @[@"外公", @"外曾祖父", @"外曾祖母", @"伯外祖父", @"叔外祖父", @"姑姥姥", @"姑姥姥", @"舅舅", @"妈妈", @"外婆", @"不存在该种关系", @"未知亲戚"],
        @[@"外婆", @"外曾外祖父", @"外曾外祖母", @"外舅公", @"外舅公", @"姨姥姥", @"姨姥姥", @"舅舅", @"妈妈", @"不存在该种关系", @"外公", @"未知亲戚"],
        @[@"大舅", @"外公", @"外婆", @"大舅", @"舅舅", @"大姨", @"妈妈", @"舅表哥", @"舅表姐", @"大舅妈", @"不存在该种关系", @"未知亲戚"],
        @[@"小舅", @"外公", @"外婆", @"舅舅", @"小舅", @"妈妈", @"小姨", @"舅表弟", @"舅表妹", @"小舅妈", @"不存在该种关系", @"未知亲戚"],
        @[@"大姨妈", @"外公", @"外婆", @"大舅", @"舅舅", @"大姨", @"妈妈", @"姨表哥", @"姨表姐", @"不存在该种关系", @"大姨父", @"未知亲戚"],
        @[@"小姨妈", @"外公", @"外婆", @"舅舅", @"小舅", @"妈妈", @"小姨", @"姨表弟", @"姨表妹", @"不存在该种关系", @"小姨父", @"未知亲戚"],
        @[@"侄儿", @"哥哥", @"嫂子", @"侄儿", @"侄儿", @"侄女", @"侄女", @"侄孙子", @"侄孙女", @"侄媳", @"不存在该种关系", @"未知亲戚"],
        @[@"侄女", @"哥哥", @"嫂子", @"侄儿", @"侄儿", @"侄女", @"侄女", @"外侄孙", @"外侄孙女", @"不存在该种关系", @"侄女婿", @"未知亲戚"],
        @[@"嫂子", @"姻伯父", @"姻伯母", @"姻兄", @"姻弟", @"姻姐", @"姻妹", @"侄儿", @"侄女", @"不存在该种关系", @"哥哥", @"未知亲戚"],
        @[@"弟妹", @"姻叔父", @"姻叔母", @"姻兄", @"姻弟", @"姻姐", @"姻妹", @"侄儿", @"侄女", @"不存在该种关系", @"弟弟", @"未知亲戚"],
        @[@"外甥", @"姐夫", @"姐姐", @"外甥", @"外甥", @"外甥女", @"外甥女", @"外甥孙", @"外甥孙女", @"外甥媳妇", @"不存在该种关系", @"未知亲戚"],
        @[@"外甥女", @"姐夫", @"姐姐", @"外甥", @"外甥", @"外甥女", @"外甥女", @"外甥孙", @"外甥孙女", @"不存在该种关系", @"外甥女婿", @"未知亲戚"],
        @[@"姐夫", @"姻世伯", @"姻伯母", @"姻兄", @"姻弟", @"姻姐", @"姻妹", @"外甥", @"外甥女", @"姐姐", @"不存在该种关系", @"未知亲戚"],
        @[@"妹夫", @"姻世伯", @"姻伯母", @"姻兄", @"姻弟", @"姻姐", @"姻妹", @"外甥", @"外甥女", @"妹妹", @"不存在该种关系", @"未知亲戚"],
        @[@"孙子", @"儿子", @"儿媳", @"孙子", @"孙子", @"孙女", @"孙女", @"曾孙", @"曾孙女", @"孙媳", @"不存在该种关系", @"未知亲戚"],
        @[@"孙女", @"儿子", @"儿媳", @"孙子", @"孙子", @"孙女", @"孙女", @"曾外孙", @"曾外孙女", @"不存在该种关系", @"孙女婿", @"未知亲戚"],
        @[@"儿媳", @"亲家公", @"亲家母", @"姻侄", @"姻侄", @"姻侄女", @"姻侄女", @"孙子", @"孙女", @"不存在该种关系", @"儿子", @"未知亲戚"],
        @[@"外孙女", @"女婿", @"女儿", @"外孙", @"外孙", @"外孙女", @"外孙女", @"外曾外孙", @"外曾外孙女", @"不存在该种关系", @"外孙女婿", @"未知亲戚"],
        @[@"外孙", @"女婿", @"女儿", @"外孙", @"外孙", @"外孙女", @"外孙女", @"外曾孙", @"外曾孙女", @"外孙媳", @"不存在该种关系", @"未知亲戚"],
        @[@"女婿", @"亲家公", @"亲家母", @"姻侄", @"姻侄", @"姻侄女", @"姻侄女", @"外孙", @"外孙女", @"女儿", @"不存在该种关系", @"未知亲戚"],
        @[@"岳父", @"太岳父", @"太岳母", @"伯岳", @"叔岳", @"姑岳母", @"姑岳母", @"大舅子", @"大姨子", @"岳母", @"不存在该种关系", @"未知亲戚"],
        @[@"岳母", @"外太岳父", @"外太岳母", @"舅岳父", @"舅岳父", @"姨岳母", @"姨岳母", @"小舅子", @"小姨子", @"不存在该种关系", @"岳父", @"未知亲戚"],
        @[@"大舅子", @"岳父", @"岳母", @"大舅子", @"小舅子", @"大姨子", @"小姨子", @"内侄", @"内侄女", @"舅嫂", @"不存在该种关系", @"未知亲戚"],
        @[@"小舅子", @"岳父", @"岳母", @"大舅子", @"小舅子", @"老婆", @"小姨子", @"内侄", @"内侄女", @"舅弟媳", @"不存在该种关系", @"未知亲戚"],
        @[@"大姨子", @"岳父", @"岳母", @"大舅子", @"小舅子", @"大姨子", @"老婆", @"内甥", @"姨甥女", @"不存在该种关系", @"大姨夫", @"未知亲戚"],
        @[@"小姨子", @"岳父", @"岳母", @"大舅子", @"小舅子", @"老婆", @"小姨子", @"内甥", @"姨甥女", @"不存在该种关系", @"小姨夫", @"未知亲戚"],
        @[@"曾祖父", @"高祖父", @"高祖母", @"曾伯祖父", @"曾叔祖父", @"曾姑奶奶", @"曾姑奶奶", @"爷爷", @"姑奶奶", @"曾祖母", @"不存在该种关系", @"未知亲戚"],
        @[@"曾祖母", @"高外祖父", @"高外祖母", @"舅曾祖父", @"舅曾祖父", @"姨曾祖母", @"姨曾祖母", @"爷爷", @"姑奶奶", @"不存在该种关系", @"曾祖父", @"未知亲戚"],
        @[@"伯祖父", @"曾祖父", @"曾祖母", @"伯祖父", @"爷爷", @"姑奶奶", @"姑奶奶", @"堂伯", @"堂姑", @"伯祖母", @"不存在该种关系", @"未知亲戚"],
        @[@"姑奶奶", @"曾祖父", @"曾祖母", @"爷爷", @"叔祖父", @"姑奶奶", @"姑奶奶", @"姑表伯父", @"姑表姑母", @"不存在该种关系", @"姑爷爷", @"未知亲戚"],
        @[@"曾外祖父", @"曾外曾祖父", @"曾外曾祖母", @"伯曾外祖父", @"叔曾外祖父", @"姑曾外祖母", @"姑曾外祖母", @"舅公", @"奶奶", @"曾外祖母", @"不存在该种关系", @"未知亲戚"],
        @[@"曾外祖母", @"曾外曾外祖父", @"曾外曾外祖母", @"舅曾外祖父", @"舅曾外祖父", @"姨曾外祖母", @"姨曾外祖母", @"舅公", @"奶奶", @"不存在该种关系", @"曾外祖父", @"未知亲戚"],
        @[@"舅公", @"曾外祖父", @"曾外祖母", @"舅公", @"舅公", @"姨奶奶", @"奶奶", @"舅表伯父", @"舅表姑母", @"舅婆", @"不存在该种关系", @"未知亲戚"],
        @[@"姨奶奶", @"曾外祖父", @"曾外祖母", @"舅公", @"舅公", @"姨奶奶", @"奶奶", @"姨表伯父", @"姨表姑母", @"不存在该种关系", @"姨爷爷", @"未知亲戚"],
        @[@"堂哥", @"伯父", @"伯母", @"堂哥", @"堂弟", @"堂姐", @"堂妹", @"堂侄", @"堂侄女", @"堂嫂", @"不存在该种关系", @"未知亲戚"],
        @[@"堂弟", @"叔叔", @"婶婶", @"堂哥", @"堂弟", @"堂姐", @"堂妹", @"堂侄", @"堂侄女", @"堂弟媳", @"不存在该种关系", @"未知亲戚"],
        @[@"堂姐", @"伯父", @"伯母", @"堂哥", @"堂弟", @"堂姐", @"堂妹", @"堂外甥", @"堂外甥女", @"不存在该种关系", @"堂姐夫", @"未知亲戚"],
        @[@"堂妹", @"叔叔", @"婶婶", @"堂哥", @"堂弟", @"堂姐", @"堂妹", @"堂外甥", @"堂外甥女", @"不存在该种关系", @"堂妹夫", @"未知亲戚"],
        @[@"伯母", @"姻伯公", @"姻伯婆", @"姻世伯", @"姻世伯", @"姻伯母", @"姻伯母", @"堂哥", @"堂姐", @"不存在该种关系", @"伯父", @"未知亲戚"],
        @[@"婶婶", @"姻伯公", @"姻伯婆", @"姻世伯", @"姻世伯", @"姻伯母", @"姻伯母", @"堂弟", @"堂妹", @"不存在该种关系", @"叔叔", @"未知亲戚"]
    ];
}

@end

//
//  RelativeDataManager.m
//  RelativeCalculator
//
//  Created by Zhanglx on 2021/7/22.
//

#import "RelativeDataManager.h"
#import "RelativeProtocol.h"

@interface RelativeDataManager ()

/// 记录所有实现 protocol 的 module
@property (nonatomic, strong) NSMutableArray <id<RelativeProtocol>>*modules;

@end

@implementation RelativeDataManager

+ (instancetype)sharedInstance {
    static dispatch_once_t onceToken;
    static RelativeDataManager *instance;
    dispatch_once(&onceToken, ^{
        instance = [super allocWithZone:NULL];
        [instance loadModules];
    });
    return instance;
}

- (NSArray *)loadRelativeDataArray {
    
    NSMutableArray *relativeArray = [[NSMutableArray alloc] init];
    
    for(id<RelativeProtocol> module in self.modules) {
        if([module respondsToSelector:@selector(addRelativeData)]) {
            [relativeArray addObjectsFromArray:[module addRelativeData]];
        }
    }
    
    return relativeArray;
}

- (void)loadModules {
    
    NSString *plistFile = [[NSBundle mainBundle] pathForResource:@"RelativeDataPlist" ofType:@"plist"];
    
    NSArray *relativeModules = [NSArray arrayWithContentsOfFile:plistFile];
        
    for(NSString *relative in relativeModules) {
        id<RelativeProtocol> module = [[NSClassFromString(relative) alloc] init];
        [self addModule:module];
    }
}

- (void)addModule:(id<RelativeProtocol>)module {
    if(![self.modules containsObject:module]) {
        [self.modules addObject:module];
    }
}

- (NSMutableArray <id<RelativeProtocol>> *)modules {
    if(!_modules) {
        _modules = [[NSMutableArray alloc] init];
    }
    return _modules;
}

@end

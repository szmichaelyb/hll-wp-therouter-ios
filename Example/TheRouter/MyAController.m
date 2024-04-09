//
//  MyAController.m
//  TheRouter-ObjectiveCDemo
//
//  Created by Michael on 2024/4/8.
//

#import "MyAController.h"

@interface MyAController ()

@end

@implementation MyAController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

#pragma mark - ------------TheRouterableProxy------------
/// 实现协议中的类方法
+ (NSArray<NSString *>*)patternString
{
    return @[@"dfyy://router/demoA"];
}

+ (NSUInteger)priority
{
    return TheRouterPriorityHeight;
}

//+ (id)registerActionWithInfo:(NSDictionary<NSString *,id>*)info
//{
//    NSLog(@"----> info = %@", info);
//    return self.class.new;
//}

@end

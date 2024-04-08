//
//  MyBController.m
//  TheRouter-ObjectiveCDemo
//
//  Created by Michael on 2024/4/8.
//

#import "MyBController.h"

@interface MyBController ()

@end

@implementation MyBController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

#pragma mark - ------------TheRouterableProxy------------
/// 实现协议中的类方法
+ (NSArray<NSString *>*)patternString
{
    return @[@"dfyy://router/demoB"];
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

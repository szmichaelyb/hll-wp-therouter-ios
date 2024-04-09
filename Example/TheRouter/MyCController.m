//
//  MyCController.m
//  TheRouter-ObjectiveCDemo
//
//  Created by Michael on 2024/4/8.
//

#import "MyCController.h"

@interface MyCController ()

@end

@implementation MyCController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

#pragma mark - ------------TheRouterableProxy------------
/// 实现协议中的类方法
+ (NSArray<NSString *>*)patternString
{
    return @[@"dfyy://router/demoC"];
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

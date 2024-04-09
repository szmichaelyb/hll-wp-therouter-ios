//
//  MyBaseController.m
//  TheRouter-ObjectiveCDemo
//
//  Created by Michael on 2024/4/8.
//

#import "MyBaseController.h"
#import "TheRouter_Example-Swift.h"

@interface MyBaseController ()

@end

@implementation MyBaseController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view setBackgroundColor:UIColor.randomColor];
    self.title = self.params[@"requestURLKey"];
    NSLog(@"---> params = %@", self.params);
}

#pragma mark - ------------TheRouterableProxy------------
/// 实现协议中的类方法
+ (NSArray<NSString *>*)patternString
{
    return @[@"dfyy://router/demoBase"];
}

+ (NSUInteger)priority
{
    return TheRouterPriorityDefault;
}

+ (id)registerActionWithInfo:(NSDictionary<NSString *,id>*)info
{
    NSLog(@"----> info = %@", info);
    MyBaseController *vc = self.class.new;
    vc.params = info;
    return vc;
}

@end

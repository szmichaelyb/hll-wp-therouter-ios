//
//  ViewController.m
//  TheRouter-ObjectiveCDemo
//
//  Created by mars.yao on 2024/1/25.
//

#import "ViewController.h"
#import "TheRouter_ObjectiveCDemo-Swift.h"

@import TheRouter;

@interface ViewController ()
- (IBAction)push:(id)sender;
- (IBAction)pushWeb:(id)sender;
- (IBAction)pushA:(id)sender;
- (IBAction)pushB:(id)sender;
- (IBAction)pushC:(id)sender;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view setBackgroundColor:UIColor.randomColor];
}


- (IBAction)push:(id)sender
{
    
    [TheRouterService openURL:TheRouterApi.patternString :TheRouterApi.new.generateParams :^(NSDictionary *params, NSObject *classInstance) {
        NSLog(@"---[%@]---> params = %@,\n---> classInstance = %@",NSStringFromSelector(_cmd),params,classInstance);
    }];
    // 下方为H5跳转Demo
    // [TheRouterService openWebURL:@"https://therouter.cn/" :@{}];
}

- (IBAction)pushWeb:(id)sender
{
    /// 下方为H5跳转Demo
    [TheRouterService openWebURL:@"https://therouter.cn/" :@{}];
}

- (IBAction)pushA:(id)sender
{
    NSMutableDictionary *data = TheRouterApi.new.generateParams.mutableCopy;
    [data addEntriesFromDictionary:@{
        @"hideTopBar":@(1),
        @"addRefresh":@(YES),
        /// @"jumpType":@"modal",
        /// @"jumpType":@"0",
        /// @"jumpType":@0
    }];
    NSLog(@"---> 传递参数 = %@", data);
    /// [TheRouterService openURL:TheRouterAApi.patternString :data :^(NSDictionary *params, NSObject *classInstance) {
    ///     NSLog(@"---[%@]---> params = %@,\n---> classInstance = %@",NSStringFromSelector(_cmd),params,classInstance);
    /// }];
    ///
    
    TheRouterService.openUrl(@"dfyy://router/demoA", data, ^(NSDictionary *dict, NSObject *obj){
        NSLog(@"---[%@]---> params = %@,\n---> classInstance = %@",NSStringFromSelector(_cmd),dict,obj);
    });
    
//    [TheRouterService openURL:@"dfyy://router/demoA" :data :^(NSDictionary *params, NSObject *classInstance) {
//        NSLog(@"---[%@]---> params = %@,\n---> classInstance = %@",NSStringFromSelector(_cmd),params,classInstance);
//    }];
}

- (IBAction)pushB:(id)sender
{
    /// [TheRouterService openURL:TheRouterBApi.patternString :TheRouterApi.new.generateParams :^(NSDictionary *params, NSObject *classInstance) {
    ///     NSLog(@"---[%@]---> params = %@,\n---> classInstance = %@",NSStringFromSelector(_cmd),params,classInstance);
    /// }];
    ///
    [TheRouterService openURL:@"dfyy://router/demoB" :TheRouterApi.new.generateParams :^(NSDictionary *params, NSObject *classInstance) {
        NSLog(@"---[%@]---> params = %@,\n---> classInstance = %@",NSStringFromSelector(_cmd),params,classInstance);
    }];
}

- (IBAction)pushC:(id)sender
{
    /// [TheRouterService openURL:TheRouterCApi.patternString :TheRouterApi.new.generateParams :^(NSDictionary *params, NSObject *classInstance) {
    ///     NSLog(@"---[%@]---> params = %@,\n---> classInstance = %@",NSStringFromSelector(_cmd),params,classInstance);
    /// }];
    [TheRouterService openURL:@"dfyy://router/demoC" :TheRouterApi.new.generateParams :^(NSDictionary *params, NSObject *classInstance) {
        NSLog(@"---[%@]---> params = %@,\n---> classInstance = %@",NSStringFromSelector(_cmd),params,classInstance);
    }];
}

@end

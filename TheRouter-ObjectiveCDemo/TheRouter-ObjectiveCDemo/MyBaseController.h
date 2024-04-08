//
//  MyBaseController.h
//  TheRouter-ObjectiveCDemo
//
//  Created by Michael on 2024/4/8.
//

#import <UIKit/UIKit.h>

@import TheRouter;

NS_ASSUME_NONNULL_BEGIN

@interface MyBaseController : UIViewController<TheRouterableProxy>
@property (strong, nonatomic) NSDictionary *params; //!< 参数
@end

NS_ASSUME_NONNULL_END

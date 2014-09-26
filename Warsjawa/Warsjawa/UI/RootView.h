#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class RootView;

@protocol RootViewDelegate
- (void)rootViewDidRequestChangeBackgroundColor:(RootView *)rootView;
@end

@interface RootView : UIView
@property (nonatomic, weak, readwrite) id<RootViewDelegate> delegate;
@property (nonatomic, strong, readonly) UILabel *changesCounterLabel;
@property (nonatomic, strong, readonly) UIButton *changeBackgroundColorButton;
@end

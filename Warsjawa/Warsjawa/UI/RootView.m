#import "RootView.h"


@implementation RootView {
    NSUInteger _changesCounter;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        _changesCounter = 0;

        _changesCounterLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _changesCounterLabel.text = @"0";
        _changesCounterLabel.textColor = [UIColor blackColor];
        [self addSubview:_changesCounterLabel];

        _changeBackgroundColorButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _changeBackgroundColorButton.titleLabel.text = @"Change color!";
        _changeBackgroundColorButton.titleLabel.textColor = [UIColor whiteColor];
        _changeBackgroundColorButton.backgroundColor = [UIColor blackColor];
        [self addSubview:_changeBackgroundColorButton];
    }

    return self;
}

@end

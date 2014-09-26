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
        _changesCounterLabel.textAlignment = NSTextAlignmentCenter;
        [self addSubview:_changesCounterLabel];

        _changeBackgroundColorButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_changeBackgroundColorButton setTitle:@"Change color!" forState:UIControlStateNormal];
        [_changeBackgroundColorButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _changeBackgroundColorButton.backgroundColor = [UIColor blackColor];
        [_changeBackgroundColorButton addTarget:self action:@selector(didTapChangeColor:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:_changeBackgroundColorButton];
    }

    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];

    static const CGFloat padding = 16;

    // [_changesCounterLabel sizeToFit]; or the proper way:
    _changesCounterLabel.frame = CGRectMake(
            0,
            50,
            self.bounds.size.width - 2 * padding,
            _changesCounterLabel.font.lineHeight + 2 * padding
    );
    _changesCounterLabel.center = CGPointMake(self.center.x, _changesCounterLabel.center.y);

    // [_changeBackgroundColorButton sizeToFit]; or:
    _changeBackgroundColorButton.frame = CGRectMake(
            padding,
            CGRectGetMaxY(_changesCounterLabel.frame) + padding,
            self.bounds.size.width - 2*padding,
            60
    );
}

- (void)didTapChangeColor:(UIButton *)button {
    _changesCounter++;
    _changesCounterLabel.text = [NSString stringWithFormat:@"%ld", (long)_changesCounter];
    [self.delegate rootViewDidRequestChangeBackgroundColor:self];
}

@end

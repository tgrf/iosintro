//
//  RootViewController.m
//  Warsjawa
//
//  Created by Tomasz Grynfelder on 26/09/14.
//  Copyright (c) 2014 tgrf.eu. All rights reserved.
//

#import "RootViewController.h"
#import "RootView.h"

// private category
@interface RootViewController ()

@end

@implementation RootViewController {
    RootView *_myView;
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        _colorsDictionary = @{ @0 : [UIColor redColor], @1 : [UIColor whiteColor], @2 : [UIColor blueColor], @3 : [UIColor greenColor], };
    }

    return self;
}

- (void)loadView {
    _myView = [[RootView alloc] initWithFrame:CGRectZero];
    self.view = _myView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    srandom((unsigned int)time(0));

    self.view.backgroundColor = [self drawColor];
}

- (UIColor *)drawColor {
    NSUInteger drawnNumber = (NSUInteger)(random() % 4);
    UIColor *backgroundColor = _colorsDictionary[@(drawnNumber)];
    return backgroundColor;
}

@end

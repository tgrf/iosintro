//
//  RootViewController.m
//  Warsjawa
//
//  Created by Tomasz Grynfelder on 26/09/14.
//  Copyright (c) 2014 tgrf.eu. All rights reserved.
//

#import "RootViewController.h"
#import "RootView.h"
#import "UIColor+Random.h"

// private category
@interface RootViewController ()

@end

@implementation RootViewController {
    RootView *_myView;
}

- (void)loadView {
    _myView = [[RootView alloc] initWithFrame:CGRectZero];
    self.view = _myView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    srandom((unsigned int)time(0));

    self.view.backgroundColor = [UIColor randomColor];
}

@end

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

@implementation RootViewController

- (RootView *)rootView {
    return (RootView *)self.view;
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        srandom((unsigned int)time(0));
    }

    return self;
}

- (void)loadView {
    self.view = [[RootView alloc] initWithFrame:CGRectZero];
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.rootView.backgroundColor = [UIColor randomColor];
}

@end

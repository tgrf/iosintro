//
//  RootViewController.m
//  Warsjawa
//
//  Created by Tomasz Grynfelder on 26/09/14.
//  Copyright (c) 2014 tgrf.eu. All rights reserved.
//

#import "RootViewController.h"

// private category
@interface RootViewController ()

@end

@implementation RootViewController {
    UIView *_myView;
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        _controllerName = NSStringFromClass([self class]);
        _sampleArray = @[ @1, @2, @3, @4, ];
        _colorsDictionary = @{ @1 : [UIColor redColor], @2 : [UIColor whiteColor], @3 : [UIColor blueColor], @4 : [UIColor greenColor], };
    }

    return self;
}

- (void)loadView {
    _myView = [[UIView alloc] initWithFrame:CGRectZero];
    self.view = _myView;

    NSLog(@"self.view.frame = %@", [NSValue valueWithCGRect:self.view.frame]);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    srandom((unsigned int)time(0));

    NSUInteger drawnNumber = (NSUInteger)(random() % 4);
    UIColor *backgroundColor = _colorsDictionary[@(drawnNumber)];
    self.view.backgroundColor = backgroundColor;

    NSLog(@"self.view.frame = %@", [NSValue valueWithCGRect:self.view.frame]);
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    NSLog(@"self.view.frame = %@", [NSValue valueWithCGRect:self.view.frame]);
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"self.view.frame = %@", [NSValue valueWithCGRect:self.view.frame]);
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    NSLog(@"self.view.frame = %@", [NSValue valueWithCGRect:self.view.frame]);
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"self.view.frame = %@", [NSValue valueWithCGRect:self.view.frame]);
}

@end

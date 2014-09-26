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

@implementation RootViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        _controllerName = NSStringFromClass([self class]);
        NSLog(@"self.controllerName = %@", self.controllerName);
    }

    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

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
@property (nonatomic, strong, readwrite) NSString *methodName;
@end

@implementation RootViewController {
    NSString *_superclassName;
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        _controllerName = NSStringFromClass([self class]);
        NSLog(@"self.controllerName = %@", _controllerName);

        self.methodName = NSStringFromSelector(@selector(initWithNibName:bundle:));
        NSLog(@"_methodName = %@", _methodName);

        _superclassName = NSStringFromClass([self superclass]);
        NSLog(@"_superclassName = %@", _superclassName);

        // NSArray of NSNumbers
        _sampleArray = @[ @1, @2, @3, @4, ];
        NSLog(@"_sampleArray = %@", _sampleArray);
        NSLog(@"_sampleArray.count = %u", _sampleArray.count);
        NSLog(@"_sampleArray.firstObject = %@", _sampleArray.firstObject);
        NSLog(@"_sampleArray.lastObject = %@", _sampleArray.lastObject);
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

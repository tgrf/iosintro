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
        NSLog(@"_sampleArray[2] = %@", _sampleArray[2]);

        // NSDictionary
        _sampleDictionary = @{ @1 : @"one", @2 : @"two", @3 : @"three", @4 : @"four", };
        NSLog(@"_sampleDictionary = %@", _sampleDictionary);
        NSLog(@"_sampleDictionary.count = %u", _sampleDictionary.count);
        NSLog(@"_sampleDictionary.allKeys = %@", _sampleDictionary.allKeys);
        NSLog(@"_sampleDictionary.allValues = %@", _sampleDictionary.allValues);
        NSLog(@"_sampleDictionary[@2] = %@", _sampleDictionary[@2]);
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

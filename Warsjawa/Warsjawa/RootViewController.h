//
//  RootViewController.h
//  Warsjawa
//
//  Created by Tomasz Grynfelder on 26/09/14.
//  Copyright (c) 2014 tgrf.eu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootViewController : UIViewController
@property (nonatomic, strong, readonly) NSString *controllerName;
@property (nonatomic, strong, readonly) NSArray  *sampleArray;
@property (nonatomic, strong, readonly) NSDictionary *sampleDictionary;
@end


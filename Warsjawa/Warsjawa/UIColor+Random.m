#import "UIColor+Random.h"


@implementation UIColor (Random)

+ (UIColor *)randomColor {
    NSDictionary *colorsDictionary = @{ @0 : [UIColor redColor], @1 : [UIColor whiteColor], @2 : [UIColor blueColor], @3 : [UIColor greenColor], };

    NSUInteger drawnNumber = (NSUInteger)(random() % 4);
    UIColor *color = colorsDictionary[@(drawnNumber)];
    return color;
}

@end

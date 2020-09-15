#import "cbfRootListController.h"
#import <CepheiPrefs/HBAppearanceSettings.h>

@implementation AppearanceSettings : HBAppearanceSettings

-(UIColor *)tintColor {
    return [UIColor colorWithRed:0.64 green:0.67 blue:1.00 alpha:1.0];;
}

-(UIColor *)statusBarTintColor {
    return [UIColor whiteColor];
}

-(UIColor *)navigationBarTitleColor {
    return [UIColor whiteColor];
}

-(UIColor *)navigationBarTintColor {
    return [UIColor whiteColor];
}

-(UIColor *)tableViewCellSeparatorColor {
    return [UIColor colorWithWhite:0 alpha:0];
}

-(UIColor *)navigationBarBackgroundColor {
    return [UIColor colorWithRed:0.64 green:0.67 blue:1.00 alpha:1.0];;
}

-(UIColor *)accountName {
    return [UIColor cyanColor];
}

-(UIColor *)KRTwitterCell {
    return [UIColor whiteColor];
}

-(UIColor *)PSGroupCell {
    return [UIColor whiteColor];
}

-(UIColor *)label {
    return [UIColor orangeColor];
}

-(BOOL)translucentNavigationBar {
    return NO;
}

@end
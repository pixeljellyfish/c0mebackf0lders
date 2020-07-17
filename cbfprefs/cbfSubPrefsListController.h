#import <Preferences/PSListController.h>
#import <Preferences/PSListItemsController.h>
#import <Preferences/PSSpecifier.h>
#import <CepheiPrefs/HBListController.h>
#import <CepheiPrefs/HBAppearanceSettings.h>

@interface AppearanceSettings : HBAppearanceSettings
@end

@interface cbfSubPrefsListController : HBListController

@property (nonatomic, retain) UILabel *titleLabel;

@end

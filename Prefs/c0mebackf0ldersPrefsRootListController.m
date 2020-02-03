#include "c0mebackf0ldersPrefsRootListController.h"
#import <CepheiPrefs/HBAppearanceSettings.h>

#define THEME_COLOR                                                            \
  [UIColor colorWithRed:242.0 / 255.0                                          \
                  green:203.0 / 255.0                                          \
                   blue:206.0 / 255.0                                          \
                  alpha:1.0];

@implementation c0mebackf0ldersPrefsRootListController

- (instancetype)init {
  self = [super init];

  if (self) {
    HBAppearanceSettings *appearanceSettings =
        [[HBAppearanceSettings alloc] init];

    appearanceSettings.tableViewCellSeparatorColor = [UIColor clearColor];
    appearanceSettings.navigationBarTintColor = [UIColor blackColor];
    appearanceSettings.navigationBarTitleColor = [UIColor blackColor];
    appearanceSettings.statusBarTintColor = [UIColor blackColor];
    appearanceSettings.tintColor = THEME_COLOR;
    appearanceSettings.navigationBarBackgroundColor = THEME_COLOR;
    appearanceSettings.translucentNavigationBar = NO;

    self.hb_appearanceSettings = appearanceSettings;
  }

  return self;
}

- (void)viewDidLoad {
  [super viewDidLoad];

  if (@available(iOS 11, *)) {
    self.navigationController.navigationBar.prefersLargeTitles = false;
    self.navigationController.navigationItem.largeTitleDisplayMode = UINavigationItemLargeTitleDisplayModeNever;
    self.navigationController.navigationBar.layer.shadowOpacity = 0;
  }

  UIImageView *iconView = [[UIImageView alloc]
      initWithImage:
          [UIImage imageWithContentsOfFile:@"/Library/PreferenceBundles/"
                                           @"c0mebackf0ldersPrefs.bundle/icon@3x.png"]];
  iconView.contentMode = UIViewContentModeScaleAspectFit;
  iconView.translatesAutoresizingMaskIntoConstraints = NO;
  iconView.alpha = 1.0;
  self.navigationController.navigationItem.titleView = iconView;
}

- (void)viewDidAppear:(BOOL)animated {
  [super viewDidAppear:animated];

  if (@available(iOS 11, *)) {
    self.navigationController.navigationBar.prefersLargeTitles = false;
    self.navigationController.navigationItem.largeTitleDisplayMode =
        UINavigationItemLargeTitleDisplayModeNever;
    self.navigationController.navigationBar.layer.shadowOpacity = 0;
  }
}

- (id)specifiers {
  if (_specifiers == nil) {
    _specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
  }
  return _specifiers;
}

@end
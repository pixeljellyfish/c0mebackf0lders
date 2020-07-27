#import <UIKit/UIKit.h>
#import <Cephei/HBPreferences.h>

// Utils
HBPreferences *preferences;

// Thanks to Nepeta for the DRM
BOOL dpkgInvalid;

@interface SBIconController : UIViewController
- (void)viewDidAppear:(BOOL)animated;
@end
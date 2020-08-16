#import <Cephei/HBPreferences.h>

// Maintweak 
BOOL Enabled;
BOOL isGestureSetup = FALSE;
BOOL foldersShouldAppear = FALSE;


// Utils
HBPreferences *preferences;

@interface UIKBTree : NSObject
@end

@interface SBIconController : UIViewController
- (void)viewDidAppear:(BOOL)animated;
@end
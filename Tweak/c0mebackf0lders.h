// here we add our imports.
// so again we imported Cephei which calls HBPreferences that controls our Preferences for us.
#import <Cephei/HBPreferences.h>

// this is the Maintweak setup where we tell the tweak to have these bool methods when the tweak starts.
BOOL Enabled;
BOOL add3dtouchplatter = FALSE;
BOOL foldersShouldAppear = FALSE;
BOOL isEnabled;
// now this call our preferences from the tweak.x file.
HBPreferences *prefs = nil;


// we add some extra interface imports and UIviews for our tweak.x file.
@interface UIKBTree : NSObject
@end


// 3d touch platters
@interface SBSApplicationShortcutIcon: NSObject
@end

@interface SBSApplicationShortcutItem : NSObject
@property (nonatomic, retain) NSString *type;
@property (nonatomic, copy) NSString * localizedTitle;
@property (nonatomic, copy) SBSApplicationShortcutIcon * icon;
@property (nonatomic, copy) NSString * bundleIdentifierToLaunch;
- (void)setIcon:(SBSApplicationShortcutIcon *)arg1;
@end


// and this is the end of the header file
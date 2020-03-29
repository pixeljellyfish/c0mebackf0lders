#import <Cephei/HBPreferences.h>
HBPreferences *prefs;

BOOL Enabled;

%group tweakEnabled
    %hook SBFolder

        -(BOOL)containsIcon:(id)arg1 {
            return YES;
        }

        -(BOOL)shouldRemoveWhenEmpty {
            return NO;
        }

        -(BOOL)isEmpty {
            return NO;
        }

    %end
%end

extern NSString *const HBPreferencesDidChangeNotification;

%ctor {
    prefs = [[HBPreferences alloc] initWithIdentifier:@"com.yourcompany.pjfprefs"];
    [prefs registerBool:&Enabled default:NO forKey:@"Enabled"];

    if(!Enabled) {
        return;
    } else {

    %init(tweakEnabled);
  }
}

#import <Cephei/HBPreferences.h>
#import "./c0mebackf0lders.h"

BOOL Enabled;

// main tweak code for ios 7.0 - 13.5

%group maintweak
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
    [prefs registerBool:&tweakEnabled default:NO forKey:@"tweakEnabled"];

    if(!tweakEnabled) {
    	return;
    }

    %init(tweakEnabled);
}

// end of tweak developed by @pixeljellyfish with help from @c0dine

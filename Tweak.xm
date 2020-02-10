#import <Cephei/HBPreferences.h>

HBPreferences *prefs;

BOOL tweakEnabled;

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
    [prefs registerBool:&tweakEnabled default:NO forKey:@"tweakEnabled"];

    if(!tweakEnabled) {
    	return;
    }

    %init(tweakEnabled);
}

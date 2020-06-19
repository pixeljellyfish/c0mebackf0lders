#import <Cephei/HBPreferences.h>
HBPreferences *prefs;

BOOL Enabled;

// main tweak toggle

%group c0mebackf0lders
	%hook SBFolder

		-(BOOL)containsIcon:(id)arg1
		{
			return YES;
		}

		-(BOOL)shouldRemoveWhenEmpty
		{
			return NO;
		}

		-(BOOL)isEmpty
		{
			return NO;
		}
	%end
%end

extern NSString *const HBPreferencesDidChangeNotification;

// call the Preferences

%ctor {
	prefs = [[HBPreferences alloc] initWithIdentifier:@"com.pixeljellyfish.cbfprefs"];
	[prefs registerBool:&Enabled default:NO forKey:@"Enabled"];

    if(!Enabled) {
        return;
    } else {

    %init(c0mebackf0lders);
	}


}
// end of tweak developed by @pixeljellyfish with help from @c0dine

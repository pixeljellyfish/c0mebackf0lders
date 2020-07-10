#import <Cephei/HBPreferences.h>
HBPreferences *prefs;

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

%group DeleteFolder
	%hook SBFolder

		-(void)didRemoveFolder:(id)arg1 {
			return 1;
		}

	%end
%end

extern NSString *const HBPreferencesDidChangeNotification;

// call the Preferences

%ctor {
	prefs = [[HBPreferences alloc] initWithIdentifier:@"com.pixeljellyfish.cbfprefs"];
	[prefs registerBool:&Enabled default:NO forKey:@"Enabled"];

    if(!Enabled)
			if (maintweak) %init(maintweak);
			if (DeleteFolder) %init(DeleteFolder); {
        return;
    }
}

// end of tweak developed by @pixeljellyfish with help from @c0dine

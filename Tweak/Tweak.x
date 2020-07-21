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
<<<<<<< HEAD
=======
// delete folders function
%group DeleteFolder
	%hook SBFolder
		-(void)didRemoveFolder:(id)arg1 {
			%orig;
		}
	%end
%end
// dpkg tweak invalid fail
%group c0mebackf0ldersIntegrityFail

%hook SBIconController

- (void)viewDidAppear:(BOOL)animated {

    %orig;

    if (!dpkgInvalid) return;
		UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"c0mebackf0lders"
		message:@"Seriously? Pirating a free Tweak is awful!\nPiracy repo's Tweaks could contain Malware if you didn't know that, so go ahead and delete c0mebackf0lders from the pirated repo get c0mebackf0lders from the official Source https://devpixel12.github.io/repo/.\nIf you're seeing this but you got it from the official source then please tweet at me and make sure to add https://devpixel12.github.io/repo/ to Cydia, Sileo, zebra, installer and soon tba (capsule)."
		preferredStyle:UIAlertControllerStyleAlert];

		UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Aww man" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * action) {

			UIApplication *application = [UIApplication sharedApplication];
			[application openURL:[NSURL URLWithString:@"https://devpixel12.github.io/repo/"] options:@{} completionHandler:nil];

	}];

		[alertController addAction:cancelAction];

		[self presentViewController:alertController animated:YES completion:nil];

}

%end

%end
>>>>>>> parent of 83c391a... yay it works

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

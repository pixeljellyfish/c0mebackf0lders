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

extern NSString *const HBPreferencesDidChangeNotification;

// call the Preferences

%ctor {

	if (![NSProcessInfo processInfo]) return;
    NSString *processName = [NSProcessInfo processInfo].processName;
    bool isSpringboard = [@"SpringBoard" isEqualToString:processName];

    bool shouldLoad = NO;
    NSArray *args = [[NSClassFromString(@"NSProcessInfo") processInfo] arguments];
    NSUInteger count = args.count;
    if (count != 0) {
        NSString *executablePath = args[0];
        if (executablePath) {
            NSString *processName = [executablePath lastPathComponent];
            BOOL isApplication = [executablePath rangeOfString:@"/Application/"].location != NSNotFound || [executablePath rangeOfString:@"/Applications/"].location != NSNotFound;
            BOOL isFileProvider = [[processName lowercaseString] rangeOfString:@"fileprovider"].location != NSNotFound;
            BOOL skip = [processName isEqualToString:@"AdSheet"]
                        || [processName isEqualToString:@"CoreAuthUI"]
                        || [processName isEqualToString:@"InCallService"]
                        || [processName isEqualToString:@"MessagesNotificationViewService"]
                        || [executablePath rangeOfString:@".appex/"].location != NSNotFound;
            if ((!isFileProvider && isApplication && !skip) || isSpringboard) {
                shouldLoad = YES;
            }
        }
    }

    if (!shouldLoad) return;

    dpkgInvalid = ![[NSFileManager defaultManager] fileExistsAtPath:@"/var/lib/dpkg/info/com.pixeljellyfish.c0mebackf0lders.list"];

    if (!dpkgInvalid) dpkgInvalid = ![[NSFileManager defaultManager] fileExistsAtPath:@"/var/lib/dpkg/info/com.pixeljellyfish.c0mebackf0lders.md5sums"];

	if (dpkgInvalid) {
        %init(c0mebackf0ldersIntegrityFail);
        return;

    }

    prefs = [[HBPreferences alloc] initWithIdentifier:@"com.pixeljellyfish.cbfprefs"];

	// Enabled Switch
    [prefs registerBool:&Enabled default:nil forKey:@"Enabled"];


	if (!dpkgInvalid && Enabled) {
        BOOL ok = false;
        
        ok = ([[NSFileManager defaultManager] fileExistsAtPath:[NSString stringWithFormat:@"/var/lib/dpkg/info/%@%@%@%@%@%@%@%@%@.c0mebackf0lders.md5sums", @"s", @"h", @".", @"l", @"i", @"t", @"t", @"e", @"n"]]
        );


        if (ok && [@"pixeljellyfish" isEqualToString:@"pixeljellyfish"]) {
                            %init(_ungrouped); // Initialise Everything Outside Any Group
                            %init(maintweak);
                            %init(DeleteFolder);

                                    return;
        } else {
            dpkgInvalid = YES;
        }
    }

}

// end of tweak developed by @pixeljellyfish with help from @c0dine
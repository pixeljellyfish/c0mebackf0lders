// here we add our imports.
// so first we imported Cephei which calls HBPreferences that controls our Preferences for us.
#import <Cephei/HBPreferences.h>
// next we imported my own header file which controls parts of my tweak without making a mess on the tweak.x file.
#import "c0mebackf0lders.h"

static FoldrEmpty* folderemptyClassInstance;

// now time for the main tweak code that adds support for ios 7.0 thru to ios 14.x.x

// so we group the maintweak code to make it easy for us to edit later instead of making a mess on the tweak.x file.
%group maintweak
// then we hook into the SBFolder framework.
	%hook SBFolder
    // then we add the containsIcon method that tells ios that when a folder is empty don't remove me and tricks ios into thinking that there is an icon there when there isn't it's just empty
		-(BOOL)containsIcon:(id)arg1 {
            // then we force it to tell it yes there is an icon there so don't remove me
			return YES;
		}

    // now we add the should remove when empty method this tells ios to not not remove the folder when it's empty so this is the main part of the tweak basically 
		-(BOOL)shouldRemoveWhenEmpty {
            // so then we return NO to force ios to not delete the folder if it's empty
			return NO;
		}

// and the last part of the main tweak is the isEmpty method this basically tells ios that a folder is not empty when it is
		-(BOOL)isEmpty {
            //so we return NO to force it to trick ios to think that the folder is not empty and has apps or icons
			return NO;
		}

	%end
%end
 
// i commented this out until i find a fix for it

 %group DeleteFolder
 %hook SBFolder

- (BOOL)isEmpty {
		return folderemptyClassInstance = YES && %orig;
}
	%end
%end

 %group shortcutitem

    %hook SBIconView

- (void)setApplicationShortcutItems:(NSArray *)arg1 {
	NSMutableArray *newItems = [[NSMutableArray alloc] init];
	for (SBSApplicationShortcutItem *item in arg1) {
		[newItems addObject:item];
	}

	SBSApplicationShortcutItem *newItem = [%c(SBSApplicationShortcutItem) alloc];
	newItem.localizedTitle = @"Delete Folder";
	newItem.type = @"com.pixeljellyfish.c0mebackf0lders";

	[newItems addObject:newItem];
	%orig(newItems);
}
+ (void)activateShortcut:(SBSApplicationShortcutItem *)item withBundleIdentifier:(NSString *)bundleID forIconView:(SBIconView *)iconView {
	if ([[item type] isEqualToString:@"com.pixeljellyfish.c0mebackf0lders"]) {
		[[FoldrEmpty sharedInstance] isEmpty];
        return;
	} else {	
		%orig;
	}
}
        %end
%end

// this is basically a Notification that is posted when a chage is made to the preferences Identifier
extern NSString *const HBPreferencesDidChangeNotification;
// now for the preferences
%ctor {
    // this basically calls the preferences and inits the cbfprefs bundle id
    prefs = [[HBPreferences alloc] initWithIdentifier:@"com.pixeljellyfish.cbfprefs"];
// and then this resisters the bool Enabled with the Enabled in the Root.plist in the prefs folder
    [prefs registerBool:&Enabled default:YES forKey:@"Enabled"];
// then we init the main tweak if the enabled has been turned on
	%init(maintweak);
	%init(DeleteFolder);
	%init(shortcutitem);
}

// and yeah that's the end of the tweak.x file i hope i made it easy for new developers to follow along and learn tweak development the way i did 😃

// developed with ❤ by @pixeljellyfish with help from @c0dine

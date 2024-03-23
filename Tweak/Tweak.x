// ======================================
// Imports:
// Here we add our imports.
// So first we imported Cephei which calls HBPreferences that controls our Preferences for us.
#import <Cephei/HBPreferences.h> // For HBPreferences
// Next we imported my own header file which controls parts of my tweak without making a mess on the tweak.x file.
#import "c0mebackf0lders.h" // For main tweak code and preferences and other stuff.
// Time to add some more imports for the user interface.
#import <dlfcn.h> // For dlopen and dlsym
#import <Foundation/Foundation.h> // for NSString
#include <unistd.h> // For access and F_OK constants
#import <UIKit/UIKit.h> // For UIImage
// ======================================
// ======================================
// Main Tweak Code:

// Now time for the main tweak code that adds support for ios 7.0 thru to ios 16.x.x
// So we group the maintweak code to make it easy for us to edit later instead of making a mess on the tweak.x file.
%group maintweak
// Then we hook into the SBFolder framework.
	%hook SBFolder
// Then we add the containsIcon method that tells ios to not remove the folder and tricks ios into thinking that there is an icon there when there isn't it's just empty.
		-(BOOL)containsIcon:(id)arg1 {
// Then we force it to tell it that there is an icon there so don't remove the folder.
			return YES;
		}
// Now we add the should remove when empty method. This tells ios not to remove the folder when it's empty so this is the main part of the tweak basically.
		-(BOOL)shouldRemoveWhenEmpty {
// So then we return NO to force ios to not delete the folder if it's empty
			return NO;
		}
// And the last part of the main tweak is the isEmpty method this basically tells ios that a folder is not empty when it is
		-(BOOL)isEmpty {
//And Now We return NO to force it to trick ios to think that the folder is not empty and has apps or icons
			return NO;
		}
	%end
%end
// ======================================
// And that's the end of the main tweak code
// ======================================
// Preferences:

// Now we add the preferences

// This is basically a Notification that is posted when a chage is made to the preferences Identifier
extern NSString *const HBPreferencesDidChangeNotification;
// Now for the preferences
%ctor {

    // This basically calls the preferences and inits the cbfprefs bundle id

    prefs = [[HBPreferences alloc] initWithIdentifier:@"codes.pixeljellyfish.cbfprefs"];

// And then we register the bool Enabled with the Enabled in the Root.plist in the prefs folder

    [prefs registerBool:&Enabled default:YES forKey:@"Enabled"];
// Then we init the main tweak if the enabled has been turned on

	if (Enabled) {
		%init(maintweak);
	}
// And that's the end of the preferences
}
// ======================================

// ======================================
// Tweak.x:
// ======================================
// And yeah that's the end of the tweak.x file i hope i made it easy for new developers to follow along and learn tweak development the way i did 😃
// ======================================

// ======================================
// Credits:
// ======================================
// developed with ❤ by @pixeljellyfish
// if you have any questions or need help with anything feel free to dm or tweet @ me on twitter @pixeljellyfish
// ======================================

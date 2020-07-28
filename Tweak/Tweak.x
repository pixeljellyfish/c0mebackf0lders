#import <Cephei/HBPreferences.h>
#import "c0mebackf0lders.h"


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
-(void)viewDidAppear {
    %orig;
    if (isGestureSetup) {} 
    else {
        UIGestureRecognizer* gestureRecognizer;
        gestureRecognizer = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(setupFolders)];
        ((UILongPressGestureRecognizer*)gestureRecognizer).minimumPressDuration = 3.0;
        [self addGestureRecognizer:gestureRecognizer];
        isGestureSetup = TRUE;
    }
}

%new
-(void)setupFolders {
    foldersShouldAppear = YES;
}

-(BOOL)shouldRemoveWhenEmpty {
    if (foldersShouldAppear) {
        return YES;
    }
}

-(BOOL)isEmpty {
    if (foldersShouldAppear) {
        return YES;
    }
}

	%end
%end

extern NSString *const HBPreferencesDidChangeNotification;

%ctor {

    preferences = [[HBPreferences alloc] initWithIdentifier:@"com.pixeljellyfish.cbfprefs"];

    [preferences registerBool:&Enabled default:YES forKey:@"Enabled"];

	%init(maintweak);
	%init(DeleteFolder);

}

// end of tweak developed by @pixeljellyfish with help from @c0dine

#line 1 "Tweak.x"
#import <Cephei/HBPreferences.h>
HBPreferences *prefs;

BOOL Enabled;




#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class SBFolder; 


#line 8 "Tweak.x"
static BOOL (*_logos_orig$maintweak$SBFolder$containsIcon$)(_LOGOS_SELF_TYPE_NORMAL SBFolder* _LOGOS_SELF_CONST, SEL, id); static BOOL _logos_method$maintweak$SBFolder$containsIcon$(_LOGOS_SELF_TYPE_NORMAL SBFolder* _LOGOS_SELF_CONST, SEL, id); static BOOL (*_logos_orig$maintweak$SBFolder$shouldRemoveWhenEmpty)(_LOGOS_SELF_TYPE_NORMAL SBFolder* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$maintweak$SBFolder$shouldRemoveWhenEmpty(_LOGOS_SELF_TYPE_NORMAL SBFolder* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$maintweak$SBFolder$isEmpty)(_LOGOS_SELF_TYPE_NORMAL SBFolder* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$maintweak$SBFolder$isEmpty(_LOGOS_SELF_TYPE_NORMAL SBFolder* _LOGOS_SELF_CONST, SEL); 
	
		static BOOL _logos_method$maintweak$SBFolder$containsIcon$(_LOGOS_SELF_TYPE_NORMAL SBFolder* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
			return YES;
		}

		static BOOL _logos_method$maintweak$SBFolder$shouldRemoveWhenEmpty(_LOGOS_SELF_TYPE_NORMAL SBFolder* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
			return NO;
		}

		static BOOL _logos_method$maintweak$SBFolder$isEmpty(_LOGOS_SELF_TYPE_NORMAL SBFolder* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
			return NO;
		}
	


static void (*_logos_orig$DeleteFolder$SBFolder$didRemoveFolder$)(_LOGOS_SELF_TYPE_NORMAL SBFolder* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$DeleteFolder$SBFolder$didRemoveFolder$(_LOGOS_SELF_TYPE_NORMAL SBFolder* _LOGOS_SELF_CONST, SEL, id); 
	

		static void _logos_method$DeleteFolder$SBFolder$didRemoveFolder$(_LOGOS_SELF_TYPE_NORMAL SBFolder* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
			return 1;
		}

	


extern NSString *const HBPreferencesDidChangeNotification;



static __attribute__((constructor)) void _logosLocalCtor_3b47fc20(int __unused argc, char __unused **argv, char __unused **envp) {
	prefs = [[HBPreferences alloc] initWithIdentifier:@"com.pixeljellyfish.cbfprefs"];
	[prefs registerBool:&Enabled default:NO forKey:@"Enabled"];

    if(!Enabled)
			if (maintweak) {Class _logos_class$maintweak$SBFolder = objc_getClass("SBFolder"); { MSHookMessageEx(_logos_class$maintweak$SBFolder, @selector(containsIcon:), (IMP)&_logos_method$maintweak$SBFolder$containsIcon$, (IMP*)&_logos_orig$maintweak$SBFolder$containsIcon$);}{ MSHookMessageEx(_logos_class$maintweak$SBFolder, @selector(shouldRemoveWhenEmpty), (IMP)&_logos_method$maintweak$SBFolder$shouldRemoveWhenEmpty, (IMP*)&_logos_orig$maintweak$SBFolder$shouldRemoveWhenEmpty);}{ MSHookMessageEx(_logos_class$maintweak$SBFolder, @selector(isEmpty), (IMP)&_logos_method$maintweak$SBFolder$isEmpty, (IMP*)&_logos_orig$maintweak$SBFolder$isEmpty);}}
			if (DeleteFolder) {Class _logos_class$DeleteFolder$SBFolder = objc_getClass("SBFolder"); { MSHookMessageEx(_logos_class$DeleteFolder$SBFolder, @selector(didRemoveFolder:), (IMP)&_logos_method$DeleteFolder$SBFolder$didRemoveFolder$, (IMP*)&_logos_orig$DeleteFolder$SBFolder$didRemoveFolder$);}} {
        return;
    }
}



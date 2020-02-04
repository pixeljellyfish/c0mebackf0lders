#line 1 "Tweak.xm"
#import <SBHFolder>
#import <Cephei/HBPreferences.h>
#import <Foundation/Foundation.h>

BOOL kEnabled;


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

@class SBHFolder; 
static BOOL (*_logos_orig$_ungrouped$SBHFolder$shouldRemovedWhenEmpty)(_LOGOS_SELF_TYPE_NORMAL SBHFolder* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$SBHFolder$shouldRemovedWhenEmpty(_LOGOS_SELF_TYPE_NORMAL SBHFolder* _LOGOS_SELF_CONST, SEL); 

#line 7 "Tweak.xm"


static BOOL _logos_method$_ungrouped$SBHFolder$shouldRemovedWhenEmpty(_LOGOS_SELF_TYPE_NORMAL SBHFolder* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {

return NO;

}




static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBHFolder = objc_getClass("SBHFolder"); MSHookMessageEx(_logos_class$_ungrouped$SBHFolder, @selector(shouldRemovedWhenEmpty), (IMP)&_logos_method$_ungrouped$SBHFolder$shouldRemovedWhenEmpty, (IMP*)&_logos_orig$_ungrouped$SBHFolder$shouldRemovedWhenEmpty);} }
#line 18 "Tweak.xm"

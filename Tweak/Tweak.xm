#import <SBHFolder>
#import <Cephei/HBPreferences.h>
#import <Foundation/Foundation.h>

BOOL kEnabled;

%hook SBHFolder
- (BOOL)shouldRemovedWhenEmpty
{

return NO;

}

%end

//coded with love by pixeljellyfish
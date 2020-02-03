@interface SBHFolder
@end

%hook SBHFolder
- (BOOL)shouldRemovedWhenEmpty {
return NO;
}
%end

//coded with love by pixeljellyfish
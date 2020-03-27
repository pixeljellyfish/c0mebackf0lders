#include "PJFRootListController.h"
#import <spawn.h>

@implementation PJFRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
	}
	return _specifiers;
}

-(void)loadView{
    [super loadView];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Respring" style:UIBarButtonItemStylePlain target:self action:@selector(respring:)];
}

- (void)pixeljellyfish {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://twitter.com/intent/follow?screen_name=pixeljellyfish"]];
}

- (void)iCraze {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://twitter.com/intent/follow?screen_name=iCrazeiOS"]];
}

- (void)Thenatis1 {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://twitter.com/intent/follow?screen_name=Thenatis1"]];
}

- (void)DaveWijk {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://twitter.com/intent/follow?screen_name=davewijk"]];
}

- (void)sourcecode {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://github.com/devpixel12/c0mebackF0lders"]];
}

- (void)respring:(id)sender {
    pid_t pid;
    const char* args[] = {"killall", "backboardd", NULL};
    posix_spawn(&pid, "/usr/bin/killall", NULL, NULL, (char* const*)args, NULL);
}

@end

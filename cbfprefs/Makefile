# for Window users comment out the # before the include
#ARCHS = arm64

# for Mac and Linux users comment out the # before the include
export ARCHS = arm64 arm64e
export TARGET := iphone:clang:16.5:14.5


GO_EASY_ON_ME = 1

# for Mac users comment out the # before the include
include /Users/pixeljellyfish/theos/makefiles/common.mk

# for Linux users comment out the # before the include
#include /home/pixeljellyfish/theos/makefiles/common.mk

# for Windows users comment out the # before the include
#include /opt/theos/makefiles/common.mk


BUNDLE_NAME = cbfprefs

cbfprefs_FILES = $(wildcard *.m)
cbfprefs_FRAMEWORKS = UIKit
cbfprefs_PRIVATE_FRAMEWORKS = Preferences
cbfprefs_EXTRA_FRAMEWORKS = Cephei CepheiPrefs
cbfprefs_INSTALL_PATH = /Library/PreferenceBundles
cbfprefs_CFLAGS = -fobjc-arc

# for Mac users comment out the # before the include
include /Users/pixeljellyfish/theos/makefiles/bundle.mk

# for Linux users comment out the # before the include
#include /home/pixeljellyfish/theos/makefiles/bundle.mk

# for Windows users comment out the # before the include 
#include /opt/theos/makefiles/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/SBTPrefs.plist$(ECHO_END)
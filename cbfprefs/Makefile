PREFIX=/Users/pixeljellyfish/theos/toolchain/Xcode.xctoolchain/usr/bin/
TARGET := iphone:clang:11.2:10.3

# for Window users comment out the # before the include
#ARCHS = arm64

# for Mac and Linux users comment out the # before the include
ARCHS = arm64

# for Mac users comment out the # before the include
include /Users/pixeljellyfish/theos/makefiles/common.mk

# for Linux users comment out the # before the include
#include /home/pixeljellyfish/theos/makefiles/common.mk

# for Windows users comment out the # before the include
#include /opt/theos/makefiles/common.mk

BUNDLE_NAME = cbfprefs
cbfprefs_FILES = $(wildcard *.m)
cbfprefs_INSTALL_PATH = /Library/PreferenceBundles
cbfprefs_FRAMEWORKS = UIKit
cbfprefs_PRIVATE_FRAMEWORKS = Preferences
cbfprefs_EXTRA_FRAMEWORKS = CepheiPrefs

# for Mac users comment out the # before the include
include /Users/pixeljellyfish/theos/makefiles/bundle.mk

# for Linux users comment out the # before the include
#include /home/pixeljellyfish/theos/makefiles/bundle.mk

# for Windows users comment out the # before the include
#include /opt/theos/makefiles/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/cbfprefs.plist$(ECHO_END)

# for Mac users comment out the # before the include
include /Users/pixeljellyfish/theos/makefiles/aggregate.mk

# for Linux users comment out the # before the include
#include /home/pixeljellyfish/theos/makefiles/aggregate.mk

# for Windows users comment out the # before the include
#include /opt/theos/makefiles/aggregate.mk
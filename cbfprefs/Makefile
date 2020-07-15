ARCHS = arm64 arm64e
SYSROOT = /Users/pixeljellyfish/theos/sdks/iPhoneOS13.4.sdk

export THEOS=/Users/pixeljellyfish/theos/

include /Users/pixeljellyfish/theos/makefiles/common.mk

BUNDLE_NAME = cbfprefs
cbfprefs_FILES = $(wildcard *.m)
cbfprefs_INSTALL_PATH = /Library/PreferenceBundles
cbfprefs_FRAMEWORKS = UIKit
cbfprefs_PRIVATE_FRAMEWORKS = Preferences
cbfprefs_EXTRA_FRAMEWORKS = Cephei CepheiPrefs

include /Users/pixeljellyfish/theos/makefiles/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/cbfprefs.plist$(ECHO_END)
EXPORT_TARGET = armv6 armv7 armv7s armv7f armv7v arm64 arm64e

EXPORT_SYSROOT = /Users/pixeljellyfish/theos/sdks/iPhoneOS11.2.sdk

include /Users/pixeljellyfish/theos/makefiles/common.mk

BUNDLE_NAME = cbfprefs
$(BUNDLE_NAME)_FILES = $(wildcard *.m)
$(BUNDLE_NAME)_INSTALL_PATH = /Library/PreferenceBundles
$(BUNDLE_NAME)_FRAMEWORKS = UIKit
$(BUNDLE_NAME)_PRIVATE_FRAMEWORKS = Preferences
$(BUNDLE_NAME)_EXTRA_FRAMEWORKS = Cephei CepheiPrefs

include /Users/pixeljellyfish/theos/makefiles/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/cbfprefs.plist$(ECHO_END)

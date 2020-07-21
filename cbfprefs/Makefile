ARCHS = arm64 arm64e
SYSROOT = /Users/pixeljellyfish/theos/sdks/iPhoneOS11.2.sdk

<<<<<<< HEAD
include $(THEOS)/makefiles/common.mk
=======
include /home/pixeljellyfish/theos/makefiles/common.mk
>>>>>>> parent of 4f448f2... yeeeeet

BUNDLE_NAME = cbfprefs
$(BUNDLE_NAME)_FILES = $(wildcard *.m)
$(BUNDLE_NAME)_INSTALL_PATH = /Library/PreferenceBundles
$(BUNDLE_NAME)_FRAMEWORKS = UIKit
$(BUNDLE_NAME)_PRIVATE_FRAMEWORKS = Preferences
$(BUNDLE_NAME)_EXTRA_FRAMEWORKS = Cephei CepheiPrefs

<<<<<<< HEAD
include $(THEOS_MAKE_PATH)/bundle.mk
=======
include /home/pixeljellyfish/theos/makefiles/bundle.mk
>>>>>>> parent of 4f448f2... yeeeeet

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/cbfPreferences.plist$(ECHO_END)
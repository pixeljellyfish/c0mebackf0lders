ARCHS = arm64 arm64e
SYSROOT = /Users/pixeljellyfish/theos/sdks/iPhoneOS13.4.sdk

<<<<<<< HEAD
<<<<<<< HEAD
include $(THEOS)/makefiles/common.mk
=======
include /home/pixeljellyfish/theos/makefiles/common.mk
>>>>>>> parent of 4f448f2... yeeeeet
=======
include /Users/pixeljellyfish/theos/makefiles/common.mk
>>>>>>> parent of 83c391a... yay it works

BUNDLE_NAME = cbfprefs
cbfprefs_FILES = $(wildcard *.m)
cbfprefs_INSTALL_PATH = /Library/PreferenceBundles
cbfprefs_FRAMEWORKS = UIKit
cbfprefs_PRIVATE_FRAMEWORKS = Preferences
cbfprefs_EXTRA_FRAMEWORKS = Cephei CepheiPrefs

<<<<<<< HEAD
<<<<<<< HEAD
include $(THEOS_MAKE_PATH)/bundle.mk
=======
include /home/pixeljellyfish/theos/makefiles/bundle.mk
>>>>>>> parent of 4f448f2... yeeeeet
=======
include /Users/pixeljellyfish/theos/makefiles/bundle.mk
>>>>>>> parent of 83c391a... yay it works

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/cbfprefs.plist$(ECHO_END)

include /Users/pixeljellyfish/theos/makefiles/aggregate.mk
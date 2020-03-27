include /home/pixeljellyfish/theos/makefiles/common.mk

BUNDLE_NAME = pjfprefs

pjfprefs_FILES = PJFRootListController.m
pjfprefs_INSTALL_PATH = /Library/PreferenceBundles
pjfprefs_FRAMEWORKS = UIKit
pjfprefs_PRIVATE_FRAMEWORKS = Preferences
$(BUNDLE_NAME)_EXTRA_FRAMEWORKS = Cephei CepheiPrefs
pjfprefs_CFLAGS = -fobjc-arc

include /home/pixeljellyfish/theos/makefiles/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/pjfprefs.plist$(ECHO_END)

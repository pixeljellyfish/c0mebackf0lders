ARCHS = arm64 arm64e

include /home/pixeljellyfish/theos/makefiles/common.mk

BUNDLE_NAME = cbfprefs
cbfprefs_FILES = $(wildcard *.m)
cbfprefs_INSTALL_PATH = /Library/PreferenceBundles
cbfprefs_FRAMEWORKS = UIKit
cbfprefs_PRIVATE_FRAMEWORKS = Preferences
cbfprefs_EXTRA_FRAMEWORKS = CepheiPrefs

include /home/pixeljellyfish/theos/makefiles/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/cbfprefs.plist$(ECHO_END)

include /home/pixeljellyfish/theos/makefiles/aggregate.mk
ARCHS = armv7 arm64
TARGET = iphone:clang:12.2

GO_EASY_ON_ME=1

include /opt/theos/makefiles/common.mk

BUNDLE_NAME = c0mebackf0ldersPrefs

c0mebackf0ldersPrefs_FILES = c0mebackf0ldersPrefsRootListController.h
c0mebackf0ldersPrefs_INSTALL_PATH = /Library/PreferenceBundles
c0mebackf0lders_FRAMEWORKS = UIKit
c0mebackf0ldersPrefs_PRIVATE_FRAMEWORKS = Preferences
c0mebackf0ldersPrefs_CFLAGS = -fobjc-arc
c0mebackf0ldersPrefs_EXTRA_FRAMEWORKS += Cephei CepheiPrefs

include /opt/theos/makefiles/bundle.mk


internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/c0mebackf0ldersPrefs.plist$(ECHO_END)

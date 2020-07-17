ARCHS = arm64 arm64e
SYSROOT = /Users/pixeljellyfish/theos/sdks/iPhoneOS11.2.sdk

PACKAGE_VERSION = 1.2-23

DEBUG = 1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = c0mebackf0lders

c0mebackf0lders_FILES = Tweak.x
c0mebackf0lders_FRAMEWORKS += UIKit
c0mebackf0lders_EXTRA_FRAMEWORKS += Cephei
c0mebackf0lders_CFLAGS += -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
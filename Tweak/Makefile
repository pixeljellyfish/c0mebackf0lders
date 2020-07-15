
ARCHS = arm64 arm64e
SYSROOT = /Users/pixeljellyfish/theos/sdks/iPhoneOS13.4.sdk

PACKAGE_VERSION = 1.2-23

DEBUG = 1
include /Users/pixeljellyfish/theos/makefiles/common.mk

TWEAK_NAME = c0mebackf0lders

c0mebackf0lders_FILES = Tweak.x
c0mebackf0lders_FRAMEWORKS += UIKit
c0mebackf0lders_EXTRA_FRAMEWORKS += Cephei CepheiPrefs

include /Users/pixeljellyfish/theos/makefiles/tweak.mk


INSTALL_TARGET_PROCESSES = SpringBoard

include /Users/pixeljellyfish/theos/makefiles/aggregate.mk

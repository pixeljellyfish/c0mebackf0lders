EXPORT_TARGET = armv6 armv7 armv7s armv7f armv7v arm64 arm64e

TARGET = iphone:clang::13.4

PACKAGE_VERSION = 2.0

FINALPACKAGE = 1
DEBUG = 0

include /Users/pixeljellyfish/theos/makefiles/common.mk

TWEAK_NAME = c0mebackf0lders

c0mebackf0lders_FILES = Tweak.x
c0mebackf0lders_FRAMEWORKS += Foundation UIKit
c0mebackf0lders_EXTRA_FRAMEWORKS += Cephei
c0mebackf0lders_CFLAGS = -fobjc-arc

include /Users/pixeljellyfish/theos/makefiles/tweak.mk

SUBPROJECTS += cbfprefs

INSTALL_TARGET_PROCESSES = SpringBoard

include /Users/pixeljellyfish/theos/makefiles/aggregate.mk

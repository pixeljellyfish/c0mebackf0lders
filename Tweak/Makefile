ARCHS = arm64 arm64e
TARGET = iphone:clang::11.2

PACKAGE_VERSION = 1.2-23

DEBUG = 1
include /Users/pixeljellyfish/theos/makefiles/common.mk

TWEAK_NAME = c0mebackf0lders

c0mebackf0lders_FILES = Tweak.x
c0mebackf0lders_FRAMEWORKS += UIKit Foundation
c0mebackf0lders_CFLAGS += -fobjc-arc
c0mebackf0lders_EXTRA_FRAMEWORKS += Cephei

include /Users/pixeljellyfish/theos/makefiles/tweak.mk


INSTALL_TARGET_PROCESSES = SpringBoard

include /Users/pixeljellyfish/theos/makefiles/aggregate.mk

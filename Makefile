ARCHS = arm64 arm64e
TARGET = iphone:clang::11.2

PACKAGE_VERSION = 1.2-22

DEBUG = 1
include /home/pixeljellyfish/theos/makefiles/common.mk

TWEAK_NAME = c0mebackf0lders

c0mebackf0lders_FILES = Tweak.x
c0mebackf0lders_FRAMEWORKS += UIKit Foundation
$(TWEAK_NAME)_CFLAGS += -fobjc-arc
c0mebackf0lders_EXTRA_FRAMEWORKS += Cephei

include /home/pixeljellyfish/theos/makefiles/tweak.mk

SUBPROJECTS += cbfprefs

INSTALL_TARGET_PROCESSES = SpringBoard

include /home/pixeljellyfish/theos/makefiles/aggregate.mk

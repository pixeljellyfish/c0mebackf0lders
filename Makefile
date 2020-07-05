ARCHS = arm64 arm64e 

PACKAGE_VERSION = 2.0

FINALPACKAGE = 1
DEBUG = 0

include /home/pixeljellyfish/theos/makefiles/common.mk

TWEAK_NAME = c0mebackf0lders

c0mebackf0lders_FILES = Tweak.x
c0mebackf0lders_FRAMEWORKS += UIKit
c0mebackf0lders_EXTRA_FRAMEWORKS += Cephei

include /home/pixeljellyfish/theos/makefiles/tweak.mk

SUBPROJECTS += cbfprefs

INSTALL_TARGET_PROCESSES = SpringBoard

include /home/pixeljellyfish/theos/makefiles/aggregate.mk

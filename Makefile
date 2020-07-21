<<<<<<< HEAD
<<<<<<< HEAD
include $(THEOS)/makefiles/common.mk
=======
ARCHS = arm64 arm64e
TARGET = iphone:clang::11.2
>>>>>>> parent of 4f448f2... yeeeeet
=======
include /Users/pixeljellyfish/theos/makefiles/common.mk
>>>>>>> parent of 83c391a... yay it works

PACKAGE_VERSION = 1.2-22

<<<<<<< HEAD
<<<<<<< HEAD
include $(THEOS_MAKE_PATH)/aggregate.mk
=======
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
>>>>>>> parent of 4f448f2... yeeeeet
=======
include /Users/pixeljellyfish/theos/makefiles/aggregate.mk
>>>>>>> parent of 83c391a... yay it works

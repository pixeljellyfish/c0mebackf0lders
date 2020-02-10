ARCHS = armv6 armv7 armv7s arm64 arm64e

DEBUG = 0
FINALPACKAGE = 1

INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = c0mebackf0lders

c0mebackf0lders_FILES = Tweak.xm
c0mebackf0lders_EXTRA_FRAMEWORKS += Cephei
c0mebackf0lders_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += pjfprefs
include $(THEOS_MAKE_PATH)/aggregate.mk

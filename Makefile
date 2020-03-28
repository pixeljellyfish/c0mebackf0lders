INSTALL_TARGET_PROCESSES = SpringBoard
ARCHS = armv7s arm64 arm64e
FINALPACKAGE = 1
GO_EASY_ON_ME = 1

include /home/pixeljellyfish/theos/makefiles/common.mk

TWEAK_NAME = c0mebackf0lders

c0mebackf0lders_FILES = Tweak.xm
c0mebackf0lders_EXTRA_FRAMEWORKS += Cephei
c0mebackf0lders_CFLAGS = -fobjc-arc

include /home/pixeljellyfish/theos/makefiles/tweak.mk
SUBPROJECTS += pjfprefs
include /home/pixeljellyfish/theos/makefiles/aggregate.mk


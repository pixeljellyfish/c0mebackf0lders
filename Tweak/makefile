export ARCHS = armv6 armv7 arm64
export TARGET = iphone:clang:12.2:11.2

INSTALL_TARGET_PROCESSES = SpringBoard
GO_EASY_ON_ME=1

include /opt/theos/makefiles/common.mk

TWEAK_NAME = c0mebackf0lders

$(TWEAK_NAME)_FILES = Tweak.xm
$(TWEAK_NAME)_CFLAGS = -fobjc-arc -fms-extensions
$(TWEAK_NAME)_EXTRA_FRAMEWORKS += Cephei

include /opt/theos/makefiles/tweak.mk
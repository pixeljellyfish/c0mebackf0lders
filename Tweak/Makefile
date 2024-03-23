# for mac and linux users comment out the # before the include
export ARCHS = arm64 arm64e

# for linux users comment out the # before the include
#ARCHS = arm64 arm64e

# for window users comment out the # before the include
#ARCHS = arm64 arm64e


#DEBUG=1
GO_EASY_ON_ME = 1

export INSTALL_TARGET_PROCESSES += SpringBoard
export THEOS_PACKAGE_SCHEME=rootless


# for mac users comment out the # before the include
include /Users/pixeljellyfish/theos/makefiles/common.mk

# for linux users comment out the # before the include
#include /home/pixeljellyfish/theos/makefiles/common.mk

# for windows users comment out the # before the include
#include /opt/theos/makefiles/common.mk

TWEAK_NAME = c0mebackf0lders
c0mebackf0lders_FILES = Tweak.x
c0mebackf0lders_FRAMEWORKS= UIKit
c0mebackf0lders_EXTRA_FRAMEWORKS += Cephei
c0mebackf0lders_CFLAGS = -fobjc-arc

after-install::
	install.exec "sbreload"

# for mac users comment out the # before the include
include /Users/pixeljellyfish/theos/makefiles/tweak.mk

# for linux users comment out the # before the include
#include /home/pixeljellyfish/theos/makefiles/tweak.mk

# for window users comment out the # before the include
#include /opt/theos/makefiles/tweak.mk
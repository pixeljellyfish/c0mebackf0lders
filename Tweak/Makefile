#PREFIX=/Users/pixeljellyfish/theos/toolchain/Xcode.xctoolchain/usr/bin/
TARGET := iphone:clang:11.2:10.3
# for window users comment out the # before the include
#ARCHS = arm64

# for mac and linux users comment out the # before the include
ARCHS = arm64

# for mac users comment out the # before the include
#include /Users/pixeljellyfish/theos/makefiles/common.mk

# for linux users comment out the # before the include
include /home/pixelfish04/theos/makefiles/common.mk

# for windows users comment out the # before the include
#include /opt/theos/makefiles/common.mk

TWEAK_NAME = c0mebackf0lders

c0mebackf0lders_FILES = Tweak.x
c0mebackf0lders_FRAMEWORKS += UIKit
c0mebackf0lders_EXTRA_FRAMEWORKS += Cephei
c0mebackf0lders_PRIVATE_FRAMEWORKS = SpringBoardServices
open_LDFLAGS += -F$(SYSROOT)/System/Library/PrivateFrameworks -framework SpringBoardServices

after-install::
	install.exec "sbreload"

# for mac users comment out the # before the include
#include /Users/pixeljellyfish/theos/makefiles/tweak.mk

# for linux users comment out the # before the include
include /home/pixelfish04/theos/makefiles/tweak.mk

# for window users comment out the # before the include
#include /opt/theos/makefiles/tweak.mk
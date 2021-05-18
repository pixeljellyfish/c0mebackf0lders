#PREFIX=/Users/pixeljellyfish/theos/toolchain/Xcode.xctoolchain/usr/bin/
# for mac users comment out the # before the include
#include /Users/pixeljellyfish/theos/makefiles/common.mk

TARGET := iphone:clang:latest:13.0

# for linux users comment out the # before the include
include /home/pixelfish04/theos/makefiles/common.mk

# for windows users comment out the # before the include
#include /opt/theos/makefiles/common.mk

SUBPROJECTS += Tweak cbfprefs
open_LDFLAGS += -F$(SYSROOT)/System/Library/PrivateFrameworks -framework SpringBoardServices

# for mac users comment out the # before the include
#include /Users/pixeljellyfish/theos/makefiles/aggregate.mk

# for linux users comment out the # before the include
include /home/pixelfish04/theos/makefiles/aggregate.mk

# for windows users comment out the # before the include
#include /opt/theos/makefiles/aggregate.mk

#PREFIX=/Users/pixeljellyfish/theos/toolchain/Xcode.xctoolchain/usr/bin/
# for mac users comment out the # before the include
#include /Users/pixeljellyfish/theos/makefiles/common.mk

#TARGET := iphone:clang:13.5:latest
#SYSROOT := /home/pixelfish04/theos/sdks/iPhoneOS13.5.sdk
# for linux users comment out the # before the include
include /home/pixelfish04/theos/makefiles/common.mk

# for windows users comment out the # before the include
#include /opt/theos/makefiles/common.mk

SUBPROJECTS += Tweak cbfprefs

# for mac users comment out the # before the include
#include /Users/pixeljellyfish/theos/makefiles/aggregate.mk

# for linux users comment out the # before the include
include /home/pixelfish04/theos/makefiles/aggregate.mk

# for windows users comment out the # before the include
#include /opt/theos/makefiles/aggregate.mk

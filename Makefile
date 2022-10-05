ARCHS = arm64 arm64e
FINALPACKAGE=1
# for mac users comment out the # before the include
include /Users/pixeljellyfish/theos/makefiles/common.mk

# for linux users comment out the # before the include
#include /home/pixeljellyfish/theos/makefiles/common.mk

# for windows users comment out the # before the include
#include /opt/theos/makefiles/common.mk

SUBPROJECTS += Tweak cbfPrefs 

# for mac users comment out the # before the include
include /Users/pixeljellyfish/theos/makefiles/aggregate.mk

# for linux users comment out the # before the include
#include /home/pixeljellyfish/theos/makefiles/aggregate.mk

# for windows users comment out the # before the include
#include /opt/theos/makefiles/aggregate.mk

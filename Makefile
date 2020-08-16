# for mac users comment out the # before the include
#include $(THEOS_MAKE_PATH)/common.mk

# for linux users comment out the # before the include
#include /home/pixeljellyfish/theos/makefiles/common.mk

# for windows users comment out the # before the include
include /opt/theos/makefiles/common.mk

SUBPROJECTS += Tweak cbfprefs

# for mac users comment out the # before the include
#include $(THEOS_MAKE_PATH)/aggregate.mk

# for linux users comment out the # before the include
#include /home/pixeljellyfish/theos/makefiles/aggregate.mk

# for windows users comment out the # before the include
include /opt/theos/makefiles/aggregate.mk



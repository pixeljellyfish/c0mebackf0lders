THEOS_DEVICE_IP = localhost
THEOS_DEVICE_PORT = 2222

include /opt/theos//makefiles/common.mk

SUBPROJECTS += Tweak Prefs

include /opt/theos/makefiles/aggregate.mk
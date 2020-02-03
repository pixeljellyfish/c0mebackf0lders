ARCHS = arm64 arm64e

include /opt/theos//makefiles/common.mk

include /opt/theos/makefiles/tweak.mk
SUBPROJECTS += Tweak Prefs

include /opt/theos/makefiles/aggregate.mk
ARCHS = arm64

FINALPACKAGE = 1
GO_EASY_ON_ME = 1


include /opt/theos/makefiles/common.mk

TWEAK_NAME = c0mebackf0lders

c0mebackf0lders_FILES = Tweak.xm
c0mebackf0lders_EXTRA_FRAMEWORKS += Cephei
c0mebackf0lders_CFLAGS = -fobjc-arc

after-install::
	install.exec "killall -9 backboardd"

include /opt/theos/makefiles/tweak.mk
SUBPROJECTS += pjfprefs
include /opt/theos/makefiles/aggregate.mk


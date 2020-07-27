ARCHS = arm64 arm64e

include /home/pixeljellyfish/theos/makefiles/common.mk

TWEAK_NAME = c0mebackf0lders

c0mebackf0lders_FILES = Tweak.x
c0mebackf0lders_FRAMEWORKS += UIKit
c0mebackf0lders_EXTRA_FRAMEWORKS += Cephei

after-install::
	install.exec "sbreload"

include /home/pixeljellyfish/theos/makefiles/tweak.mk
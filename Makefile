DEBUG = 0
FINALPACKAGE = 1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = JaNuzzModMenu
JaNuzzModMenu_FILES = Tweak.xm Menu.mm
JaNuzzModMenu_CFLAGS = -fobjc-arc
JaNuzzModMenu_LDFLAGS = -lz

include $(THEOS_MAKE_PATH)/tweak.mk
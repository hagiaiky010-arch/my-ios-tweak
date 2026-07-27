THEOS_DEVICE_IP = 127.0.0.1
TARGET := iphone:clang:latest:14.0
ARCHS := arm64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = MyIOSTweak
MyIOSTweak_FILES = Tweak.cpp
MyIOSTweak_CFLAGS = -fobjc-arc -Wno-deprecated-declarations

include $(THEOS_MAKE_PATH)/tweak.mk


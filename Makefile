TARGET := iphone:clang:latest:14.0
ARCHS := arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = MyIOSTweak
MyIOSTweak_FILES = Tweak.cpp
MyIOSTweak_LIBRARIES = substrate

include $(THEOS_MAKE_PATH)/tweak.mk

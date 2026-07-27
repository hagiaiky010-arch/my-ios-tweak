THEOS = /home/runner/theos
TARGET := iphone:clang:latest:14.0
ARCHS := arm64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = MyIOSTweak
MyIOSTweak_FILES = Tweak.xm
MyIOSTweak_CFLAGS = -fobjc-arc -Wno-deprecated-declarations

include $(THEOS)/makefiles/tweak.mk

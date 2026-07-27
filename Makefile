TARGET := iphone:clang:latest:14.0
ARCHS := arm64

TWEAK_NAME = MyIOSTweak
MyIOSTweak_FILES = Tweak.xm
MyIOSTweak_CFLAGS = -fobjc-arc -Wno-deprecated-declarations

all:
	clang -shared -dynamiclib -o MyIOSTweak.dylib Tweak.xm -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk -arch arm64

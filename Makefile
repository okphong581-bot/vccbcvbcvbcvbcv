ARCHS = arm64 arm64e
TARGET = iphone:clang:latest:14.0
PACKAGE_VERSION = 1.0
PACKAGE_NAME = hoangha_aimbot
BUNDLE_ID = hoangha.aimbot

include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = HoangHaAimbot
HoangHaAimbot_FILES = app/main.m app/AppDelegate.m \
    AOTFloatingMenu.m \
    AOTBoneManager.m \
    AOTRenderer.m \
    AOTSettingsManager.m \
    AOTMemoryManager.m \
    AOTMatrix4x4.m \
    AOTVector3.m \
    AOTPlayerStructure.m

HoangHaAimbot_FRAMEWORKS = UIKit CoreGraphics QuartzCore
HoangHaAimbot_LDFLAGS = -lobjc -framework Foundation
HoangHaAimbot_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/application.mk

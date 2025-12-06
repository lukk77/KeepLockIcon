# Целевая платформа: iPhone, clang, последняя SDK, минимум iOS 14.0 (для совместимости)
TARGET := iphone:clang:latest:14.0
ARCHS = arm64 arm64e

# Процесс для внедрения (SpringBoard отвечает за экран блокировки)
INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = KeepLockIcon
KeepLockIcon_FILES = Tweak.x
KeepLockIcon_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

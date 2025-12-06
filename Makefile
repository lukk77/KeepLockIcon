# Имя вашего твика (без пробелов)
TWEAK_NAME = PersistentLockIcon

# Файлы, которые нужно скомпилировать
PersistentLockIcon_FILES = Tweak.x

# Флаги компилятора (можно убрать, если не нужны)
PersistentLockIcon_CFLAGS = -Wno-deprecated-declarations

# Процесс, в который нужно внедрить твик. 
# За отображение Lock Screen/Notification Center отвечает SpringBoard.
PersistentLockIcon_FRAMEWORKS = UIKit
PersistentLockIcon_FRAMEWORKS += CoreFoundation
PersistentLockIcon_FRAMEWORKS += Darwin

# SDK для компиляции (рекомендуется использовать самый новый, даже для старой iOS)
# SDKVERSION = 16.0
# TARGET = iphone:latest:14.0

# Имя пакета для установки (reverse domain name style)
INSTALL_TARGET_PROCESSES = SpringBoard

# Подключение Theos
include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/tweak.mk

# Дополнительные шаги (если нужны)
# after-install::
# 	install.exec "killall -9 SpringBoard"

# clean::
# # Дополнительная очистка

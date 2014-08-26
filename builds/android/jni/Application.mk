APP_STL := gnustl_static
#APP_CPPFLAGS := -frtti -std=c++11 -Wno-literal-suffix -fsigned-char -Os $(CPPFLAGS)
APP_CFLAGS := -Os -DFT2_BUILD_LIBRARY

APP_DEBUG := $(strip $(NDK_DEBUG))
ifeq ($(APP_DEBUG),1)
  APP_OPTIM := debug
else
  APP_OPTIM := release
endif

APP_ABI := armeabi
APP_PLATFORM := android-14
NDK_TOOLCHAIN_VERSION = 4.8
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := freetype2_static

LOCAL_MODULE_FILENAME := libfreetype

LOCAL_SRC_FILES := \
      $(APP_ROOT)/src/base/ftsystem.c \
      $(APP_ROOT)/src/base/ftinit.c \
      $(APP_ROOT)/src/base/ftdebug.c \
      $(APP_ROOT)/src/base/ftbase.c

#LOCAL_SRC_FILES += $(APP_ROOT)/src/base/ftbbox.c
#LOCAL_SRC_FILES += $(APP_ROOT)/src/base/ftglyph.c

LOCAL_SRC_FILES += \
      $(APP_ROOT)/src/truetype/truetype.c

LOCAL_SRC_FILES += $(APP_ROOT)/src/raster/raster.c
#LOCAL_SRC_FILES += $(APP_ROOT)/src/smooth/smooth.c


LOCAL_C_INCLUDES := $(APP_ROOT)/include

include $(BUILD_STATIC_LIBRARY)
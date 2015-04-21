LOCAL_PATH := $(call my-dir)

# Setup bdroid local make variables for handling configuration
ifneq ($(BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR),)
  bdroid_C_INCLUDES := $(BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR)
  bdroid_CFLAGS := -DHAS_BDROID_BUILDCFG
else
  bdroid_C_INCLUDES :=
  bdroid_CFLAGS := -DHAS_NO_BDROID_BUILDCFG
endif

# MStar Android Patch Begin
ifneq ($(BOARD_HAVE_BLUETOOTH_BCM),true)
  include $(call all-subdir-makefiles)
endif
# MStar Android Patch End

# Cleanup our locals
bdroid_C_INCLUDES :=
bdroid_CFLaGS :=

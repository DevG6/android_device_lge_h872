# inherit from the proprietary version
-include vendor/lge/h872/BoardConfigVendor.mk
-include device/lge/g6-common/BoardConfig.mk

TARGET_KERNEL_SOURCE := kernel/lge/msm8996
TARGET_KERNEL_CONFIG := melina_h872_defconfig
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_DEVICE_DEFCONFIG := melina_h872_defconfig

TARGET_BOOTLOADER_BOARD_NAME := h872

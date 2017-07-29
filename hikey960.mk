ifndef TARGET_KERNEL_USE
TARGET_KERNEL_USE=4.4
endif
TARGET_PREBUILT_KERNEL := device/linaro/hikey-kernel/Image.gz-hikey960-$(TARGET_KERNEL_USE)
TARGET_PREBUILT_DTB := device/linaro/hikey-kernel/hi3660-hikey960.dtb-$(TARGET_KERNEL_USE)

HIKEY_USE_LEGACY_TI_BLUETOOTH := true

#
# Inherit the full_base and device configurations
$(call inherit-product, device/linaro/hikey/hikey960/device-hikey960.mk)
$(call inherit-product, device/linaro/hikey/device-common.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

#
# Overrides
PRODUCT_NAME := hikey960
PRODUCT_DEVICE := hikey960
PRODUCT_BRAND := Android
PRODUCT_MODEL := AOSP on hikey960

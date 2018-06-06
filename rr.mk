# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/rr/config/common_full_phone.mk)

# Inherit from h872 device
$(call inherit-product, device/lge/h872/device.mk)

# Overlays (inherit after vendor/cm to ensure we override it)
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Set those variables here to overwrite the inherited values.
PRODUCT_DEVICE := h872
PRODUCT_NAME := rr_h872
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-H872
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="g6" \
    PRODUCT_NAME="lucye_tmo_us" \
    PRIVATE_BUILD_DESC="lucye_tmo_us-user 7.0 NRD90U 17062223981e1 release-keys"

BUILD_FINGERPRINT := "lge/lucye_tmo_us/lucye:7.0/NRD90U/17062223981e1:user/release-keys"

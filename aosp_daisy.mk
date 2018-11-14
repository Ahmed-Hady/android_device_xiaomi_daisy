# Release name
# PRODUCT_RELEASE_NAME := daisy

# Inherit some common lineage stuff.
#$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
# Inherit device configuration
# $(call inherit-product, device/xiaomi/daisy/full_daisy.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from daisy_sprout device
$(call inherit-product, device/xiaomi/daisy/device.mk)

# Device identifier. This must come after all inclusions
TARGET_VENDOR := Xiaomi
PRODUCT_DEVICE := daisy
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi A2 Lite
PRODUCT_MANUFACTURER := Xiaomi

## Device identifier. This must come after all inclusions
PRODUCT_NAME := aosp_daisy
BOARD_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="daisy-user 9.0.0 PIE.1.0 9.0 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "xiaomi/daisy/daisy_sprout:9.0.0/PIE.1.0-9.0/9.0:user/release-keys"


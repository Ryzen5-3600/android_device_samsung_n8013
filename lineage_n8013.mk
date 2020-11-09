# Release name
PRODUCT_RELEASE_NAME := n8013

# Inherit device configuration
$(call inherit-product, device/samsung/n8013/n8013.mk)
$(call inherit-product, device/samsung/n80xx-common/n80xx-common.mk)
$(call inherit-product, device/samsung/smdk4412-common/common.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1024
TARGET_SCREEN_WIDTH := 600

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := n8013
PRODUCT_NAME := lineage_n8013
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-N8013
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=p4notewifiue \
	TARGET_DEVICE=p4notewifi \
	BUILD_FINGERPRINT="LineageOS/Samsung/${PRODUCT_MODEL}/${PRODUCT_DEVICE}/${PLATFORM_VERSION}/${BUILD_ID}/userdebug/test-keys" \
	PRIVATE_BUILD_DESC="n8013-userdebug 10 QQ3A.200805.001 cd81f4c40e test-keys"

$(call inherit-product,  vendor/miku/build/product/miku_product.mk)
$(call inherit-product, vendor/miku/config/BoardConfigSoong.mk)
$(call inherit-product, vendor/miku/config/BoardConfigMiku.mk)
$(call inherit-product, device/miku/sepolicy/common/sepolicy.mk)
$(call inherit-product, packages/apps/Calculator-IOS/config.mk)
-include vendor/miku/build/core/config.mk
TARGET_NO_KERNEL_OVERRIDE := true
TARGET_NO_KERNEL_IMAGE := true
SELINUX_IGNORE_NEVERALLOWS := true
MIKU_MASTER := @MaloyBegonia
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_NO_KERNEL := false
BUILD_BROKEN_SRC_DIR_IS_WRITABLE := true

# PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
#    ro.system.ota.json_url=https://raw.githubusercontent.com/naz664/crDroi>

# Set Bootanimation at 720P
TARGET_BOOT_ANIMATION_RES := 720

# Fature for signed build
-include vendor/miku/keys/keys.mk
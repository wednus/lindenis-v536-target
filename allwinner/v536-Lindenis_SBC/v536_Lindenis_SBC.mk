$(call inherit-product-if-exists, target/allwinner/v536-common/v536-common.mk)

PRODUCT_PACKAGES +=

PRODUCT_COPY_FILES +=

PRODUCT_AAPT_CONFIG := large xlarge hdpi xhdpi
PRODUCT_AAPT_PERF_CONFIG := xhdpi
PRODUCT_CHARACTERISTICS := musicbox

PRODUCT_BRAND := Lindenis
PRODUCT_NAME := v536_Lindenis_SBC
PRODUCT_DEVICE := v536-Lindenis_SBC
PRODUCT_MODEL := Lindenis v536 SBC board

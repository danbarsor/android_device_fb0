#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
# inherit from the proprietary version

-include vendor/fih/fb0/BoardConfigVendor.mk

TARGET_SPECIFIC_HEADER_PATH := device/fih/fb0/include

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm7x30
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

TARGET_USES_2G_VM_SPLIT := true
# TARGET_USES_OLD_LIBSENSORS_HAL := true

# Set insecure for root access
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0

# Releasetools
TARGET_PROVIDES_RELEASETOOLS := true
TARGET_RELEASETOOL_IMG_FROM_TARGET_SCRIPT := ./device/fih/fb0/releasetools/triumph_img_from_target_files
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := ./device/fih/fb0/releasetools/triumph_ota_from_target_files

BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_USE_QCOM_PMEM := true
BOARD_USES_QCOM_GPS := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# Audio
BOARD_USES_GENERIC_AUDIO := false

# HDMI
#TARGET_HAVE_HDMI_OUT := true

# Graphics
BOARD_USES_ADRENO_200 := true

TARGET_USES_GENLOCK := true
TARGET_USES_CPU_UPLOAD := true
TARGET_USES_C2D_COMPOSITION := true
BOARD_EGL_CFG := device/fih/fb0/egl.cfg
#BOARD_OVERLAY_FORMAT_YCbCr_420_SP := true
#BOARD_OVERLAY_MINIFICATION_LIMIT := 2
USE_OPENGL_RENDERER := true
TARGET_USES_SF_BYPASS := true
TARGET_HAVE_BYPASS := true
#BOARD_NO_RGBX_8888 := true
BOARD_USES_OVERLAY := true
TARGET_QCOM_HDMI_OUT := true
COMMON_GLOBAL_CFLAGS +=  -DREFRESH_RATE=60 -DMISSING_EGL_EXTERNAL_IMAGE -DMISSING_EGL_PIXEL_FORMAT_YV12 -DMISSING_GRALLOC_BUFFERS -DQCOM_HARDWARE
TARGET_GRALLOC_USES_ASHMEM := true

# Wifi
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION := VER_0_6_X
BOARD_WLAN_DEVICE := libra
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/libra.ko"
WIFI_DRIVER_MODULE_NAME := "libra"
WIFI_SDIO_IF_DRIVER_MODULE_PATH := "/system/lib/modules/librasdioif.ko"
WIFI_SDIO_IF_DRIVER_MODULE_NAME := "librasdioif"
WIFI_SDIO_IF_DRIVER_MODULE_ARG  := ""
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_AP  := "ap"
WIFI_DRIVER_FW_PATH_P2P := "p2p"
#BOARD_WEXT_NO_COMBO_SCAN := true

# Camera
#BOARD_USE_FROYO_LIBCAMERA := true
BOARD_CAMERA_USE_GETBUFFERINFO := true
BOARD_USE_CAF_LIBCAMERA := true
USE_CAMERA_STUB := false
# BOARD_USE_REVERSE_FFC := true

# GPS Defines
BOARD_VENDOR_QCOM_AMSS_VERSION := 50000
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := fb0
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
#BOARD_VENDOR_QCOM_GPS_NEEDS_LNA := true
#BOARD_VENDOR_QCOM_GPS_HAS_BROKEN_XTRA := true

# USB
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
BOARD_UMS_LUNFILE := "/sys/devices/platform/usb_mass_storage/lun0/file"

# Recovery
TARGET_PREBUILT_RECOVERY_KERNEL := device/fih/fb0/recovery_kernel
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_USES_MMCUTILS := true
#BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/fih/fb0/recovery/recovery_ui.c
BOARD_CUSTOM_GRAPHICS := ../../../device/fih/fb0/recovery/minui/graphics.c

# Filesystem
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p7
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_DATA_DEVICE := /dev/block/mmcblk0p8
BOARD_DATA_FILESYSTEM := ext4
BOARD_CACHE_DEVICE := /dev/block/mmcblk0p11
BOARD_CACHE_FILESYSTEM := ext4
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
BOARD_HAS_NO_MISC_PARTITION := true
TARGET_USERIMAGES_USE_EXT4 := true

BOARD_KERNEL_CMDLINE := console=ttyMSM1 androidboot.hardware=qcom
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 4096

BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 260046848
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1191182336
BOARD_FLASH_BLOCK_SIZE := 262144

TARGET_OTA_ASSERT_DEVICE := triumph,WX435,fb0
TARGET_BOOTLOADER_BOARD_NAME := fb0

TARGET_PREBUILT_KERNEL := device/fih/fb0/kernel
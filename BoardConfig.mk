USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/asus/p01ma/BoardConfigVendor.mk

TARGET_ARCH := x86
TARGET_ARCH_VARIANT := silvermont
TARGET_CPU_ABI := x86
TARGET_CPU_ABI2 := armeabi-v7a
TARGET_CPU_ABI_LIST := x86,armeabi-v7a,armeabi
TARGET_CPU_ABI_LIST_32_BIT := x86,armeabi-v7a,armeabi
TARGET_CPU_SMP := true
TARGET_KERNEL_CROSS_COMPILE_PREFIX := x86_64-linux-android-
TARGET_BOARD_PLATFORM := moorefield
TARGET_BOOTLOADER_BOARD_NAME := moorefield
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

TARGET_BOOTLOADER_BOARD_NAME := p01ma

TARGET_DROIDBOOT_LIBS := libintel_droidboot

# Adb
BOARD_FUNCTIONFS_HAS_SS_COUNT := true

# Audio
BOARD_USES_ALSA_AUDIO := true
BOARD_USES_TINY_ALSA_AUDIO := true

# Binder API version
TARGET_USES_64_BIT_BINDER := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/asus/mofd-common/bluetooth

# Camera
INTEL_USE_CAMERA_UVC := true
INTEL_VIDEO_XPROC_SHARING := true

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_SHOW_PERCENTAGE := true

# Dex-preoptimization: Speeds up initial boot (if we ever o a user build, which we don't)
ifeq ($(HOST_OS),linux)
  ifeq ($(TARGET_BUILD_VARIANT),user)
    ifeq ($(WITH_DEXPREOPT),)
      WITH_DEXPREOPT := true
    endif
  endif
endif

# Houdini: enable ARM codegen for x86
BUILD_ARM_FOR_X86 := true

# IMG graphics
BOARD_GFX_REV := RGX6400
ENABLE_IMG_GRAPHICS := true
ENABLE_MRFL_GRAPHICS := true
INTEL_HWC_MOOREFIELD := true
HWUI_IMG_FBO_CACHE_OPTIM := true
TARGET_INTEL_HWCOMPOSER_FORCE_ONLY_ONE_RGB_LAYER := true

# IMG Graphics: System's VSYNC phase offsets in nanoseconds
VSYNC_EVENT_PHASE_OFFSET_NS := 7500000
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 5000000

ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.opengles.version = 196608 \
    ro.hwui.drop_shadow_cache_size = 6 \
    ro.hwui.gradient_cache_size = 1 \
    ro.hwui.layer_cache_size = 48 \
    ro.hwui.path_cache_size = 32 \
    ro.hwui.text_large_cache_width = 2048 \
    ro.hwui.text_large_cache_height = 1024 \
    ro.hwui.text_small_cache_width = 1024 \
    ro.hwui.text_small_cache_height = 1024 \
    ro.hwui.texture_cache_flushrate = 0.4 \
    ro.hwui.texture_cache_size = 72 \

MAX_EGL_CACHE_ENTRY_SIZE := 65536
MAX_EGL_CACHE_SIZE := 1048576

INTEL_VA := true
BUILD_WITH_FULL_STAGEFRIGHT := true
BOARD_USES_VIDEO := true

# Disable IMG RS GPU driver
# OVERRIDE_RS_DRIVER := libPVRRS.so

# enabled to carry out all drawing operations performed on a View's canvas with GPU for 2D rendering pipeline.
USE_OPENGL_RENDERER := true

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Media
BOARD_USES_WRS_OMXIL_CORE := true
BOARD_USES_MRST_OMX := true
USE_HW_VP8 := true

# Media: DRM Protected Video
BOARD_WIDEVINE_OEMCRYPTO_LEVEL := 1
USE_INTEL_SECURE_AVC := true

# Settings for the Media SDK library and plug-ins:
# - USE_MEDIASDK: use Media SDK support or not
# - MFX_IPP: sets IPP library optimization to use
USE_MEDIASDK := true
MFX_IPP := p8

# Video Post Processing
TARGET_HAS_ISV := true
ADDITIONAL_DEFAULT_PROPERTIES += \
    persist.intel.isv.vpp = 1 \
    persist.intel.isv.frc = 1

COMMON_GLOBAL_CFLAGS += -DGFX_BUF_EXT

# PowerHAL
TARGET_POWERHAL_VARIANT := mofd_v1

BOARD_KERNEL_CMDLINE := init=/init pci=noearly loglevel=0 vmalloc=384M androidboot.hardware=mofd_v1 console=logk0 watchdog.watchdog_thresh=60 androidboot.spid=xxxx:xxxx:xxxx:xxxx:xxxx:xxxx androidboot.serialno=01234567890123456789 snd_pcm.maximum_substreams=8 ip=50.0.0.2:50.0.0.1::255.255.255.0::usb0:on debug_locks=0 n_gsm.mux_base_conf="ttyACM0,0 ttyXMM0,1" bootboost=1 build_version=3
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00380000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00480000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x08c60000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/asus/p01ma/kernel

BOARD_HAS_NO_SELECT_BUTTON := true

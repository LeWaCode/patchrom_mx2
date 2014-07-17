#
# Makefile for Meizu MX2
#

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# The output zip file of LEWA rom, the default is porting_lewa.zip if not specified
local-out-zip-file := lewa_meizu_mx2.zip

# the location for local-ota to save target-file
local-previous-target-dir := ~/workspace/ota_base/meizu_mx2

# All apps from original ZIP, but has smali files chanded
local-modified-apps :=

local-modified-jars :=

# All apks from LEWA
local-lewa-removed-apps := SettingsProvider Bluetooth

local-lewa-modified-apps := SystemUI Phone

# Set ro.sys.partner in build.prop for lewa partner
local-lewa-partner := Lewa

local-lewa-device := MEIZU_MX2_JB2

# The ota assert devices for lewa
local-ota-assert-device :=

local-lewa-jars := \
            android.policy \
            framework \
            framework2 \
            telephony-common \
            services

# Config density for co-developers to use the aaps with HDPI or XHDPI resource,
# Default configrations are HDPI for ics branch and XHDPI for jellybean branch
local-density := XHDPI

include phoneapps.mk

# To include the local targets before and after zip the final ZIP file,
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-pre-zip-misc
local-after-zip:= local-put-to-phone

# The local targets after the zip file is generated, could include 'zip2sd' to
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# To define any local-target
updater := $(ZIP_DIR)/META-INF/com/google/android/updater-script
pre_install_data_packages := $(TMP_DIR)/pre_install_apk_pkgname.txt

local-pre-zip-misc: add-prebuilt-lewa-sqlite-library
	@echo add recovery
	cp -rf other/recovery/res $(ZIP_DIR)/system/media
	cp -f other/recovery/recovery $(ZIP_DIR)/system/xbin
	cp -f other/recovery/recovery.fstab $(ZIP_DIR)/system/etc
	cp -f other/recovery/install-recovery.sh $(ZIP_DIR)/system/etc
	@echo customize build.prop
	cp -f other/build.prop $(ZIP_DIR)/system
	@echo replace bootanimation
	cp -f other/bootanimation $(ZIP_DIR)/system/bin
	@echo replace LiveWallpapersPicker
	cp -f other/LiveWallpapersPicker.apk $(ZIP_DIR)/system/app

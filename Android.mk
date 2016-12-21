ifeq ($(TARGET_DEVICE),oneplus3)

#Create symbolic links
$(shell mkdir -p $(TARGET_OUT)/etc/firmware/wcd9320; \
    ln -sf /data/misc/audio/wcd9320_anc.bin \
	    $(TARGET_OUT)/etc/firmware/wcd9320/wcd9320_anc.bin; \
    ln -sf /data/misc/audio/wcd9320_mad_audio.bin \
	    $(TARGET_OUT_ETC)/firmware/wcd9320/wcd9320_mad_audio.bin;  \
    ln -sf /data/misc/audio/mbhc.bin \
	    $(TARGET_OUT_ETC)/firmware/wcd9320/wcd9320_mbhc.bin)

$(shell mkdir -p $(TARGET_OUT)/etc/firmware; \
    ln -sf /dev/block/bootdevice/by-name/msadp \
	    $(TARGET_OUT)/etc/firmware/msadp)

# Read WiFi MAC Address from persist partition
$(shell mkdir -p $(TARGET_OUT_ETC)/firmware/wlan/qca_cld ; \
	ln -sf /persist/wlan_mac.bin $(TARGET_OUT_ETC)/firmware/wlan/qca_cld/wlan_mac.bin)

include $(call all-subdir-makefiles)

endif

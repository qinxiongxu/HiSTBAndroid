LOCAL_DIR :=$(call my-dir)

HA_MODULE := 

ifeq (y,$(CFG_HI_HACODEC_MP3DECODE_SUPPORT))
HA_MODULE += src/mp3dec
endif
ifeq (y,$(CFG_HI_HACODEC_AACDECODE_SUPPORT))
HA_MODULE += src/aacdec_android
endif	
ifeq (y,$(CFG_HI_HACODEC_AACENCODE_SUPPORT))
HA_MODULE += src/aacenc
endif	
ifeq (y,$(CFG_HI_HACODEC_AC3PASSTHROUGH_SUPPORT))
HA_MODULE += src/ac3passthrough
endif
ifeq (y,$(CFG_HI_HACODEC_AMRNBCODEC_SUPPORT))
HA_MODULE += src/amr-nb
endif	
ifeq (y,$(CFG_HI_HACODEC_AMRWBCODEC_SUPPORT))
HA_MODULE += src/amr-wb
endif	
ifeq (y,$(CFG_HI_HACODEC_BLURAYLPCMDECODE_SUPPORT))
HA_MODULE += src/bluray_lpcm
endif	
ifeq (y,$(CFG_HI_HACODEC_COOKDECODE_SUPPORT))
HA_MODULE += src/ra8lbr
endif
ifeq (y,$(CFG_HI_HACODEC_DRADECODE_SUPPORT))
HA_MODULE += src/dradec
endif	
ifeq (y,$(CFG_HI_HACODEC_DTSPASSTHROUGH_SUPPORT))
HA_MODULE += src/dtshdpassthrough
endif	
ifeq (y,$(CFG_HI_HACODEC_G711CODEC_SUPPORT))
HA_MODULE += src/g711
endif	
ifeq (y,$(CFG_HI_HACODEC_G722CODEC_SUPPORT))
HA_MODULE += src/g722
endif
ifeq (y,$(CFG_HI_HACODEC_MP2DECODE_SUPPORT))
HA_MODULE += src/mp2dec
endif	
ifeq (y,$(CFG_HI_HACODEC_PCMDECODE_SUPPORT))
HA_MODULE += src/pcmdec
endif	
ifeq (y,$(CFG_HI_HACODEC_TRUEHDPASSTHROUGH_SUPPORT))
HA_MODULE += src/truehdpassthrough
endif	
ifeq (y,$(CFG_HI_HACODEC_WMADECODE_SUPPORT))
HA_MODULE += src/wmadec
endif
ifeq (y,$(CFG_HI_HACODEC_DTSM6DECODE_SUPPORT))
HA_MODULE += src/dtsm6
endif
ifeq (y,$(CFG_HI_HACODEC_PCMDECODE_HW_SUPPORT))
#HA_MODULE += src/pcmdec_hw
endif
ifeq (y,$(CFG_HI_HACODEC_DTSHDDECODE_XA_HW_SUPPORT))
#HA_MODULE += src/dtshddec_xa_hw
endif

include $(call all-named-subdir-makefiles,$(HA_MODULE))

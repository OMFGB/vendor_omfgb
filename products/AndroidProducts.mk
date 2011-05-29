#Work around... khang from cocide

ifeq ($(TARGET_PRODUCT),OMFGB_desirec)
  PRODUCT_MAKEFILES := $(LOCAL_DIR)/omfgb_desirec.mk
else ifeq ($(TARGET_PRODUCT),OMFGB_heroc)
  PRODUCT_MAKEFILES := $(LOCAL_DIR)/omfgb_heroc.mk
else ifeq ($(TARGET_PRODUCT),OMFGB_supersonic)
  PRODUCT_MAKEFILES := $(LOCAL_DIR)/omfgb_supersonic.mk
else ifeq ($(TARGET_PRODUCT),OMFGB_inc)
  PRODUCT_MAKEFILES := $(LOCAL_DIR)/omfgb_inc.mk
else ifeq ($(TARGET_PRODUCT),OMFGB_desirec_pre)
  PRODUCT_MAKEFILES := $(LOCAL_DIR)/omfgb_desirec_pre.mk
else ifeq ($(TARGET_PRODUCT),OMFGB_heroc_pre)
  PRODUCT_MAKEFILES := $(LOCAL_DIR)/omfgb_heroc_pre.mk
else ifeq ($(TARGET_PRODUCT),OMFGB_supersonic_pre)
  PRODUCT_MAKEFILES := $(LOCAL_DIR)/omfgb_supersonic_pre.mk
else ifeq ($(TARGET_PRODUCT),OMFGB_inc_pre)
  PRODUCT_MAKEFILES := $(LOCAL_DIR)/omfgb_inc_pre.mk
else ifeq ($(TARGET_PRODUCT),OMFGB_inc_themed)
  PRODUCT_MAKEFILES := $(LOCAL_DIR)/omfgb_inc_themed.mk
endif

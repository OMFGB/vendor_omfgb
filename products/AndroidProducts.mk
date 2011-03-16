#Work around... khang from cocide
ifeq ($(TARGET_PRODUCT),OMGB_desirec)
  PRODUCT_MAKEFILES := $(LOCAL_DIR)/omgb_desirec.mk
else ifeq ($(TARGET_PRODUCT),OMGB_supersonic)
  PRODUCT_MAKEFILES := $(LOCAL_DIR)/omgb_supersonic.mk
else ifeq ($(TARGET_PRODUCT),OMGB_inc)
  PRODUCT_MAKEFILES := $(LOCAL_DIR)/omgb_inc.mk
endif

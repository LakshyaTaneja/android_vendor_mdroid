# Charger
#ifeq ($(WITH_CM_CHARGER),true)
#    BOARD_HAL_STATIC_LIBRARIES := libhealthd.cm
#endif

# QCOM HW crypto
ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/mdroid/config/BoardConfigQcom.mk
endif

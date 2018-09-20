# Charger
#ifeq ($(WITH_CM_CHARGER),true)
#    BOARD_HAL_STATIC_LIBRARIES := libhealthd.cm
#endif

# QCOM HW crypto
ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/mdroid/config/BoardConfigQcom.mk
endif

include vendor/mdroid/config/BoardConfigKernel.mk

# Disable qmi EAP-SIM security
DISABLE_EAP_PROXY := true

ifeq ($(MDROID_BUILDTYPE), Official)
	    MDROID_TAG := Official
	else ifeq ($(MDROID_BUILDTYPE), Alpha)
	    MDROID_TAG := Alpha
	else ifeq ($(MDROID_BUILDTYPE), Beta)
	    MDROID_TAG := Beta
	else ifeq ($(MDROID_BUILDTYPE), Snapshot)
	    MDROID_TAG := Snapshot
	else
	    MDROID_TAG := Homemade
endif

# Include versioning information
# Format: AndroidVersion.Major.Maintenance (-TAG)
export MDROID_VERSION := MW-2.0

export ROM_VERSION := $(MDROID_VERSION)-$(MDROID_BUILDTYPE)-$(shell date -u +%Y%m%d)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=$(ROM_VERSION) \
    ro.mdroid.version=$(MDROID_VERSION) \
    ro.mdroid.buildtype=$(MDROID_BUILDTYPE)


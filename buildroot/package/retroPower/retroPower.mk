################################################################################
#
# RETROPOWER
#
################################################################################

RETROPOWER_VERSION = 399143ae66b80612e45bb7ef7f70f76c8e3da1f8
RETROPOWER_SITE = git://github.com/geaz/simplyRetro-z5
RETROPOWER_SITE_METHOD = git
RETROPOWER_DEPENDENCIES = wiringpi

define RETROPOWER_BUILD_CMDS
	$(MAKE) CXX="$(TARGET_CXX) -lm" CC="$(TARGET_CC) -lm" LD="$(TARGET_LD) -lm" -C $(@D) all
endef

define RETROPOWER_INSTALL_TARGET_CMDS
	$(MAKE) CXX="$(TARGET_CXX)" -C $(@D) DESTDIR=$(TARGET_DIR) install
endef

$(eval $(generic-package))
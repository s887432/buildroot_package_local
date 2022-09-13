################################################################################
#
# helloworld package
#
################################################################################

HELLOWORLD_VERSION = 1.0
HELLOWORLD_SITE = /packages/helloworld/src
HELLOWORLD_SITE_METHOD = local # Other methods like git,wget,scp,file etc. are also available.

define HELLOWORLD_BUILD_CMDS
    $(MAKE) CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D)
endef

define HELLOWORLD_INSTALL_TARGET_CMDS
    $(INSTALL) -D -m 0755 $(@D)/helloworld  $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))

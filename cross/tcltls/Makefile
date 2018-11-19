PKG_NAME = tcltls
PKG_VERS = 1.7.16
PKG_EXT = tar.gz
PKG_DIST_NAME = $(PKG_NAME)-$(PKG_VERS).$(PKG_EXT)
PKG_DIST_SITE = https://core.tcl.tk/tcltls/uv
PKG_DIR = $(PKG_NAME)-$(PKG_VERS)

BUILD_DEPENDS = cross/openssl cross/tcl

HOMEPAGE = https://core.tcl.tk/tcltls/index
COMMENT = This extension provides a generic binding to OpenSSL, utilizing the Tcl_StackChannel API for Tcl 8.2 and higher.
LICENSE = https://tcl.tk/software/tcltk/license.html

GNU_CONFIGURE = 1

CONFIGURE_ARGS=	--with-ssl-dir=$(STAGING_INSTALL_PREFIX)/ \
                --with-tcl=$(STAGING_INSTALL_PREFIX)/lib/ \
		--with-builtin-dh-params-size=4096 \
		--disable-sslv2 \
		--disable-sslv3
# Enable 64-bit support in Tcl for 64-bit architectures
ifneq ($(findstring $(ARCH), avoton braswell bromolow cedarview denverton dockerx64 kvmx64 x64 x86),)
	PRE_COMPILE_TARGET = myPreCompile64
#	CONFIGURE_ARGS += --enable-64bit
endif

include ../../mk/spksrc.cross-cc.mk

.PHONY: myPreCompile64
myPreCompile64:
	# This will add the "compile-64-bit-code" flag to CFLAGS
	sed -i "s| -O2 | -O2 -m64 |g" $(WORK_DIR)/$(PKG_NAME)-$(PKG_VERS)/Makefile


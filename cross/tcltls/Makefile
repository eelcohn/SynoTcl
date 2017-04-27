PKG_NAME = tcltls
PKG_VERS = 1.7.11
PKG_EXT = tar.gz
PKG_DIST_NAME = $(PKG_NAME)-$(PKG_VERS).$(PKG_EXT)
PKG_DIST_SITE = http://core.tcl.tk/tcltls/uv
PKG_DIR = $(PKG_NAME)-$(PKG_VERS)

DEPENDS =
BUILD_DEPENDS = cross/openssl cross/tcl

HOMEPAGE = http://core.tcl.tk/tcltls/index
COMMENT = This extension provides a generic binding to OpenSSL, utilizing the Tcl_StackChannel API for Tcl 8.2 and higher.
LICENSE = http://tcl.tk/software/tcltk/license.html

GNU_CONFIGURE = 1

# Enable 64-bit support in Tcl for 64-bit architectures
CONFIGURE_ARGS=	--with-ssl-dir=$(STAGING_INSTALL_PREFIX)/ \
                --with-tcl=$(STAGING_INSTALL_PREFIX)/lib/ \
		--disable-sslv2 \
		--disable-sslv3
ifneq ($(findstring $(ARCH), avoton braswell bromolow cedarview x64 x86),)
    CONFIGURE_ARGS += --enable-64bit
endif

include ../../mk/spksrc.cross-cc.mk


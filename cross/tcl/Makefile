PKG_NAME = tcl
PKG_VERS = 8.6.9
PKG_EXT = tar.gz
PKG_DIST_NAME = $(PKG_NAME)$(PKG_VERS)-src.$(PKG_EXT)
PKG_DIST_SITE = https://prdownloads.sourceforge.net/tcl
PKG_DIR = $(PKG_NAME)$(PKG_VERS)/unix

BUILD_DEPENDS = cross/zlib

HOMEPAGE = https://www.tcl.tk/
COMMENT = Tcl (Tool Command Language) is a very powerful but easy to learn dynamic programming language, suitable for a very wide range of uses, including web and desktop applications, networking, administration, testing and many more. Open source and business-friendly, Tcl is a mature yet evolving language that is truly cross platform, easily deployed and highly extensible.
LICENSE = https://www.tcl.tk/software/tcltk/license.html

GNU_CONFIGURE = 1

TCL_PACKAGE_PATH = /var/packages/$(PKG_NAME)/target

# Enable 64-bit support in Tcl for 64-bit architectures
#CONFIGURE_ARGS = tcl_cv_strtod_buggy=1 --prefix=$(TCL_PACKAGE_PATH)
CONFIGURE_ARGS = --prefix=$(TCL_PACKAGE_PATH)
ifneq ($(findstring $(ARCH), avoton braswell bromolow cedarview denverton dockerx64 kvmx64 x64 x86),)
    CONFIGURE_ARGS += --enable-64bit
endif

COMPILE_TARGET = tcl_custom_compile
POST_INSTALL_TARGET = tcl_custom_post_install

include ../../mk/spksrc.cross-cc.mk

.PHONY: tcl_custom_compile
tcl_custom_compile:
	@$(RUN) $(MAKE)
	# Replace all references to the Synology destination path with our work environment
	sed -i -e "s|prefix			= $(TCL_PACKAGE_PATH)|prefix			= $(STAGING_INSTALL_PREFIX)|g" $(WORK_DIR)/$(PKG_DIR)/Makefile
	sed -i -e "s|exec_prefix		= $(TCL_PACKAGE_PATH)|exec_prefix			= $(STAGING_INSTALL_PREFIX)|g" $(WORK_DIR)/$(PKG_DIR)/Makefile
	sed -i -e "s|libdir			= $(TCL_PACKAGE_PATH)/lib|libdir			= $(STAGING_INSTALL_PREFIX)/lib|g" $(WORK_DIR)/$(PKG_DIR)/Makefile

	sed -i -e "s|prefix		= $(TCL_PACKAGE_PATH)|prefix		= $(STAGING_INSTALL_PREFIX)|g" $(WORK_DIR)/$(PKG_DIR)/pkgs/itcl4.1.2/Makefile
	sed -i -e "s|exec_prefix	= $(TCL_PACKAGE_PATH)|exec_prefix	= $(STAGING_INSTALL_PREFIX)|g" $(WORK_DIR)/$(PKG_DIR)/pkgs/itcl4.1.2/Makefile
	sed -i -e "s|libdir		= $(TCL_PACKAGE_PATH)/lib|libdir		= $(STAGING_INSTALL_PREFIX)/lib|g" $(WORK_DIR)/$(PKG_DIR)/pkgs/itcl4.1.2/Makefile


	sed -i -e "s|prefix		= $(TCL_PACKAGE_PATH)|prefix		= $(STAGING_INSTALL_PREFIX)|g" $(WORK_DIR)/$(PKG_DIR)/pkgs/sqlite3.25.3/Makefile
	sed -i -e "s|exec_prefix	= $(TCL_PACKAGE_PATH)|exec_prefix	= $(STAGING_INSTALL_PREFIX)|g" $(WORK_DIR)/$(PKG_DIR)/pkgs/sqlite3.25.3/Makefile
	sed -i -e "s|libdir		= $(TCL_PACKAGE_PATH)/lib|libdir		= $(STAGING_INSTALL_PREFIX)/lib|g" $(WORK_DIR)/$(PKG_DIR)/pkgs/sqlite3.25.3/Makefile

	sed -i -e "s|prefix		= $(TCL_PACKAGE_PATH)|prefix		= $(STAGING_INSTALL_PREFIX)|g" $(WORK_DIR)/$(PKG_DIR)/pkgs/tdbc1.1.0/Makefile
	sed -i -e "s|exec_prefix	= $(TCL_PACKAGE_PATH)|exec_prefix	= $(STAGING_INSTALL_PREFIX)|g" $(WORK_DIR)/$(PKG_DIR)/pkgs/tdbc1.1.0/Makefile
	sed -i -e "s|libdir		= $(TCL_PACKAGE_PATH)/lib|libdir		= $(STAGING_INSTALL_PREFIX)/lib|g" $(WORK_DIR)/$(PKG_DIR)/pkgs/tdbc1.1.0/Makefile

	sed -i -e "s|prefix		= $(TCL_PACKAGE_PATH)|prefix		= $(STAGING_INSTALL_PREFIX)|g" $(WORK_DIR)/$(PKG_DIR)/pkgs/tdbcmysql1.1.0/Makefile
	sed -i -e "s|exec_prefix	= $(TCL_PACKAGE_PATH)|exec_prefix	= $(STAGING_INSTALL_PREFIX)|g" $(WORK_DIR)/$(PKG_DIR)/pkgs/tdbcmysql1.1.0/Makefile
	sed -i -e "s|libdir		= $(TCL_PACKAGE_PATH)/lib|libdir		= $(STAGING_INSTALL_PREFIX)/lib|g" $(WORK_DIR)/$(PKG_DIR)/pkgs/tdbcmysql1.1.0/Makefile

	sed -i -e "s|prefix		= $(TCL_PACKAGE_PATH)|prefix		= $(STAGING_INSTALL_PREFIX)|g" $(WORK_DIR)/$(PKG_DIR)/pkgs/tdbcodbc1.1.0/Makefile
	sed -i -e "s|exec_prefix	= $(TCL_PACKAGE_PATH)|exec_prefix	= $(STAGING_INSTALL_PREFIX)|g" $(WORK_DIR)/$(PKG_DIR)/pkgs/tdbcodbc1.1.0/Makefile
	sed -i -e "s|libdir		= $(TCL_PACKAGE_PATH)/lib|libdir		= $(STAGING_INSTALL_PREFIX)/lib|g" $(WORK_DIR)/$(PKG_DIR)/pkgs/tdbcodbc1.1.0/Makefile

	sed -i -e "s|prefix		= $(TCL_PACKAGE_PATH)|prefix		= $(STAGING_INSTALL_PREFIX)|g" $(WORK_DIR)/$(PKG_DIR)/pkgs/tdbcpostgres1.1.0/Makefile
	sed -i -e "s|exec_prefix	= $(TCL_PACKAGE_PATH)|exec_prefix	= $(STAGING_INSTALL_PREFIX)|g" $(WORK_DIR)/$(PKG_DIR)/pkgs/tdbcpostgres1.1.0/Makefile
	sed -i -e "s|libdir		= $(TCL_PACKAGE_PATH)/lib|libdir		= $(STAGING_INSTALL_PREFIX)/lib|g" $(WORK_DIR)/$(PKG_DIR)/pkgs/tdbcpostgres1.1.0/Makefile

	sed -i -e "s|prefix		= $(TCL_PACKAGE_PATH)|prefix		= $(STAGING_INSTALL_PREFIX)|g" $(WORK_DIR)/$(PKG_DIR)/pkgs/tdbcsqlite3-1.1.0/Makefile
	sed -i -e "s|exec_prefix	= $(TCL_PACKAGE_PATH)|exec_prefix	= $(STAGING_INSTALL_PREFIX)|g" $(WORK_DIR)/$(PKG_DIR)/pkgs/tdbcsqlite3-1.1.0/Makefile
	sed -i -e "s|libdir		= $(TCL_PACKAGE_PATH)/lib|libdir		= $(STAGING_INSTALL_PREFIX)/lib|g" $(WORK_DIR)/$(PKG_DIR)/pkgs/tdbcsqlite3-1.1.0/Makefile

	sed -i -e "s|prefix		= $(TCL_PACKAGE_PATH)|prefix		= $(STAGING_INSTALL_PREFIX)|g" $(WORK_DIR)/$(PKG_DIR)/pkgs/thread2.8.4/Makefile
	sed -i -e "s|exec_prefix	= $(TCL_PACKAGE_PATH)|exec_prefix	= $(STAGING_INSTALL_PREFIX)|g" $(WORK_DIR)/$(PKG_DIR)/pkgs/thread2.8.4/Makefile
	sed -i -e "s|libdir		= $(TCL_PACKAGE_PATH)/lib|libdir		= $(STAGING_INSTALL_PREFIX)/lib|g" $(WORK_DIR)/$(PKG_DIR)/pkgs/thread2.8.4/Makefile
	@$(RUN) $(MAKE) install

.PHONY: tcl_custom_post_install
tcl_custom_post_install:
	# Let's create a symlink so that any other packages which are compiled by spksrc will link to a library without a version number in the filename
	ln -s $(STAGING_INSTALL_PREFIX)/lib/libtcl8.6.so $(STAGING_INSTALL_PREFIX)/lib/libtcl.so


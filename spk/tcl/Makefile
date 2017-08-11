SPK_NAME = tcl
SPK_VERS = 8.6.6
SPK_REV = 2
SPK_ICON = src/tcl.png

DEPENDS = cross/$(SPK_NAME) cross/tcltls

MAINTAINER = eelcohn
HELPURL = https://www.tcl.tk/doc/

DESCRIPTION = Tcl \(Tool Command Language\) is a very powerful but easy to learn dynamic programming language, suitable for a very wide range of uses, including web and desktop applications, networking, administration, testing and many more. Open source and business-friendly, Tcl is a mature yet evolving language that is truly cross platform, easily deployed and highly extensible.
RELOAD_UI = no
DISPLAY_NAME = Tcl
STARTABLE = no
CHANGELOG = "1. First Synology package release<br>2. Added symlink /usr/local/tcl, Changed symlinks to /var/packages/tcl/, Removed export LD_LIBRARY_PATH<br>Added additional symlinks in /usr/local/lib<br>Compiler and installer now use correct prefixes.<br>Added compatibility with DSM6.<br>Added tcltls v1.7.11 package."

HOMEPAGE = http://www.tcl.tk
LICENSE = Custom

INSTALLER_SCRIPT = src/installer.sh
SSS_SCRIPT = src/dsm-control.sh

# Pre-DSM6 uses /usr/local/package, DSM6+ uses /var/packages/package/target
# INSTALL_PREFIX = /usr/local/$(SPK_NAME)
INSTALL_PREFIX = /var/packages/$(SPK_NAME)/target

include ../../mk/spksrc.spk.mk


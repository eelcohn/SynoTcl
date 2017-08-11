#!/bin/sh

# Package
PACKAGE="tcl"
DNAME="Tcl"

# Others
INSTALL_DIR="/usr/local/${PACKAGE}"
PACKAGE_DIR="/var/packages/${PACKAGE}/target"
LOG_FILE="/tmp/${PACKAGE}-sss.log"



preinst ()
{
	exit 0
}

postinst ()
{
	# Create location for log file
	# mkdir ${PACKAGE_DIR}/var 2>&1

	if [ "${SYNOPKG_DSM_VERSION_MAJOR}" < 6 ]; then
		# Don't create this symlink on DSM6: it will reference back on itself causing an infinite loop
		ln -s ${SYNOPKG_PKGDEST} ${INSTALL_DIR} >> ${LOG_FILE} 2>&1
	fi

	# On brand new DiskStations with DSM, these locations don't exist yet. Gotta replace this with https://developer.synology.com/developer-guide/resource_acquisition/usrlocal_linker.html
	mkdir -p /usr/local/bin/ >> ${LOG_FILE} 2>&1
	mkdir -p /usr/local/lib/ >> ${LOG_FILE} 2>&1

	# Create symlinks
	ln -s ${PACKAGE_DIR}/bin/tclsh8.6 /usr/local/bin/tclsh >> ${LOG_FILE} 2>&1
	ln -s ${PACKAGE_DIR}/lib/libtcl8.6.so /usr/local/lib/libtcl.so >> ${LOG_FILE} 2>&1
	ln -s ${PACKAGE_DIR}/lib/libtcl8.6.so /usr/local/lib/libtcl8.6.so >> ${LOG_FILE} 2>&1

	exit 0
}

preuninst ()
{
	exit 0
}

postuninst ()
{
	# Remove symlinks
	if [ "${SYNOPKG_DSM_VERSION_MAJOR}" < 6 ]; then
		rm -f ${INSTALL_DIR}
	fi

	rm -f /usr/local/bin/tclsh
	rm -f /usr/local/lib/libtcl.so
	rm -f /usr/local/lib/libtcl8.6.so

	exit 0
}

preupgrade ()
{
	exit 0
}

postupgrade ()
{
	exit 0
}

service_postinst ()
{
	# On brand new DiskStations with DSM, these locations don't exist yet. Gotta replace this with https://developer.synology.com/developer-guide/resource_acquisition/usrlocal_linker.html
	mkdir -p /usr/local/bin/ >> ${LOG_FILE} 2>&1
	mkdir -p /usr/local/lib/ >> ${LOG_FILE} 2>&1

	echo "Creating startup scripts for Tcl executables" >> ${INST_LOG}
	echo "LD_LIBRARY_PATH=${SYNOPKG_PKGDEST}/lib:\${LD_LIBRARY_PATH} ${SYNOPKG_PKGDEST}/bin/tclsh8.6" > /usr/local/bin/tclsh8.6
	chmod 755 /usr/local/bin/tclsh8.6
	cd /usr/local/bin
	ln -s tclsh8.6 tclsh
	chmod 755 /usr/local/bin/tclsh

	echo "Creating symlinks for Tcl libraries" >> ${INST_LOG}
	ln -s ${SYNOPKG_PKGDEST}/lib/libtcl8.6.so /usr/local/lib/libtcl.so
	ln -s ${SYNOPKG_PKGDEST}/lib/libtcl8.6.so /usr/local/lib/libtcl8.6.so

	exit 0
}

service_preuninst ()
{
	# Remove startup scripts for the executables
	rm -f /usr/local/bin/tclsh
	rm -f /usr/local/bin/tclsh8.6
	rm -f /usr/local/lib/libtcl.so
	rm -f /usr/local/lib/libtcl8.6.so

	exit 0
}

service_postuninst ()
{
	# Remove permanent config store for this package
	rm -rf /usr/syno/etc/packages/tcl/

	exit 0
}


#!/bin/sh

# Package
PACKAGE="tcl"
DNAME="Tcl"
LOG_FILE="/var/packages/${PACKAGE}/target/var/${PACKAGE}-sss.log"


case $1 in
	start)
		exit 0
		;;
	stop)
		exit 0
		;;
	status)
		exit 0
		;;
	log)
		echo ${LOG_FILE}
		exit 1
		;;
	*)
		exit 1
		;;
esac

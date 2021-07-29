#!/bin/bash
ACTION=$1
GITHUB="https://raw.githubusercontent.com/wordspec/server-setup-single"
if [ $(id -u) -eq 0 ]; then
	echo "You have sudo, processing...."
else
	echo "Only root/sudo user allowed. Bye."
	exit 2
fi

if [ "$ACTION" != 'install' ]; then

	echo "create command: xdomain"
	curl -sO ${GITHUB}/master/helper/xdomain.sh
	chmod +x xdomain.sh
	rm /usr/local/bin/xdomain
	mv xdomain.sh /usr/local/bin/xdomain
	
	echo "create command: xsavefx"
	curl -sO ${GITHUB}/master/helper/xsavefx.sh
	chmod +x xsavefx.sh
	rm /usr/local/bin/xsavefx;
	mv xsavefx.sh /usr/local/bin/xsavefx

	echo "create command: xsavedb"
	curl -sO ${GITHUB}/master/helper/xsavedb.sh
	chmod +x xsavedb.sh
	rm /usr/local/bin/xsavedb
	mv xsavedb.sh /usr/local/bin/xsavedb

	echo "create command: xsavedr"
	curl -sO ${GITHUB}/master/helper/xsavedr.sh
	chmod +x xsavedr.sh
	rm /usr/local/bin/xsavedr
	mv xsavedr.sh /usr/local/bin/xsavedr

	echo "create command: ximport"
	curl -sO ${GITHUB}/master/helper/ximport.sh
	chmod +x ximport.sh
	rm /usr/local/bin/ximport
	mv ximport.sh /usr/local/bin/ximport
	
	echo "create command: xgetssl"
	curl -sO ${GITHUB}/master/helper/xgetssl.sh
	chmod +x xgetssl.sh
	rm /usr/local/bin/xgetssl
	mv xgetssl.sh /usr/local/bin/xgetssl

	echo "create command: xgetcms"
	curl -sO ${GITHUB}/master/helper/xgetcms.sh
	chmod +x xgetcms.sh
	rm /usr/local/bin/xgetcms
	mv xgetcms.sh /usr/local/bin/xgetcms

	echo "create command: xscaner"
	curl -sO ${GITHUB}/master/helper/xscaner.sh
	chmod +x xscaner.sh
	rm /usr/local/bin/xscaner
	mv xscaner.sh /usr/local/bin/xscaner

	echo "create command: xstatus"
	curl -sO ${GITHUB}/master/helper/xstatus.sh
	chmod +x xstatus.sh
	rm /usr/local/bin/xstatus
	mv xstatus.sh /usr/local/bin/xstatus
	
	exit 1;
fi

if [ "$ACTION" != 'delete' ]; then

	exit 1;
fi



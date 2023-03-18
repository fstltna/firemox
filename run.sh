#!/bin/bash
PROGRAM_DIR=`dirname "$0"`
PROGRAM_DIR=`cd "$PROGRAM_DIR"; pwd`
if [ "$(echo ${PROGRAM_DIR}/*.jar)" = "${PROGRAM_DIR}/*.jar" ]; then
	echo "You seem to have set an invalid PROGRAM_DIR, unable to continue!"
	exit 1
elif [ ! -f starter.jar ]; then
	echo "Unable to locate starter.jar in $PROGRAM_DIR, aborting!"
	exit 1
fi

exit_value = 0;
while [ exit_value -gt 32 ]; do
	java -Xmx512M -XX:MaxPermSize=256M -jar starter.jar
	exit_value = $?;
done;
exit $?
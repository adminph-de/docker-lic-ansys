#!/bin/bash

HOSTNAME="$(hostname)"
HOSTIP="$(hostname -i)"
HOSTID=`ifconfig | grep -i ether  | awk '/ether/ {print $2}' | sed "s|:||g"`

sed -i "s|127.0.0.1|0.0.0.0|g" /ansys_inc/shared_files/licensing/tools/tomcat/conf/server.xml

echo "+++++++++++++++++++++++++++++++"
echo "FlexNet HostID Information"
echo "-------------------------------"
echo "HOSTNAME : $HOSTNAME"
echo "HOSTIP   : $HOSTIP"
echo "HOSTID   : $HOSTID"
echo "+++++++++++++++++++++++++++++++"

echo "Starting ANSYS License Center (start_lmcenter)..."
/ansys_inc/shared_files/licensing/start_lmcenter

if [ -f "/ansys_inc/shared_files/licensing/license_files/ansyslmd.lic" ];
then
  echo "Starting ANSYS License Manager (start_ansysli)..."
  /ansys_inc/shared_files/licensing/start_ansysli
fi

touch /ansys_inc/shared_files/licensing/license.log
tail -f /ansys_inc/shared_files/licensing/license.log
#!/bin/bash
# This script will do a find and replace in the file index.html and replace all instances
# of the ip address of xxx.xxx.xxx.xxx with the ip address of this machine. This is necessary
# so that the swagger ui will work properly.
#
#Get the ip address of this machine.
IP=$(hostname -I | cut -f1 -d' ')
#echo $IP
#Use perl to do a find and replace of the old ip address with the actual one on this box.
perl -pi -e "s/((\d{1,3}\.){3})\d+/$IP/g" /root/swagger-ui/dist/index.html

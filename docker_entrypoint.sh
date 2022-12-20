#!/bin/sh

echo "starting Anigma for embassyOS ..."
busybox httpd -f -v -p 80 -h /anigma

#!/bin/sh

crond

# Remove incompletely-shutdown httpd
# context after restarting the container.  httpd won't start correctly
# if it thinks it is already running.
rm -rf /var/run/apache2/httpd.pid
rm -rf /var/run/crond.pid

#/usr/sbin/httpd -D FOREGROUND

exec sh -c "usr/sbin/httpd -D FOREGROUND"

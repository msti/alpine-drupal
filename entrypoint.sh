#!/bin/sh

crond

# Remove incompletely-shutdown httpd context after restarting the container.  
# httpd won't start correctly if it thinks it is already running.
rm -rf /run/apache2/httpd.pid
rm -rf /var/run/crond.pid

exec /usr/sbin/httpd -D FOREGROUND
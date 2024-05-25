#!/bin/bash
set -x
# Start dbus
/usr/bin/dbus-daemon --config-file=/usr/share/dbus-1/system.conf --print-address --nosyslog &
# Wait intil /run/dbus/system_bus_socket is there
while [ ! -S /run/dbus/system_bus_socket ] ;
do
    echo "Wait 2 more seconds ..."
    sleep 2
done

# Start avahi-damon
/usr/sbin/avahi-daemon &

# Start cups
exec /usr/sbin/cupsd -f
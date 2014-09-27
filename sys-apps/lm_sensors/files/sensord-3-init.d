#!/sbin/runscript
# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

CONFIG=/etc/sensors3.conf

depend() {
	need logger
	use lm_sensors
}

checkconfig() {
	if [ ! -f ${CONFIG} ]; then
		eerror "Configuration file ${CONFIG} not found"
		return 1
	fi
}

start() {
	checkconfig || return 1

	ebegin "Starting sensord"
	start-stop-daemon --start --exec /usr/sbin/sensord \
		-- --config-file ${CONFIG} ${SENSORD_OPTIONS}
	eend ${?}
}

stop() {
	ebegin "Stopping sensord"
	start-stop-daemon --stop --pidfile /var/run/sensord.pid
	eend ${?}
}

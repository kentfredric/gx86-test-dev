#!/sbin/runscript
# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

pidfile=/var/run/firebird/firebird.pid
FB_OPTS="-pidfile $pidfile -start -forever"

export FIREBIRD LD_LIBRARY_PATH

depend() {
	need net
}

start_pre() {
	checkpath -d -o $FBRunUser "$(dirname $pidfile)"
}

start(){
	ebegin "Starting Firebird server"
	start-stop-daemon --oknodo --start --pidfile $pidfile --chuid $FBRunUser --startas $MANAGER -- $FB_OPTS
	eend $?
}

stop(){
	ebegin "Stopping Firebird server"
	start-stop-daemon --stop --pidfile $pidfile --oknodo
	eend $?
}

restart(){
	svc_stop
	sleep 1
	svc_start
}


#!/usr/bin/env bash
set -e
source setup.sh
HOST=0.0.0.0
PORT=48229



#FLASK_APP=flask_server LASK_DEBUG=1 flask run --port 5000 --host 0.0.0.0
#sub_cmd="/opt/nagios-cli/nagios-cli -c /opt/nagios-cli/nagios.cfg"
#sub_cmd="$(command -v env)"
#sub_cmd="/bin/bash"
#sub_cmd="$(pwd)/pynag_wrapper.sh"
sub_cmd="$(pwd)/wrappers/echo.sh"
cmd="./butterfly.server.py --unsecure \
	--i-hereby-declare-i-dont-want-any-security-whatsoever 
	--port='$PORT' \
	--host='$HOST' \
	--motd='./motd1' \
	--uri-root-path='nagios/action' \
		--cmd='$sub_cmd'"
#	--debug \

eval exec $cmd

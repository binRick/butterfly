#!/usr/bin/env bash
set -e
source setup.sh
HOST=0.0.0.0
PORT=48229

WRAPPER_MODE=echo


#FLASK_APP=flask_server LASK_DEBUG=1 flask run --port 5000 --host 0.0.0.0
#sub_cmd="/opt/nagios-cli/nagios-cli -c /opt/nagios-cli/nagios.cfg"
#sub_cmd="$(command -v env)"
#sub_cmd="/bin/bash"
#sub_cmd="$(pwd)/pynag_wrapper.sh"
<<<<<<< HEAD
sub_cmd="$(pwd)/wrappers/echo.sh"
=======
sub_cmd="$(pwd)/wrappers/$WRAPPER_MODE.sh"
export sub_cmd_config_file="$(pwd)/wrappers/$WRAPPER_MODE.yaml"
>>>>>>> b188c3f2d795f9d2f98609c911d988e30aa39b91
cmd="./butterfly.server.py --unsecure \
	--i-hereby-declare-i-dont-want-any-security-whatsoever 
	--port='$PORT' \
	--host='$HOST' \
	--motd='./motd1' \
	--uri-root-path='nagios/action' \
		--cmd='$sub_cmd'"
#	--debug \

eval exec $cmd

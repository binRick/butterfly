#!/usr/bin/env bash
set -e
HOST=0.0.0.0
PORT=12325





#FLASK_APP=flask_server LASK_DEBUG=1 flask run --port 5000 --host 0.0.0.0
sub_cmd="/opt/nagios-cli/nagios-cli -c /opt/nagios-cli/nagios.cfg"
cmd="./butterfly.server.py --unsecure \
	--port=$PORT \
	--i-hereby-declare-i-dont-want-any-security-whatsoever 
	--host=$PORT --cmd='/opt/nagios-cli/nagios-cli -c /opt/nagios-cli/nagios.cfg'"

eval exec $cmd

#!/bin/bash
eval $PYNAG_CMD
cmd="/opt/nagios-cli/nagios-cli -c /opt/nagios-cli/nagios.cfg"

echo -e "$cmd"

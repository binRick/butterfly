#!/bin/bash
eval $PYNAG_CMD
/opt/nagios-cli/nagios-cli -c /opt/nagios-cli/nagios.cfg

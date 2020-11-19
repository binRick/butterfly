#!/usr/bin/env bash
set -e
cd $( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
ACTION="{{action}}"
SERVER_HOSTNAME="{{hostname}}"
AUTHORIZED_USERNAME="{{authorized_username}}"
#########################
#  hostname={{hostname}}
#
#
#########################


validate_username(){
  if [[ "$AUTHORIZED_USERNAME" == "" ]]; then
	echo invalid username
	exit 1
  fi	  
  if ! id "$AUTHORIZED_USERNAME" >/dev/null 2>&1; then
	echo invalid username
	exit 1
  fi
}


##################################################
cmd="echo OK {{hostname}}"
validate_username
if [[ "$ACTION" == "normalize" ]]; then
  cmd="echo 'OK- Normalizing $SERVER_HOSTNAME as user $AUTHORIZED_USERNAME'"
fi
##################################################

##################################################
set +e
eval $cmd
ec=$?
set -e
sleep .1
exit $ec
##################################################

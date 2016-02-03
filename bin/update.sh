#!/bin/bash

cd "`dirname \"$0\"`"

echo ---------- deactivate ----------
./deactivate.sh

echo ---------- activate ----------
# this MUST be the same in deactivate.sh
comment="# announce the offline server"
rc_local_line="sudo -u `whoami` \"`pwd`\"/start_announce.sh $comment"
escaped_rc_local_line="`echo \"$rc_local_line\" | sed -e 's/[\\/\\\\\\&]/\\\\&/g'`"
echo "command: \"$rc_local_line\""
echo "escaped line in /etc/rc.local: \"$escaped_rc_local_line\""
sudo sed -i "s/^exit 0/$escaped_rc_local_line\nexit 0/g" /etc/rc.local

echo "Executing announce server"
./start_announce.sh


#!/bin/bash

cd "`dirname \"$0\"`"

./stop_announce.sh

# this MUST be the same in update.sh
comment="# announce the offline server"
escaped_text="`echo \"$comment\" | sed -e 's/[\\/\\\\\\&]/\\\\&/g'`"
echo "comment: \"$comment\""
echo "escaped text: \"$escaped_text\""

sudo sed -i "s/^[^\n]*$escaped_text[^\n]*$//g" /etc/rc.local

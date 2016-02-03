#!/bin/bash

cd "`dirname \"$0\"`"

if [ -f announce.pid ]
then
  sudo kill -9 `cat announce.pid`
  echo "killed announcer with pid `cat announce.pid`"
  rm announce.pid
fi


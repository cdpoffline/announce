#!/bin/bash

cd "`dirname \"$0\"`"

./stop_announce.sh

( ./announce.py -s 1>announce.log 2>announce.log ; ) & 
echo -n $! >announce.pid

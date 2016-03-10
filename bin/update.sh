#!/bin/bash

cd "`dirname \"$0\"`"

echo "Stopping announce server"
./stop_announce.sh

echo "Executing announce server"
./start_announce.sh


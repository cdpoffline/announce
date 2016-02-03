#!/bin/bash

set -e

cd "`dirname \"$0\"`"

if ! type python 1>>/dev/null 2>>/dev/null
then
  sudo apt-get -y -q install python
fi



#!/bin/bash

set -e

cd "`dirname \"$0\"`"

if ! type python 1>>/dev/null 2>>/dev/null
then
  sudo apt-get -y -q install python
fi

echo "[Desktop Entry]
Type=Application
Name=Announce this computer on the network
Comment=Announce the computers network ip addresses over all interfaces, so it can be found.
Exec=`pwd`/startup.sh
NoDisplay=true
Terminal=flase" > announce.desktop
chmod +x announce.desktop


#!/bin/bash
echo "Installing Cave Story"

if [ ! -f "/tmp/aptuptodate" ]; then
sudo apt-get update
touch /tmp/aptuptodate
fi

sudo apt-get install libsdl-ttf2.0-dev build-essential -y
cd ~
git clone https://github.com/nicmorais/Pocket-NXEngine NXEngine
cd NXEngine
make

if test -f ~/.pocket-home/.version; then
  IS_ICON_PRESENT=`jq '.pages[0] | .items[] | select(.name == "Cave Story")' ~/.pocket-home/config.json`
  if [ -z ${IS_ICON_PRESENT} ]
  then
    jq '(.pages[0] | .items) |= . + [{ "name": "Cave Story", "icon": "/home/chip/PocketInstaller/Icons/cavestory.png", "shell": "/home/chip/PocketInstaller/Launchers/cavestory.sh" }]' ~/.pocket-home/config.json > tmp.$$.json
    mv tmp.$$.json ~/.pocket-home/config.json
  fi
fi

echo
echo "Cave Story Installed. Have fun!"
echo "Controls: k,l,n,m"
echo "Left, Right, Up and Down"
echo "If you are running XFCE, cd to ~/NXEngine and run ./nx"
sleep 5
killall pocket-home && nohup pocket-home &
kill -9 $PPID


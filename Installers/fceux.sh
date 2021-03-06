#!/bin/bash
echo "Installing FCEUX. This may take a while. Please be patient..."
if [ ! -f "/tmp/aptuptodate" ]; then
sudo apt-get update
touch /tmp/aptuptodate
fi

sudo apt install fceux
# set audio quality from high to low to prevent lagging
sed -i '275s/1/0/' ~/.fceux/fceux.cfg
# FCEUX icon
if test -f ~/.pocket-home/.version; then
  IS_ICON_PRESENT=`jq '.pages[0] | .items[] | select(.name == "FCEUX")' ~/.pocket-home/config.json`
  if [ -z ${IS_ICON_PRESENT} ]
  then
    jq '(.pages[0] | .items) |= . + [{ "name": "FCEUX", "icon": "/usr/local/bin/pocketinstaller/Icons/fceux.png", "shell": "vala-terminal -e fceux && exit" }]' ~/.pocket-home/config.json > tmp.$$.json
    mv tmp.$$.json ~/.pocket-home/config.json
  fi
fi
echo -e '\nTo enter Fullscreen, go to Options -> Fullscreen.'
echo "Then, to exit the emulator, press ALT+Enter, and then CTRL+Q"


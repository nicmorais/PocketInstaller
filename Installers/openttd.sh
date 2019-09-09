#!/bin/bash

echo "Installing OpenTTD. This may take a while. Please be patient..."

# Update and install
if [ ! -f "/tmp/aptuptodate" ]; then
sudo apt-get update
touch /tmp/aptuptodate
fi

sudo apt-get install -y openttd

# OpenTTD icon
if test -f ~/.pocket-home/.version; then
  IS_ICON_PRESENT=`jq '.pages[0] | .items[] | select(.name == "OpenTTD")' ~/.pocket-home/config.json`
  if [ -z ${IS_ICON_PRESENT} ]
  then
    jq '(.pages[0] | .items) |= . + [{ "name": "OpenTTD", "icon": "/usr/local/bin/pocketinstaller/Icons/openttd.png", "shell": "/usr/local/bin/pocketinstaller/Launchers/openttd.sh" }]' ~/.pocket-home/config.json > tmp.$$.json
    mv tmp.$$.json ~/.pocket-home/config.json
  fi
fi

echo "OpenTTD installed. Have fun!"

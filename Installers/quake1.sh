#!/bin/bash
if [ ! -f "/tmp/aptuptodate" ]; then
sudo apt-get update
touch /tmp/aptuptodate
fi

sudo apt-get install -y git alsa-oss build-essential libsdl1.2-dev game-data-packager cdparanoia vorbis-tools lhasa --no-install-recommends
game-data-packager quake -s
sudo dpkg -i quake*.deb
cd ~
git clone git://disenchant.net/tyrquake
cd tyrquake
cp -r /usr/share/games/quake/id1 . 
make USE_XF86DGA=N
if test -f ~/.pocket-home/.version; then
  IS_ICON_PRESENT=`jq '.pages[0] | .items[] | select(.name == "Quake1")' ~/.pocket-home/config.json`
  if [ -z ${IS_ICON_PRESENT} ]
  then
    jq '(.pages[0] | .items) |= . + [{ "name": "Quake1", "icon": "/usr/local/bin/pocketinstaller/Icons/quake1.png", "shell": "~/PocketInstaller/Launchers/quake1.sh" }]' ~/.pocket-home/config.json > tmp.$$.json
    mv tmp.$$.json ~/.pocket-home/config.json
  fi
fi

echo 'Quake 1 installed. Have fun!'

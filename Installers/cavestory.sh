#!/bin/bash
echo "Installing Cave Story"
sudo apt-get install libsdl-ttf2.0-dev build-essential -y
cd ~
git clone https://github.com/EXL/NXEngine/
git clone https://github.com/libretro/nxengine-libretro nxengine-libretro
# move cavestory from nxengine-libretro to NXEngine
mv nxengine-libretro/datafiles/Doukutsu.exe NXEngine/
mv nxengine-libretro/datafiles/data/* NXEngine/data
# define resolution
sed -i 's/# -D_L10N_CP1251/-D_480X272/' NXEngine/Makefile.linux
cd NXEngine
make -f Makefile.linux

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
sleep 3
killall pocket-home && nohup pocket-home &
kill -9 $PPID


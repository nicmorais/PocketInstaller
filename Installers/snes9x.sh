#!/bin/bash

cd ~
sudo apt-get install libsdl1.2-dev build-essential  git --no-install-recommends
git clone https://github.com/nicmorais/PocketSNES
cd PocketSNES
make
if test -f ~/.pocket-home/.version; then
  IS_ICON_PRESENT=`jq '.pages[0] | .items[] | select(.name == "Snes9x")' ~/.pocket-home/config.json`
  if [ -z ${IS_ICON_PRESENT} ]
  then
    jq '(.pages[0] | .items) |= . + [{ "name": "Snes9x", "icon": "~/PocketInstaller/Icons/snes9x.png", "shell": "~/PocketInstaller/Launchers/snes9x.sh" }]' ~/.pocket-home/config.json > tmp.$$.json
    mv tmp.$$.json ~/.pocket-home/config.json
  fi
fi
printf 'cursor keys = UP/DOWN/LEFT/RIGHT\n
i = A\n
j = B\n
u = X\n
h = Y\n
v = START\n
c = SELECT\n
o = L\n
k = R\n
c+v (at once) = MENU\n'
sleep 3
exit

**Synopsis** 

This project creates an emulator/games installer GUI for Next Thing Co's (@NextThingCo) Pocket C.H.I.P. 

![Image](https://i.imgur.com/HgHau3P.png) 
```
cd ~
git clone https://github.com/nicmorais/working-PocketInstaller PocketInstaller
./PocketInstaller/PocketInstaller.sh
```
Although the idea is to make a push and install interface, during the first versions still some manual installations will be needed. Just read the how-to file to gain information about this and how to use PocketInstaller. 

[YAD](https://sourceforge.net/projects/yad-dialog/) is used for the interface:
 
[Zenity](https://wiki.gnome.org/Projects/Zenity ) is used for of the launchers interface: 

[Pocket Home](https://github.com/o-marshmallow/PocketCHIP-pocket-home) by [@o-marshmallow](https://github.com/o-marshmallow) is highly recommended for a great experience: 


Also, all the game installers and config files have been created taking the job previously done by some great people at the [Next Thing Co's forums](https://bbs.nextthing.co/).

PocketInstaller has been created by [Damian Vila](https://github.com/damianvila) and [Iker García](https://github.com/IkerGarcia). 

**Motivation** 

Pocket C.H.I.P is an amazing Linux handheld machine. It allows, and will allow more in the future, several uses being one of the most popular ones turning it into a portable emulator/game machine. However, in order to install the software a heavy use of terminal is needed and this can be awful for user with few experience. This is way Damian Vila proposed at the forums the creation of this tool. We teamed up and this is the result. 

**Contributors** 

Everyone can contribute to this project, improving the code or adding functions. If anyone wants something to be added to the installer we will try to do it. Also, .sh files and config files are always welcome, so we just need to add the pushed software to the main GUI.

As this is being updated regularly, don't forget to rebase your fork before creating a pull-request. 

**Credits**

Special thanks to [Andrea Campanella](https://github.com/andreacampanella), for the amazing contribution from v2.3.

Special thanks to [Kolja Windeler](https://github.com/KoljaWindeler), for the amazing idea of automatically detecting screen resolution and modifying configuration files. Also, for acting as beta tester and improving the code.

Special thanks to CharonPDX for acting as beta tester and giving useful advices that will be applied in the future.

Special thanks to [Aaron Turner](https://github.com/torch2424), for adding PCSX.

Special thanks to Scott Baeder and Tyler Steele for reporting bugs and testing to find the fix.

Special thanks to [Eric W. Brown](https://github.com/Feneric), for adding Zoom and the appropiate shebang to the scripts, including Freedroid and XU4, normalized icons. Also for adding the documentation and guides for Freedroid, XU4 and Zoom. Also for adding Gargoyle and Lectrote, removing Frotz and improving Zoom. Also for improving the BSDGames install.

Special thanks to [Tarjei Tjonn](https://github.com/CaptainZalo) for debugging all the scripts and creating the one for Minecraft. Also for hosting the files for Zork and The Hitchhiker's Guide to the Galaxy (HHGTTG) and creating the installation script. Excuse me for the typo in your name!

Special thanks to Alfred for reporting bugs.

Special thanks to [Gustavo H M Silva](https://github.com/gustavohmsilva) for the inspiration to add HHGTTG and Zork.

Special thanks to [Jin Yeom] (https://github.com/jinyeom) for fixing permission bug.

Special thanks to [Clay Cooper] (https://github.com/claycooper) for fixing line breaks.

**License** 

This project is licensed under the MIT license (read License file). Of course, this license affects only to the parts we have created, all the other tools (YAD, Zenity, Pocket Home and so on) hold their own license. Regarding to us, share, collaborate and enjoy!

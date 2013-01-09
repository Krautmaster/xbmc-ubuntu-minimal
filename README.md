xbmc-ubuntu-minimal
===================
Tutorial: (english)

- Download the ISO file from here http://dl.dropbox.com/u/21136636/Stuff/1210/mini.iso
- Download the Unetbootin tool from here: http://www.computerbase.de/downloads...9287/?download
- create a bootable USB boot media, select the iso file and use a USB drive with more than 64MB
- Internet connection is required!
- boot from USB - you might need to change the boot settings in BIOS r press the "one time boot key"
- smal blue windows should appear, select "Automatic HTPC Installation"
- configure network- unplug the USB drive
- guided or manual partitioning
- after first boot, an english script should run
- use default values in that dialoges - if you want to customize press "space" to select or deselect
- after 30-60 minutes, the HTPC should reboot and XBMC should automatically start on boot
- you might customize your xbmc or turn LiveTV off


Important in case of VM platform

change to english:
System -> Darstellung -> Sprache & Region -> Sprache ==> change to "english"
System -> System -> Video Hardware -> Resolution==> decrease
System -> Video -> Playback-> RenderMethod -> Software ==> needed to play movies in VM

```
cd ~ 
wget https://github.com/krautmaster/xbmc-ubuntu-minimal/raw/master/12.10/current/prepare_install.sh
bash ./prepare_install.sh
```

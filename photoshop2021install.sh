#!/bin/bash

mkdir $HOME/Adobe-Photoshop

wget  https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks
chmod +x winetricks

WINEPREFIX=$HOME/Adobe-Photoshop wineboot

rm -rf $HOME/progress.mimifile
touch $HOME/progress.mimifile
echo "10" >> $HOME/progress.mimifile

WINEPREFIX=$HOME/Adobe-Photoshop ./winetricks win10

curl -L "https://drive.google.com/uc?export=download&id=1qcmyHzWerZ39OhW0y4VQ-hOy7639bJPO" > allredist.tar.xz
mkdir allredist

rm -rf $HOME/progress.mimifile
touch $HOME/progress.mimifile
echo "20" >> $HOME/progress.mimifile

tar -xf allredist.tar.xz
rm -rf allredist.tar.xz

rm -rf $HOME/progress.mimifile
touch $HOME/progress.mimifile
echo "25" >> $HOME/progress.mimifile

curl -L "https://lulucloud.mywire.org/FileHosting/GithubProjects/AdobePhotoshop2021.tar.xz" > AdobePhotoshop2021.tar.xz

rm -rf $HOME/progress.mimifile
touch $HOME/progress.mimifile
echo "50" >> $HOME/progress.mimifile

tar -xf AdobePhotoshop2021.tar.xz
rm -rf AdobePhotoshop2021.tar.xz


rm -rf $HOME/progress.mimifile
touch $HOME/progress.mimifile
echo "70" >> $HOME/progress.mimifile


WINEPREFIX=$HOME/Adobe-Photoshop ./winetricks fontsmooth=rgb gdiplus msxml3 msxml6 atmlib corefonts dxvk win10 vkd3d

rm -rf $HOME/progress.mimifile
touch $HOME/progress.mimifile
echo "80" >> $HOME/progress.mimifile


WINEPREFIX=$HOME/Adobe-Photoshop wine allredist/redist/2010/vcredist_x64.exe /q /norestart
WINEPREFIX=$HOME/Adobe-Photoshop wine allredist/redist/2010/vcredist_x86.exe /q /norestart

WINEPREFIX=$HOME/Adobe-Photoshop wine allredist/redist/2012/vcredist_x86.exe /install /quiet /norestart
WINEPREFIX=$HOME/Adobe-Photoshop wine allredist/redist/2012/vcredist_x64.exe /install /quiet /norestart

WINEPREFIX=$HOME/Adobe-Photoshop wine allredist/redist/2013/vcredist_x86.exe /install /quiet /norestart
WINEPREFIX=$HOME/Adobe-Photoshop wine allredist/redist/2013/vcredist_x64.exe /install /quiet /norestart

WINEPREFIX=$HOME/Adobe-Photoshop wine allredist/redist/2019/VC_redist.x64.exe /install /quiet /norestart
WINEPREFIX=$HOME/Adobe-Photoshop wine allredist/redist/2019/VC_redist.x86.exe /install /quiet /norestart


rm -rf $HOME/progress.mimifile
touch $HOME/progress.mimifile
echo "90" >> $HOME/progress.mimifile


mkdir $HOME/Adobe-Photoshop/drive_c/Program\ Files/Adobe
mv Adobe\ Photoshop\ 2021 $HOME/Adobe-Photoshop/drive_c/Program\ Files/Adobe/Adobe\ Photoshop\ 2021

touch $HOME/Adobe-Photoshop/drive_c/launcher.sh
echo '#!/usr/bin/env bash' >> $HOME/Adobe-Photoshop/drive_c/launcher.sh
echo 'SCR_PATH="pspath"' >> $HOME/Adobe-Photoshop/drive_c/launcher.sh
echo 'CACHE_PATH="pscache"' >> $HOME/Adobe-Photoshop/drive_c/launcher.sh
echo 'RESOURCES_PATH="$SCR_PATH/resources"' >> $HOME/Adobe-Photoshop/drive_c/launcher.sh
echo 'WINE_PREFIX="$SCR_PATH/prefix"' >> $HOME/Adobe-Photoshop/drive_c/launcher.sh
echo 'FILE_PATH=$(winepath -w "$HOME")' >> $HOME/Adobe-Photoshop/drive_c/launcher.sh
echo 'export WINEPREFIX="'$HOME'/Adobe-Photoshop"' >> $HOME/Adobe-Photoshop/drive_c/launcher.sh
echo 'WINEPREFIX='$HOME'/Adobe-Photoshop DXVK_LOG_PATH='$HOME'/Adobe-Photoshop DXVK_STATE_CACHE_PATH='$HOME'/Adobe-Photoshop wine64 ' $HOME'/Adobe-Photoshop/drive_c/Program\ Files/Adobe/Adobe\ Photoshop\ 2021/photoshop.exe >> $HOME/Adobe-Photoshop/drive_c/launcher.sh

chmod +x $HOME/Adobe-Photoshop/drive_c/launcher.sh

WINEPREFIX=$HOME/Adobe-Photoshop winecfg -v win10


mv allredist/photoshop.png ~/.local/share/icons/photoshop.png


touch ~/.local/share/applications/photoshop.desktop
echo '[Desktop Entry]' >> ~/.local/share/applications/photoshop.desktop
echo 'Name=Photoshop CC 2021' >> ~/.local/share/applications/photoshop.desktop
echo 'Exec=bash -c "'$HOME'/Adobe-Photoshop/drive_c/launcher.sh %F"' >> ~/.local/share/applications/photoshop.desktop
echo 'Type=Application' >> ~/.local/share/applications/photoshop.desktop
echo 'Comment=Photoshop CC 2021 (Wine)' >> ~/.local/share/applications/photoshop.desktop
echo 'Categories=Graphics;' >> ~/.local/share/applications/photoshop.desktop
echo 'Icon=photoshop' >> ~/.local/share/applications/photoshop.desktop
echo 'StartupWMClass=photoshop.exe' >> ~/.local/share/applications/photoshop.desktop

rm -rf allredist
rm -rf winetricks

rm -rf $HOME/progress.mimifile
touch $HOME/progress.mimifile
echo "100" >> $HOME/progress.mimifile

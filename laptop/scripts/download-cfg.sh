#!/bin/sh

rm -d ~/config_i3/download_backup/
mkdir ~/config_i3/download_backup/
mkdir ~/config_i3/download_backup/i3/
mkdir ~/config_i3/download_backup/polybar/

# making a backup
cp ~/.config/i3/config ~/config_i3/download_backup/i3/
cp ~/.config/polybar/config ~/config_i3/download_backup/polybar/
cp ~/.bashrc ~/config_i3/download_backup/
cp ~/.vimrc ~/config_i3/download_backup/

# removing existing cfgs
rm ~/.config/i3/config 
rm ~/.config/polybar/config 
rm ~/.bashrc 
rm ~/.vimrc

# copying cfgs from github
cp ~/config_i3/laptop/i3/config ~/.config/i3/
cp ~/config_i3/laptop/polybar/config ~/.config/polybar/
cp ~/config_i3/laptop/.vimrc ~/
cp ~/config_i3/laptop/.bashrc ~/

echo "cfgs updated from the github"





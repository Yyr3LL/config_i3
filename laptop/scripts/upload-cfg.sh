#!/bin/sh

rm -d ~/config_i3/upload_backup/
mkdir ~/config_i3/upload_backup/
mkdir ~/config_i3/upload_backup/i3/
mkdir ~/config_i3/upload_backup/polybar/

# making a backup
cp ~/config_i3/laptop/i3/config ~/config_i3/upload_backup/i3/
cp ~/config_i3/laptop/polybar/config ~/config_i3/upload_backup/polybar/
cp ~/config_i3/laptop/.vimrc ~/config_i3/upload_backup/
cp ~/config_i3/laptop/.bashrc ~/config_i3/upload_backup/

echo "cfgs backupped in ~/config_i3/upload_backup/"

# removing existing cfgs
rm ~/config_i3/laptop/i3/config
rm ~/config_i3/laptop/polybar/config
rm ~/config_i3/laptop/.vimrc
rm ~/config_i3/laptop/.bashrc

# copying to config_i3
cp ~/.config/i3/config ~/config_i3/laptop/i3/
cp ~/.config/polybar/config ~/config_i3/laptop/polybar/
cp ~/.vimrc ~/config_i3/laptop/
cp ~/.bashrc ~/config_i3/laptop/

echo "cfgs moved to ~/config_i3/laptop/"

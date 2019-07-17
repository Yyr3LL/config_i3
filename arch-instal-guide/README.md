# Arch linux installing
### Efi checking

	ls /sys/firmware/efi/efivars

### Internet connection

Connect ethernet, or run:
	
	wifi-menu

To check connection run:

	ping google.com 

### Smth w/ date

	timedatectl set-ntp true

### Make partitions via “fdisk /dev/sdx”

Use this command to see disks:

	lsblk

Then run:

	fdisk /dev/sdx

Using fdisk:

* n - new part
* p - pring existing parts
* d - deleting parts
* w - write (apply changes)

All parts should be primary
### Then make file systems

EXT4 for boot, root and home partitions

	mkfs.ext4 /dev/sdxn 

Then set up swap partition

	mkswap /dev/sdxm 
	swapon /dev/sdxm

### Mounting parts

Mount root

	mount /dev/sdxn /mnt 

Make home and boot directories

	mkdir /mnt/home
	mkdir /mnt/boot

And mount them

	mount /dev/sdxn/ /mnt/home  
	mount /dev/sdxn/ /mnt/boot  

### Actually installing arch

	pacstrap /mnt base base-devel vim

### Making a fstab conf

	genfstab -U /mnt >> /mnt/etc/fstab

### Changing root to /mnt

	arch-chroot /mnt

### Installing and enabling networkmanager

	pacman -S networkmanager

And make it run at startup

	systemctl enable NetworkManager 

### Setting up grub

	pacman -S grub
	grub-install --target=i386-pc /dev/sdx (--force)
	grub-mkconfig -o /boot/grub/grub.cfg

### Set a passwd for root

	passwd

### Set up locales

	vim /etc/locale.gen -- uncomment 2 en_us lines
	locale-gen
	vim /etc/locale.conf -- write here: LANG=en-US.UTF-8o

### Set up timezone

	ln -sf /usr/share/zoneinfo/Europe/Kiev /etc/localtime

### Set up a host name

	vim /etc/hostname -- write here: <host-name>

### Some ending things

	exit
	umount -R /mnt
	reboot

## So, the system is already installed

### Adding a user

	useradd -m -g wheel <username>
	passwd <username>

Useradd, userdel, groupadd, groupdel - some commands

### Set up sudo

	vim /etc/sudoers -- uncomment line: %wheel ALL=(ALL) ALL

### Installing X server

	pacman -S xorg-server xorg-xinit

To start X server run:
	startx
or
	xinit

### Installing vm

	pacman -S i3-gaps i3-status rxvt-unicode dmenu

### Installing wifi tray applet

	pacman -S network-manager-applet

### Installing necessary fonts

	pacman -S noto-fonts noto-fonts-extra terminus-font ttf-hack

### Make "startx" run i3

	vim ~/.xinitrc -- write here: exec i3

### Graphical greeting screen

	sudo pacman -S lightdm lightdm-gtk-greeter
	sudo systemctl enable lightdm.service

### Installing yaourt (yogurt)

#### Using AUR

	sudo pacman -S --needed base-devel git wget yajl
	cd /tmp
	git clone https://aur.archlinux.org/package-query.git
	cd package-query/
	makepkg -si && cd /tmp/
	git clone https://aur.archlinux.org/yaourt.git
	cd yaourt/
	makepkg -si

#### Using custom repo

Edit this file

	sudo vim /etc/pacman.conf

And add this to the end of file

	[archlinuxfr]
	SigLevel = Never
	Server = http://repo.archlinux.fr/$arch

Then install this via pacman

	sudo pacman -Sy yaourt

## Now enjoy using arch 8-)

### Source: https://youtu.be/4PBqpX0_UOc

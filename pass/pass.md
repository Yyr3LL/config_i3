# Setting up pass in linux

### Install neccesary packages

	sudo pacman -S pass gpg-crypter

### Import gpg private key from the file <filename>

	gpg --import <filename>

### Pull your pass repo

	git init .password-store
	cd .password-store
	git remote add origin repo-name
	git pull origin master

## Enjoy using pass

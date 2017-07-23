#!/bin/bash
###############
#.make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
###############

###Variables

dir=~/dotfiles
olddir=~/dotfiles_old
files="vimrc"

################

echo "Creating $olddir for backup of existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

echo "Changing to the $dir directory"
cd $dir
echo "...done"

for file in $files; do
	echo "Moving any existing dotfiles from ~ to $olddir"
	mv ~/.$file ~/dotfiles_old/
	echo "Creating symlink to $file in home dirctory."
	ln -s $dir/$file ~/.$file
done

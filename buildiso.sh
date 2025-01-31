#!/bin/bash

if [ ! -d "$HOME/MermyLinux-ISO" ]; then
	echo "Creating MermyLinux-ISO in current home directory."
	mkdir $HOME/MermyLinux-ISO
fi

if [ ! -d "$HOME/MermyLinux-ISO/WorkingDir" ]; then
	echo "Creating WorkingDir inside MermyLinux-ISO in home directory."
	echo "It will contain files that mkarchiso builds in order to create the final ISO."
	echo " "
	mkdir $HOME/MermyLinux-ISO/WorkingDir
fi

if [ ! -d "$HOME/MermyLinux-ISO/ISO" ]; then
	echo "Creating ISO insider MermyLinux-ISO in home directory."
	echo "It will contain the exported ISO."
	echo " "
	mkdir $HOME/MermyLinux-ISO/ISO
fi

sudo mkarchiso -v -w $HOME/MermyLinux-ISO/WorkingDir -o $HOME/MermyLinux-ISO/ISO mermyiso 

#!/bin/bash

if [ ! -z "$( ls -A $HOME/MermyLinux-ISO/WorkingDir)" ]; then
	echo "WorkingDir is being cleared..."
	sudo rm -rfv $HOME/MermyLinux-ISO/WorkingDir/*
else
	echo "WorkingDir is already empty!"
fi

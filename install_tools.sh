#!/bin/bash
sudo apt-get update && \
sudo apt-get install -y \
	build-essential \
	git \
	tmux \
	python3 \
	mpv \
	gcc \
	gdb \
	vim \
	ipython3 \
	netcat-traditional \
	wireshark \
	strace \
	ltrace \
	nmap \
	checksec \
	python3-pip \
	python3-venv \
	file \
	ripgrep \
	gnome-tweaks \
	alacritty \
# Nice to have snaps
sudo snap install \
	discord \
	spotify \
	chromium \
